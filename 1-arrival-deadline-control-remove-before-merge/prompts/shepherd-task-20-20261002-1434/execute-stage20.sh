#!/usr/bin/env bash
set -Eeuo pipefail

REPO='edburns/dd-3072797-tricked-out-cargotracker-run-04'
PARENT_ISSUE=1
LOG_DIRECTORY='/Users/edburns/workareas/dd-3072797-tricked-out-cargotracker-run-04-shepherd-control/1-arrival-deadline-control-remove-before-merge/prompts/shepherd-task-20-20261002-1434'
BODY_DIRECTORY="$LOG_DIRECTORY/issue-bodies"
LEDGER="$LOG_DIRECTORY/creation-ledger.json"
RESULT="$LOG_DIRECTORY/stage-20-result.json"
BODY_VERIFIER='/Users/edburns/.copilot/plugins/shepherd-task/scripts/verify-github-issue-body.sh'
CHILD_VERIFIER='/Users/edburns/.copilot/plugins/shepherd-task/scripts/verify-stage20-child-links.sh'
PRE_CHILDREN="$LOG_DIRECTORY/pre-creation-children.json"
FINAL_CHILDREN="$LOG_DIRECTORY/final-children.json"
CURRENT_OPERATION='initialization'
FAILURE_ACTIVE=0

atomic_write() {
  local path="$1" content="$2" temporary
  temporary="$(mktemp "${path}.tmp.XXXXXX")"
  printf '%s\n' "$content" >"$temporary"
  mv "$temporary" "$path"
}

update_ledger_flag() {
  local number="$1" field="$2" value="$3" updated
  updated="$(
    jq \
      --argjson number "$number" \
      --arg field "$field" \
      --argjson value "$value" \
      'map(if .number == $number then .[$field] = $value else . end)' \
      "$LEDGER"
  )" || return 1
  atomic_write "$LEDGER" "$updated"
}

reconcile_and_fail() {
  local exit_code="$1" error_message="$2" children_output normalized updated result_json
  [[ "$FAILURE_ACTIVE" -eq 0 ]] || exit "$exit_code"
  FAILURE_ACTIVE=1
  trap - ERR
  set +e

  children_output="$(gh api "repos/$REPO/issues/$PARENT_ISSUE/sub_issues" --paginate --slurp 2>&1)"
  if [[ $? -eq 0 ]]; then
    normalized="$(printf '%s' "$children_output" | jq 'if length == 0 then [] elif all(.[]; type == "array") then add else . end' 2>/dev/null)"
    if [[ $? -eq 0 ]]; then
      atomic_write "$LOG_DIRECTORY/failure-reconciliation-children.json" "$normalized"
      updated="$(
        jq \
          --slurpfile children "$LOG_DIRECTORY/failure-reconciliation-children.json" \
          'map(.linked = ((.id as $id | $children[0] | map(.id) | index($id)) != null))' \
          "$LEDGER"
      )"
      [[ $? -ne 0 ]] || atomic_write "$LEDGER" "$updated"
    fi
  fi

  result_json="$(
    jq -n \
      --arg error "$error_message" \
      '{
        schemaVersion: 1,
        status: "failed",
        ledgerFile: "creation-ledger.json",
        operationError: $error
      }'
  )"
  atomic_write "$RESULT" "$result_json"

  printf 'FAILED OPERATION: %s\n' "$error_message" >&2
  if [[ "$(jq 'length' "$LEDGER" 2>/dev/null)" == "0" ]]; then
    printf 'No issues were created; no cleanup is required.\n' >&2
  else
    jq -r '.[] | "Issue #\(.number) | \(.title) | \(.url) | \(.bodyFile) | body_verified=\(.body_verified) | linked=\(.linked)"' "$LEDGER" >&2
    jq -r --arg repo "$REPO" '.[] | "gh issue delete \(.number) --repo \"\($repo)\" --yes"' "$LEDGER" >&2
    printf 'The operation did not complete. No automatic rollback was performed. Delete every issue in the ledger before invoking stage 20 again.\n' >&2
  fi
  exit "$exit_code"
}

on_error() {
  local exit_code="$?"
  reconcile_and_fail "$exit_code" "$CURRENT_OPERATION failed with exit code $exit_code"
}
trap on_error ERR

subsections=(
  '4.1 — Issue 1: Add the application-layer deadline change operation'
  '4.2 — Issue 2: Expose deadline changes through the booking facade'
  '4.3 — Issue 3: Implement the deadline editor backing model'
  '4.4 — Issue 4: Implement the PrimeFaces deadline dialog'
  '4.5 — Issue 5: Integrate deadline editing into the Administration dashboard'
)
titles=(
  '4.1 — Add the application-layer deadline change operation'
  '4.2 — Expose deadline changes through the booking facade'
  '4.3 — Implement the deadline editor backing model'
  '4.4 — Implement the PrimeFaces deadline dialog'
  '4.5 — Integrate deadline editing into the Administration dashboard'
)
body_files=(
  "$BODY_DIRECTORY/01-4.1-body.md"
  "$BODY_DIRECTORY/02-4.2-body.md"
  "$BODY_DIRECTORY/03-4.3-body.md"
  "$BODY_DIRECTORY/04-4.4-body.md"
  "$BODY_DIRECTORY/05-4.5-body.md"
)

atomic_write "$LEDGER" '[]'
atomic_write "$RESULT" '{
  "schemaVersion": 1,
  "status": "in_progress",
  "ledgerFile": "creation-ledger.json",
  "operationError": null
}'

for index in "${!subsections[@]}"; do
  CURRENT_OPERATION="creating ${subsections[$index]}"
  issue_json="$(
    gh api "repos/$REPO/issues" \
      -X POST \
      -f title="${titles[$index]}" \
      -F "body=@${body_files[$index]}" \
      --jq '{id,number,node_id,html_url,title}'
  )"
  issue_id="$(jq -er '.id' <<<"$issue_json")"
  issue_number="$(jq -er '.number' <<<"$issue_json")"
  issue_url="$(jq -er '.html_url' <<<"$issue_json")"
  issue_title="$(jq -er '.title' <<<"$issue_json")"
  body_relative="issue-bodies/$(basename "${body_files[$index]}")"

  updated="$(
    jq \
      --arg subsection "${subsections[$index]}" \
      --arg body_file "$body_relative" \
      --argjson id "$issue_id" \
      --argjson number "$issue_number" \
      --arg title "$issue_title" \
      --arg url "$issue_url" \
      '. + [{
        implementationSubsection: $subsection,
        bodyFile: $body_file,
        id: $id,
        number: $number,
        title: $title,
        url: $url,
        body_verified: false,
        linked: false
      }]' \
      "$LEDGER"
  )"
  atomic_write "$LEDGER" "$updated"

  CURRENT_OPERATION="verifying body for issue #$issue_number"
  issue_verification="$(
    "$BODY_VERIFIER" \
      "$REPO" \
      "$issue_number" \
      "${body_files[$index]}" \
      6 \
      5 \
      "$LOG_DIRECTORY/issue-$issue_number-body-verification-failure.json"
  )"
  jq -e --argjson number "$issue_number" '.number == $number' <<<"$issue_verification" >/dev/null
  update_ledger_flag "$issue_number" body_verified true

  CURRENT_OPERATION="linking issue #$issue_number to parent #$PARENT_ISSUE"
  linked=false
  link_error=''
  for attempt in 1 2 3; do
    if link_output="$(
      printf '{"sub_issue_id": %s}' "$issue_id" |
        gh api "repos/$REPO/issues/$PARENT_ISSUE/sub_issues" -X POST --input - 2>&1
    )"; then
      linked=true
      break
    fi
    link_error="$link_output"
    sleep 2
  done
  if [[ "$linked" != true ]]; then
    reconcile_and_fail 1 "linking issue #$issue_number failed after 3 attempts: $link_error"
  fi
  update_ledger_flag "$issue_number" linked true
done

CURRENT_OPERATION='capturing final child snapshot'
final_output="$(gh api "repos/$REPO/issues/$PARENT_ISSUE/sub_issues" --paginate --slurp)"
normalized_final="$(printf '%s' "$final_output" | jq 'if length == 0 then [] elif all(.[]; type == "array") then add else . end')"
atomic_write "$FINAL_CHILDREN" "$normalized_final"

CURRENT_OPERATION='verifying child linkage and order'
"$CHILD_VERIFIER" "$PRE_CHILDREN" "$FINAL_CHILDREN" "$LEDGER"

CURRENT_OPERATION='verifying final issue bodies and states'
while IFS=$'\t' read -r issue_number body_relative; do
  final_issue="$(
    "$BODY_VERIFIER" \
      "$REPO" \
      "$issue_number" \
      "$LOG_DIRECTORY/$body_relative" \
      6 \
      5 \
      "$LOG_DIRECTORY/issue-$issue_number-final-body-verification-failure.json"
  )"
  jq -e '.state == "open" and (.assignees | length) == 0' <<<"$final_issue" >/dev/null
done < <(jq -r '.[] | [.number, .bodyFile] | @tsv' "$LEDGER")

CURRENT_OPERATION='completing stage result'
atomic_write "$RESULT" '{
  "schemaVersion": 1,
  "status": "complete",
  "ledgerFile": "creation-ledger.json",
  "operationError": null
}'

jq -n \
  --slurpfile ledger "$LEDGER" \
  --slurpfile result "$RESULT" \
  '{result: $result[0], ledger: $ledger[0]}'
