# Copilot CLI Session

> [!NOTE]
> - **Session ID:** `c482db23-eb23-48ef-be92-4c21a2149463`  
> - **Started:** 10/2/2026, 2:34:06 PM  
> - **Duration:** 2m 41s  
> - **Exported:** 10/2/2026, 2:36:48 PM  

---

<sub>4s</sub>

### User

Invoke skill `shepherd-task-20-create-issues-from-plan` with these inputs:

- CAMPAIGN_ID: 26cfa4aa-1dc7-46f3-a995-310bc2c5f60b
- LESSON_PROPAGATION: off
- REPO: edburns/dd-3072797-tricked-out-cargotracker-run-04
- BASE_BRANCH: edburns/dd-3016202-cargotracker-devoxx-be-2026-add-feature-control
- PARENT_ISSUE: 1
- PLAN_DIRECTORY: 1-arrival-deadline-control-remove-before-merge
- PLAN_FILE_NAME: add-change-arrival-deadline-feature-ignorance-reduction-plan.md
- QUESTIONS_SECTION: ## Phase 3 — Ignorance reduction: questions to answer before writing code
- IMPLEMENTATION_SECTION: ## Phase 4 — Implementation (five serial issues)
- EXPECTED_TASK_COUNT: 5
- BASE_REMOTE: origin
- LOG_DIRECTORY: /Users/edburns/workareas/dd-3072797-tricked-out-cargotracker-run-04-shepherd-control/1-arrival-deadline-control-remove-before-merge/prompts/shepherd-task-20-20261002-1434
- DRAFT_VALIDATOR: /Users/edburns/.copilot/plugins/shepherd-task/scripts/validate-stage20-drafts.sh
- ISSUE_BODY_VERIFIER: /Users/edburns/.copilot/plugins/shepherd-task/scripts/verify-github-issue-body.sh
- CHILD_LINK_VERIFIER: /Users/edburns/.copilot/plugins/shepherd-task/scripts/verify-stage20-child-links.sh

Fixture pagination response contract (mandatory):

- `gh api ... --paginate --slurp` returns a JSON array of page payloads, so a
  one-page response has the shape `[[{...}]]`, not `[{...}]`.
- Before indexing child issue fields such as `.id`, normalize the response to
  one flat issue array exactly once.
- In Bash, use:
  `jq 'if length == 0 then [] elif all(.[]; type == "array") then add else . end'`.
- In PowerShell, capture the `gh` output and `$LASTEXITCODE` first, then pass
  the complete JSON through the same `jq` normalization before
  `ConvertFrom-Json`.
- Use the normalized flat array for the pre-creation baseline, final child
  count/order checks, and failure reconciliation. Do not apply `add` a second
  time to an already-flat array.

---

<sub>6s</sub>

### `skill`

**shepherd-task-20-create-issues-from-plan**

<details>
<summary>Arguments</summary>

```json
{
  "skill": "shepherd-task-20-create-issues-from-plan"
}
```

</details>

```
Skill "shepherd-task-20-create-issues-from-plan" loaded successfully. Follow the instructions in the skill context.
```


---

<sub>9s</sub>

### Copilot

I’m validating the campaign inputs, plan structure, GitHub target, and draft conventions before any mutation.

---

<sub>11s</sub>

### `sql`

**Track stage twenty**

<details>
<summary>Arguments</summary>

```json
{
  "description": "Track stage twenty",
  "query": "INSERT INTO todos (id,title,description,status) VALUES ('validate-stage20','Validating stage 20 inputs','Validate repository, branch, parent, campaign manifest, plan headings/resolutions, scripts, and existing children','in_progress'),('draft-stage20','Drafting ordered issue specifications','Build traceability map and persist five complete issue bodies','pending'),('create-stage20','Creating and linking issues','Validate drafts, create and link five child issues serially with persistent ledger','pending'),('verify-stage20','Verifying stage 20 postconditions','Persist snapshots, run authoritative child verifier, verify bodies and issue state, complete result','pending'); INSERT INTO todo_deps (todo_id,depends_on) VALUES ('draft-stage20','validate-stage20'),('create-stage20','draft-stage20'),('verify-stage20','create-stage20')"
}
```

</details>

<details>
<summary>5 lines</summary>

```
Executed 2 statement(s):

1. INSERT
   4 row(s) inserted. Last inserted row ID: 4.

2. INSERT
   3 row(s) inserted. Last inserted row ID: 3.
```

</details>


---

<sub>22s</sub>

### `view`

**view the file at /Users/edburns/.copilot/skills/shepherd-task-20-create-issues-from-plan/examples/01-1682-java-tool-ergonomics.md.**

/Users/edburns/.copilot/skills/shepherd-task-20-create-issues-from-plan/examples/01-1682-java-tool-ergonomics.md

<details>
<summary>15 lines</summary>

```
# Example 01: 1682-java-tool-ergonomics-prompts-remove-before-merge

Read `copilot-sdk/1682-java-tool-ergonomics-prompts-remove-before-merge/dd-3018003-ignorance-reduction-for-implementation-plan.md` (the plan) to get the context.

✅✅Pay very close attention to each **Resolution:** to the questions in `Phase 3 — Ignorance reduction: questions to answer before writing code`.

In this session, we are creating issues of type **Task** as children of Epic https://github.com/github/copilot-sdk/issues/1682 . These issues correspond to the sub-sections in `## Phase 4 — Implementation (the build order)`.

I want you to use `gh` to create issues as sub-issues of 1682.

- I will dispatch these issues by assigning them to an agent. Leave them unassigned for now.

- The description you put in the issues you create is the specification for the work the agent assigned to the issue must do. Therefore, you need to be very specific and targeted when writing the description.

- Set the type to **Task**.

- Each issue will be worked on and resolved in serial. You can assume:
  - All issues will operate in this topic branch of `upstream`: `edburns/1682-java-tool-ergonomics`.

  - The assignee agent has access to the topic branch and, most importantly, to the prompts in the directory `1682-java-tool-ergonomics-prompts-remove-before-merge`, which includes the plan. Therefore, you can instruct the agent to access the plan by reference, you don't need to reference it by value directly in the issue.

- The sub-sections of `## Phase 4 — Implementation (the build order)` have essential details for each corresponding **Task**.

- Instruct the agent to read the entire plan before working.

- Instruct the agent to carefully re-read the relevant sections of the plan. ❌❌You can't just say, "read the relevant sections of the plan". ✅✅In the description of the issue, list exactly what sections of the plan apply to this particular issue.
- Though the sub-sections of `## Phase 4 — Implementation (the build order)` have essential details for each corresponding **Task**, I want you to carefully consider if there are additional gating tests you can add so that as the agent proceeds from one task to the next, the likelihood of rework is reduced.
```

</details>


---

<sub>22s</sub>

### `view`

**view the file at /Users/edburns/.copilot/skills/shepherd-task-20-create-issues-from-plan/examples/02-1810-java-tool-as-lambda.md.**

/Users/edburns/.copilot/skills/shepherd-task-20-create-issues-from-plan/examples/02-1810-java-tool-as-lambda.md

<details>
<summary>12 lines</summary>

```
# Example 02: 1810-java-tool-ergonomics-tool-as-lambda-remove-before-merge

Carefully read the plan `copilot-sdk/1810-java-tool-ergonomics-tool-as-lambda-remove-before-merge/1810-ignorance-reduction-for-implementation-plan.md`.

We have completed Phases 1 - 3. We are now on Phase 4.

For each sub item in Phase 4, file a child issue of Feature #1810.

Use `gh` to look at Epic #1682 and its child issues for the standard of verbosity and concreteness for issue descriptions.

The issue should be assignable to a coding agent and there must be sufficient detail in the description for the agent to proceed to completion.

Pull out the specific relevant content from Phase 3 as it applies to this current issue in Phase 4.

Tell the agent to take `edburns/1810-java-tool-ergonomics-tool-as-lambda` as the base branch. When I assign the issue to the coding agent, I will set this as the base branch.

Tell the agent to read `1810-java-tool-ergonomics-tool-as-lambda-remove-before-merge/1810-ignorance-reduction-for-implementation-plan.md`, which is present on the branch, for context.

Tell the agent which sub-item within Phase 4 they are solving.

Tell the agent that each issue will be assigned, resolved and merged to the base branch in the order in which they appear in the plan.

No work is to start until I assign each issue to the coding agent, in turn.
```

</details>


---

<sub>22s</sub>

### `view`

**view the file at /Users/edburns/.copilot/skills/shepherd-task-20-create-issues-from-plan/examples/03-dd-3017826-java-real-estate-demo.md.**

/Users/edburns/.copilot/skills/shepherd-task-20-create-issues-from-plan/examples/03-dd-3017826-java-real-estate-demo.md

<details>
<summary>14 lines</summary>

```
# Example 03: dd-3017826-java-real-estate-demo-remove-before-merge

Read `dd-3017826-java-real-estate-demo-remove-before-merge\dd-3017826-java-real-estate-demo-ignorance-reduction-plan.md` (the plan) to get the context.

✅✅Pay very close attention to each **Resolution:** to the questions in `Phase 2 — Ignorance reduction: questions to answer before writing code`.

In this session, we are creating sub-issues as children of https://github.com/edburns/Build26-BRK206-your-agent-anywhere-multiclient-multidevice-with-github-copilot-sdk/issues/2 . These issues correspond to the sub-sections in `## Phase 3 — Implementation (build order)`.

I want you to use `gh` to create issues as sub-issues of #2.

- I will dispatch these issues by assigning them to an agent. Leave them unassigned for now.

- The description you put in the issues you create is the specification for the work the agent assigned to the issue must do. Therefore, you need to be very specific and targeted when writing the description.

- Each issue will be worked on and resolved in serial. You can assume:
  - All issues will operate in this topic branch of `origin`: `edburns/2-build-out-demo`.

  - The assignee agent has access to the topic branch and, most importantly, to the prompts in the directory `dd-3017826-java-real-estate-demo-remove-before-merge`, which includes the plan. Therefore, you can instruct the agent to access the plan by reference, you don't need to reference it by value directly in the issue.

- The sub-sections of `## Phase 3 — Implementation (build order)` have essential details for each corresponding sub-issue.

- Instruct the agent to read the entire plan before working.

- Instruct the agent to carefully re-read the relevant sections of the plan. ❌❌You can't just say, "read the relevant sections of the plan". ✅✅In the description of the issue, list exactly what sections of the plan apply to this particular issue.
- Though the sub-sections of `## Phase 3 — Implementation (build order)` have essential details for each corresponding sub-issue, I want you to carefully consider if there are additional gating tests you can add so that as the agent proceeds from one task to the next, the likelihood of rework is reduced.
```

</details>


---

<sub>22s</sub>

### `view`

**view the file at /Users/edburns/.copilot/skills/shepherd-task-20-create-issues-from-plan/examples/04-28-python-agent-demo.md.**

/Users/edburns/.copilot/skills/shepherd-task-20-create-issues-from-plan/examples/04-28-python-agent-demo.md

<details>
<summary>16 lines</summary>

```
# Example 04: 28-python-agent-demo-remove-before-merge

Read `28-python-agent-demo-remove-before-merge/28-python-agent-demo-ignorance-reduction-plan.md` (the plan) to get the context.

✅✅Pay very close attention to each **Resolution:** to the questions in `Phase 2 — Ignorance reduction: questions to answer before writing code`. These pertain to the implementation tasks in Phase 3. ✅✅✅ Include relevant spike findings as self-contained prose in the issue description; do not direct the agent to spike directories or source files.

In this session, we are creating sub-issues as children of https://github.com/edburns/Build26-BRK206-your-agent-anywhere-multiclient-multidevice-with-github-copilot-sdk/issues/28 . These issues correspond to the sub-sections in `## Phase 3 — Implementation (build order)`.

I want you to use `gh` to create issues as sub-issues of #28

- I will dispatch these issues by assigning them to an agent. Leave them unassigned for now.

- The description you put in the issues you create is the specification for the work the agent assigned to the issue must do. Therefore, you need to be very specific and targeted when writing the description.

- Again, ✅✅For each **Resolution:** to the questions in `Phase 2 — Ignorance reduction: questions to answer before writing code`, include the relevant Resolution values in the issue description. These pertain to the implementation tasks in Phase 3. ✅✅✅ State relevant spike findings directly in the issue body with enough detail to implement them without reading spike code.

- For tasks dealing with the UI, make sure to refer to the relevant screengrabs, but only ones within `28-python-agent-demo-remove-before-merge/`.

- Each issue will be worked on and resolved in serial. You can assume:
  - All issues will operate in this topic branch of `origin`: `edburns/28-python-agent-demo`.

  - The assignee agent has access to the topic branch and, most importantly, to the prompts in the directory `28-python-agent-demo-remove-before-merge/`, which includes the plan. Therefore, you can instruct the agent to access the plan by reference, you don't need to reference it by value directly in the issue.

- The sub-sections of `## Phase 3 — Implementation (build order)` have essential details for each corresponding sub-issue.

- Instruct the agent to read the entire plan before working.

- Instruct the agent to carefully re-read the relevant sections of the plan. ❌❌You can't just say, "read the relevant sections of the plan". ✅✅In the description of the issue, list exactly what sections of the plan apply to this particular issue.
- Though the sub-sections of `## Phase 3 — Implementation (build order)` have essential details for each corresponding sub-issue, I want you to carefully consider if there are additional gating tests you can add so that as the agent proceeds from one task to the next, the likelihood of rework is reduced.
```

</details>


---

<sub>22s</sub>

### `bash`

**Validate local stage inputs**

$ git --no-pager status --short && printf '\nREMOTES\n' && git remote -v && printf '\nBRANCH\n' && git branch --list 'edburns/dd-3016202-cargotracker-devoxx-be-2026-add-feature-control' && printf '\nFILES\n' && test -d '1-arrival-deadline-control-remove-before-merge/prompts/shepherd-task-20-20261002-1434' && test -w '1-arrival-deadline-control-remove-before-merge/prompts/shepherd-task-20-20261002-1434' && mkdir -p '1-arrival-deadline-control-remove-before-merge/prompts/shepherd-task-20-20261002-1434/issue-bodies' && test -x '/Users/edburns/.copilot/plugins/shepherd-task/scripts/validate-stage20-drafts.sh' && test -x '/Users/edburns/.copilot/plugins/shepherd-task/scripts/verify-github-issue-body.sh' && test -x '/Users/edburns/.copilot/plugins/shepherd-task/scripts/verify-stage20-child-links.sh' && echo validation-paths-ok

<details>
<summary>11 lines</summary>

```
?? 1-arrival-deadline-control-remove-before-merge/.stage20-after.7437
?? 1-arrival-deadline-control-remove-before-merge/.stage20-before.7437
?? 1-arrival-deadline-control-remove-before-merge/prompts/

REMOTES
origin	git@github.com:edburns/dd-3072797-tricked-out-cargotracker-run-04.git (fetch)
origin	git@github.com:edburns/dd-3072797-tricked-out-cargotracker-run-04.git (push)

BRANCH
* edburns/dd-3016202-cargotracker-devoxx-be-2026-add-feature-control

FILES
validation-paths-ok
<shellId: 2 completed with exit code 0>
```

</details>


---

<sub>22s</sub>

### `bash`

**Read plan and campaign files**

$ git show 'edburns/dd-3016202-cargotracker-devoxx-be-2026-add-feature-control:1-arrival-deadline-control-remove-before-merge/add-change-arrival-deadline-feature-ignorance-reduction-plan.md' && printf '\n---CAMPAIGN---\n' && git show 'edburns/dd-3016202-cargotracker-devoxx-be-2026-add-feature-control:1-arrival-deadline-control-remove-before-merge/shepherd-campaign.json' && printf '\n---LESSONS EXISTS---\n' && git cat-file -e 'edburns/dd-3016202-cargotracker-devoxx-be-2026-add-feature-control:1-arrival-deadline-control-remove-before-merge/campaign-lessons.md' && echo yes

<details>
<summary>12 lines</summary>

```
Output too large to read at once (34.9 KB). Saved to: /var/folders/vc/_9vlsvsd7wg72zf3bf0z_1k00000gn/T/1790966068257-copilot-tool-output-7552-9cb90e81-12a2-411b-82a1-84b313f4b903.txt
Consider using tools like rg (for searching), head/tail (for viewing start/end), view with view_range (for specific sections), or jq (for JSON) to examine portions of the output.

Preview (first 500 chars):
# Implementation plan: Change Arrival Deadline Date (`eclipse-ee4j/cargotracker#64`)

Human DRI: Ed Burns
Starting commit: `89e107c3ed6dd3655c2ffdf638b57d6c47099dab` (feature-free baseline with an extensible integration-test gate)
Working directory: repository root of the current campaign worktree
Cargo Tracker Maven application: `demo/`
Runtime baseline: Java 17, Java EE 7 (`javax.*`), Open Liberty 26.0.0.8, PrimeFaces 8.0
Baseline run instructions: `demo/README.md`
Baseline preparation: fixed 
<shellId: 1 completed with exit code 0>
```

</details>


---

<sub>22s</sub>

### `bash`

**Validate GitHub repository and parent**

$ set -o pipefail
REPO='edburns/dd-3072797-tricked-out-cargotracker-run-04'
PARENT=1
LOG='1-arrival-deadline-control-remove-before-merge/prompts/shepherd-task-20-20261002-1434'
printf '%s\n' '---REPO---'
gh api "repos/$REPO"
printf '%s\n' '---PARENT---'
gh api "repos/$REPO/issues/$PARENT"
printf '%s\n' '---CHILDREN---'
gh api "repos/$REPO/issues/$PARENT/sub_issues" --paginate --slurp | jq 'if length == 0 then [] elif all(.[]; type == "array") then add else . end' | tee "$LOG/pre-creation-children.json"

```
---REPO---
{"id":1402190433,"node_id":"R_kgDOU5O6YQ","name":"dd-3072797-tricked-out-cargotracker-run-04","full_name":"edburns/dd-3072797-tricked-out-cargotracker-run-04","private":false,"owner":{"login":"edburns","id":75821,"node_id":"MDQ6VXNlcjc1ODIx","avatar_url":"https://avatars.githubusercontent.com/u/75821?v=4","gravatar_id":"","url":"https://api.github.com/users/edburns","html_url":"https://github.com/edburns","followers_url":"https://api.github.com/users/edburns/followers","following_url":"https://api.github.com/users/edburns/following{/other_user}","gists_url":"https://api.github.com/users/edburns/gists{/gist_id}","starred_url":"https://api.github.com/users/edburns/starred{/owner}{/repo}","subscriptions_url":"https://api.github.com/users/edburns/subscriptions","organizations_url":"https://api.github.com/users/edburns/orgs","repos_url":"https://api.github.com/users/edburns/repos","events_url":"https://api.github.com/users/edburns/events{/privacy}","received_events_url":"https://api.github.com/users/edburns/received_events","type":"User","user_view_type":"public","site_admin":true},"html_url":"https://github.com/edburns/dd-3072797-tricked-out-cargotracker-run-04","description":"The project demonstrates how you can develop applications with Jakarta EE using widely adopted architectural best practices like Domain-Driven Design (DDD).","fork":false,"url":"https://api.github.com/repos/edburns/dd-3072797-tricked-out-cargotracker-run-04","forks_url":"https://api.github.com/repos/edburns/dd-3072797-tricked-out-cargotracker-run-04/forks","keys_url":"https://api.github.com/repos/edburns/dd-3072797-tricked-out-cargotracker-run-04/keys{/key_id}","collaborators_url":"https://api.github.com/repos/edburns/dd-3072797-tricked-out-cargotracker-run-04/collaborators{/collaborator}","teams_url":"https://api.github.com/repos/edburns/dd-3072797-tricked-out-cargotracker-run-04/teams","hooks_url":"https://api.github.com/repos/edburns/dd-3072797-tricked-out-cargotracker-run-04/hooks","issue_events_url":"https://api.github.com/repos/edburns/dd-3072797-tricked-out-cargotracker-run-04/issues/events{/number}","events_url":"https://api.github.com/repos/edburns/dd-3072797-tricked-out-cargotracker-run-04/events","assignees_url":"https://api.github.com/repos/edburns/dd-3072797-tricked-out-cargotracker-run-04/assignees{/user}","branches_url":"https://api.github.com/repos/edburns/dd-3072797-tricked-out-cargotracker-run-04/branches{/branch}","tags_url":"https://api.github.com/repos/edburns/dd-3072797-tricked-out-cargotracker-run-04/tags","blobs_url":"https://api.github.com/repos/edburns/dd-3072797-tricked-out-cargotracker-run-04/git/blobs{/sha}","git_tags_url":"https://api.github.com/repos/edburns/dd-3072797-tricked-out-cargotracker-run-04/git/tags{/sha}","git_refs_url":"https://api.github.com/repos/edburns/dd-3072797-tricked-out-cargotracker-run-04/git/refs{/sha}","trees_url":"https://api.github.com/repos/edburns/dd-3072797-tricked-out-cargotracker-run-04/git/trees{/sha}","statuses_url":"https://api.github.com/repos/edburns/dd-3072797-tricked-out-cargotracker-run-04/statuses/{sha}","languages_url":"https://api.github.com/repos/edburns/dd-3072797-tricked-out-cargotracker-run-04/languages","stargazers_url":"https://api.github.com/repos/edburns/dd-3072797-tricked-out-cargotracker-run-04/stargazers","contributors_url":"https://api.github.com/repos/edburns/dd-3072797-tricked-out-cargotracker-run-04/contributors","subscribers_url":"https://api.github.com/repos/edburns/dd-3072797-tricked-out-cargotracker-run-04/subscribers","subscription_url":"https://api.github.com/repos/edburns/dd-3072797-tricked-out-cargotracker-run-04/subscription","commits_url":"https://api.github.com/repos/edburns/dd-3072797-tricked-out-cargotracker-run-04/commits{/sha}","git_commits_url":"https://api.github.com/repos/edburns/dd-3072797-tricked-out-cargotracker-run-04/git/commits{/sha}","comments_url":"https://api.github.com/repos/edburns/dd-3072797-tricked-out-cargotracker-run-04/comments{/number}","issue_comment_url":"https://api.github.com/repos/edburns/dd-3072797-tricked-out-cargotracker-run-04/issues/comments{/number}","contents_url":"https://api.github.com/repos/edburns/dd-3072797-tricked-out-cargotracker-run-04/contents/{+path}","compare_url":"https://api.github.com/repos/edburns/dd-3072797-tricked-out-cargotracker-run-04/compare/{base}...{head}","merges_url":"https://api.github.com/repos/edburns/dd-3072797-tricked-out-cargotracker-run-04/merges","archive_url":"https://api.github.com/repos/edburns/dd-3072797-tricked-out-cargotracker-run-04/{archive_format}{/ref}","downloads_url":"https://api.github.com/repos/edburns/dd-3072797-tricked-out-cargotracker-run-04/downloads","issues_url":"https://api.github.com/repos/edburns/dd-3072797-tricked-out-cargotracker-run-04/issues{/number}","pulls_url":"https://api.github.com/repos/edburns/dd-3072797-tricked-out-cargotracker-run-04/pulls{/number}","milestones_url":"https://api.github.com/repos/edburns/dd-3072797-tricked-out-cargotracker-run-04/milestones{/number}","notifications_url":"https://api.github.com/repos/edburns/dd-3072797-tricked-out-cargotracker-run-04/notifications{?since,all,participating}","labels_url":"https://api.github.com/repos/edburns/dd-3072797-tricked-out-cargotracker-run-04/labels{/name}","releases_url":"https://api.github.com/repos/edburns/dd-3072797-tricked-out-cargotracker-run-04/releases{/id}","deployments_url":"https://api.github.com/repos/edburns/dd-3072797-tricked-out-cargotracker-run-04/deployments","created_at":"2026-10-02T18:19:04Z","updated_at":"2026-10-02T18:22:00Z","pushed_at":"2026-10-02T18:34:03Z","git_url":"git://github.com/edburns/dd-3072797-tricked-out-cargotracker-run-04.git","ssh_url":"git@github.com:edburns/dd-3072797-tricked-out-cargotracker-run-04.git","clone_url":"https://github.com/edburns/dd-3072797-tricked-out-cargotracker-run-04.git","svn_url":"https://github.com/edburns/dd-3072797-tricked-out-cargotracker-run-04","homepage":"https://eclipse-ee4j.github.io/cargotracker/","size":101575,"stargazers_count":0,"watchers_count":0,"language":null,"has_issues":true,"has_projects":true,"has_downloads":false,"has_wiki":true,"has_pages":false,"has_discussions":false,"forks_count":0,"mirror_url":null,"archived":false,"disabled":false,"open_issues_count":1,"license":{"key":"mit","name":"MIT License","spdx_id":"MIT","url":"https://api.github.com/licenses/mit","node_id":"MDc6TGljZW5zZTEz"},"allow_forking":true,"is_template":false,"web_commit_signoff_required":false,"has_pull_requests":true,"pull_request_creation_policy":"all","topics":[],"visibility":"public","forks":0,"open_issues":1,"watchers":0,"default_branch":"edburns/dd-3016202-cargotracker-devoxx-be-2026-experiment","permissions":{"admin":true,"maintain":true,"push":true,"triage":true,"pull":true},"temp_clone_token":"","allow_squash_merge":true,"allow_merge_commit":true,"allow_rebase_merge":true,"allow_auto_merge":false,"delete_branch_on_merge":false,"allow_update_branch":false,"use_squash_pr_title_as_default":false,"squash_merge_commit_message":"COMMIT_MESSAGES","squash_merge_commit_title":"COMMIT_OR_PR_TITLE","merge_commit_message":"PR_TITLE","merge_commit_title":"MERGE_MESSAGE","security_and_analysis":{"secret_scanning":{"status":"enabled"},"secret_scanning_push_protection":{"status":"enabled"},"dependabot_security_updates":{"status":"disabled"},"secret_scanning_non_provider_patterns":{"status":"disabled"},"secret_scanning_validity_checks":{"status":"disabled"}},"network_count":0,"subscribers_count":0}---PARENT---
{"url":"https://api.github.com/repos/edburns/dd-3072797-tricked-out-cargotracker-run-04/issues/1","repository_url":"https://api.github.com/repos/edburns/dd-3072797-tricked-out-cargotracker-run-04","labels_url":"https://api.github.com/repos/edburns/dd-3072797-tricked-out-cargotracker-run-04/issues/1/labels{/name}","comments_url":"https://api.github.com/repos/edburns/dd-3072797-tricked-out-cargotracker-run-04/issues/1/comments","events_url":"https://api.github.com/repos/edburns/dd-3072797-tricked-out-cargotracker-run-04/issues/1/events","html_url":"https://github.com/edburns/dd-3072797-tricked-out-cargotracker-run-04/issues/1","id":5681704179,"node_id":"I_kwDOU5O6Yc8AAAABUqfs8w","number":1,"title":"[Campaign][off] Cargo Tracker arrival-deadline control","user":{"login":"edburns","id":75821,"node_id":"MDQ6VXNlcjc1ODIx","avatar_url":"https://avatars.githubusercontent.com/u/75821?v=4","gravatar_id":"","url":"https://api.github.com/users/edburns","html_url":"https://github.com/edburns","followers_url":"https://api.github.com/users/edburns/followers","following_url":"https://api.github.com/users/edburns/following{/other_user}","gists_url":"https://api.github.com/users/edburns/gists{/gist_id}","starred_url":"https://api.github.com/users/edburns/starred{/owner}{/repo}","subscriptions_url":"https://api.github.com/users/edburns/subscriptions","organizations_url":"https://api.github.com/users/edburns/orgs","repos_url":"https://api.github.com/users/edburns/repos","events_url":"https://api.github.com/users/edburns/events{/privacy}","received_events_url":"https://api.github.com/users/edburns/received_events","type":"User","user_view_type":"public","site_admin":true},"labels":[],"state":"open","locked":false,"assignees":[],"milestone":null,"comments":0,"created_at":"2026-10-02T18:33:46Z","updated_at":"2026-10-02T18:33:46Z","closed_at":null,"assignee":null,"author_association":"OWNER","issue_field_values":[],"type":null,"active_lock_reason":null,"sub_issues_summary":{"total":0,"completed":0,"percent_completed":0},"issue_dependencies_summary":{"blocked_by":0,"total_blocked_by":0,"blocking":0,"total_blocking":0},"body":"## Shepherd-task Cargo Tracker control campaign\n\nThis campaign contains five serial tasks that add the Change Arrival Deadline\nfeature to the prepared Cargo Tracker baseline with lesson propagation\ndisabled.\n\n- Campaign base branch: `edburns/dd-3016202-cargotracker-devoxx-be-2026-add-feature-control`\n- Campaign shortname: `arrival-deadline-control`\n- Lesson propagation: `off`\n- Immutable baseline SHA: `89e107c3ed6dd3655c2ffdf638b57d6c47099dab`\n- Expected task count: 5\n- Task 1: application-layer deadline change operation\n- Task 2: booking-facade deadline change operation\n- Task 3: deadline editor backing model\n- Task 4: PrimeFaces deadline dialog\n- Task 5: Administration dashboard integration and acceptance","closed_by":null,"reactions":{"url":"https://api.github.com/repos/edburns/dd-3072797-tricked-out-cargotracker-run-04/issues/1/reactions","total_count":0,"+1":0,"-1":0,"laugh":0,"hooray":0,"confused":0,"heart":0,"rocket":0,"eyes":0},"timeline_url":"https://api.github.com/repos/edburns/dd-3072797-tricked-out-cargotracker-run-04/issues/1/timeline","performed_via_github_app":null,"state_reason":null,"pinned_comment":null}---CHILDREN---
[]
<shellId: 0 completed with exit code 0>
```


---

<sub>27s</sub>

### Copilot

Validation confirms an open parent, a distinct existing base branch, no prior children, and a user-owned repository, so children will be created **without an issue type**. I’m now extracting every resolution and the five serial task contracts into persisted drafts.

---

<sub>29s</sub>

### `view`

**view the file at /Users/edburns/workareas/dd-3072797-tricked-out-cargotracker-run-04-shepherd-control/1-arrival-deadline-control-remove-before-merge/add-change-arrival-deadline-feature-ignorance-reduction-plan.md.**

/Users/edburns/workareas/dd-3072797-tricked-out-cargotracker-run-04-shepherd-control/1-arrival-deadline-control-remove-before-merge/add-change-arrival-deadline-feature-ignorance-reduction-plan.md (lines 1-220)

<details>
<summary>171 lines</summary>

````
# Implementation plan: Change Arrival Deadline Date (`eclipse-ee4j/cargotracker#64`)

Human DRI: Ed Burns
Starting commit: `89e107c3ed6dd3655c2ffdf638b57d6c47099dab` (feature-free baseline with an extensible integration-test gate)
Working directory: repository root of the current campaign worktree
Cargo Tracker Maven application: `demo/`
Runtime baseline: Java 17, Java EE 7 (`javax.*`), Open Liberty 26.0.0.8, PrimeFaces 8.0
Baseline run instructions: `demo/README.md`
Baseline preparation: fixed source branch and immutable SHA validated by the campaign fixture
Historical issue: `eclipse-ee4j/cargotracker#64`

Related directories and files:

- `demo/src/main/java/org/eclipse/cargotracker/application/`
- `demo/src/main/java/org/eclipse/cargotracker/interfaces/booking/facade/`
- `demo/src/main/java/org/eclipse/cargotracker/interfaces/booking/web/`
- `demo/src/main/webapp/admin/dialogs/`
- `demo/src/main/webapp/admin/tables/listNotRouted.xhtml`
- `demo/src/test/java/org/eclipse/cargotracker/application/BookingServiceTest.java`

---

## Goal

Add an Administration dashboard operation that lets a shipping administrator
change the arrival deadline of a cargo listed in the **Not Routed Cargo** table.
The operation must preserve Cargo Tracker's layered architecture:

1. The application service owns the domain mutation.
2. The booking facade shields the web layer from domain types.
3. A JSF backing bean loads and submits the editable date.
4. A PrimeFaces dynamic dialog presents the editor.
5. The existing Not Routed Cargo table opens the dialog and refreshes after a
   successful update.

### User-visible acceptance behavior

Using the stable sample cargo `DEF789`:

1. Start the application with Java 17:

   ```bash
   cd demo && ./mvnw clean package -Popenliberty liberty:run
   ```

2. Open `http://localhost:8080/cargo-tracker/`.
3. Select **Administration**.
4. Find `DEF789` in the **Not Routed Cargo** table.
5. The Deadline cell displays its date together with an edit icon.
6. Hovering over the deadline displays:
   `Click to change cargo arrival deadline date.`
7. Selecting the deadline opens a modal dialog titled **Change Deadline**.
8. The dialog displays the cargo's origin and destination as read-only
   context.
9. The date editor is initialized to the cargo's current arrival deadline.
10. Selecting a different date and pressing **Update** closes the dialog and
    refreshes the Administration view.
11. The new date is shown in the Not Routed Cargo table.
12. Reloading the page continues to show the new date for the lifetime of the
    running in-memory sample application.
13. Pressing **Cancel** closes the dialog without changing the deadline.

### Domain acceptance behavior

Changing the deadline must:

- locate the cargo by `TrackingId`;
- preserve its existing origin;
- preserve its existing destination;
- replace only the arrival deadline in its `RouteSpecification`;
- apply the specification through `Cargo.specifyNewRoute(...)`;
- preserve the currently assigned itinerary rather than silently discarding
  it;
- allow the domain model to recalculate routing status and delivery-derived
  values against the new route specification;
- persist the changed cargo through `CargoRepository.store(...)`.

### Hard scope constraints

- Begin from commit `89e107c3ed6dd3655c2ffdf638b57d6c47099dab`.
- Preserve Java EE 7 and the `javax.*` namespace.
- Preserve the Java 7 source/target level used by this historical codebase.
- Run the application on JDK 17 using the existing Open Liberty profile.
- Do not migrate the application to Jakarta EE 8+, Jakarta EE 9+, Spring, or a
  different UI framework.
- Do not replace the in-memory Derby configuration or the Open Liberty runtime.
- Do not redesign unrelated cargo booking, routing, destination editing,
  messaging, batch, REST, or persistence behavior.
- Do not copy commits or files from feature-bearing branches. This plan is the
  implementation specification.
- Implement the five build issues below in order. Each issue must be complete
  and gated before the next issue begins.

---

## Completed phases

### Phase 1 ✅ — Establish a runnable feature-absent baseline

- Commit `89e107c3ed6dd3655c2ffdf638b57d6c47099dab` is based on the historical
  feature-absent commit and contains the compatibility work needed to run the
  sample on JDK 17 and Open Liberty plus an extensible integration-test gate
  that preserves the four named baseline methods while permitting valid
  additional tests.
- `cd demo && ./mvnw clean package -Popenliberty liberty:run` starts the application.
- The home page and Administration flows return HTTP 200.
- JSF view metadata is placed at `UIViewRoot` scope for MyFaces compatibility.
- The internal routing REST client works without a Jersey/MOXy classloading
  conflict.
- The scheduled batch job has the local authorization it needs.

### Phase 2 ✅ — Verify the before and after user experience

- Before implementation, `DEF789` appears in the Not Routed Cargo table with a
  plain-text deadline and no edit operation.
- The neighboring Destination column demonstrates the existing PrimeFaces
  dynamic-dialog interaction pattern.
- The desired after behavior has been manually exercised: open the deadline
  editor, choose a new date, update, refresh the table, and observe the
  persisted value.
- The historical architectural boundaries and affected files have been
  identified.

---

## Phase 3 — Ignorance reduction: questions to answer before writing code

Resolve these questions before production implementation begins. The
recommendations intentionally define the desired design closely enough that an
implementing agent should not need to invent a different architecture.

### 3.1 — Which cargos expose the edit operation?

**Question:** Should deadline editing be exposed for all cargos or only for
cargos displayed in the Not Routed Cargo table?

The requested feature originates in the Administration dashboard's Not Routed
Cargo table. Other tables represent routed, misrouted, claimed, or otherwise
progressed cargo. Adding the affordance to every table would expand the feature
and require additional business rules about changing deadlines after handling
has begun.

| Option | UI scope | Trade-off |
|--------|----------|-----------|
| A | Not Routed Cargo table only | Matches the requested feature and the established destination-edit affordance. |
| B | Every Administration cargo table | Broader capability, but introduces lifecycle and authorization questions outside the request. |
| C | Cargo details page only | Avoids table complexity but does not meet the requested dashboard interaction. |

The application-service operation itself does not need to encode a UI-table
restriction. It should accept a tracking ID and apply the domain mutation to
the located cargo. The presentation layer determines where the operation is
offered.

**Recommendation:** Option A. Add the edit affordance only to
`demo/src/main/webapp/admin/tables/listNotRouted.xhtml`. Keep the application
operation generally usable for a valid cargo.

**Resolution:**

Select Option A. Expose the edit affordance only in
`demo/src/main/webapp/admin/tables/listNotRouted.xhtml`. The application and facade
operations remain generally callable for any cargo that can be found by
tracking ID; they do not encode knowledge of dashboard table membership.

### 3.2 — What is the exact domain mutation?

**Question:** Should the feature mutate the existing `RouteSpecification`, add
a setter to `Cargo`, or replace the specification using the existing domain
operation?

`RouteSpecification` is a value object describing origin, destination, and
arrival deadline. The existing `changeDestination(...)` implementation already
establishes the correct pattern: create a replacement specification, call
`Cargo.specifyNewRoute(...)`, and store the aggregate.

Proposed application-service shape:

```java
void changeDeadline(TrackingId trackingId, Date deadline);
```

Proposed implementation:

```java
Cargo cargo = cargoRepository.find(trackingId);
RouteSpecification specification = new RouteSpecification(
        cargo.getOrigin(),
        cargo.getRouteSpecification().getDestination(),
        deadline);

cargo.specifyNewRoute(specification);
cargoRepository.store(cargo);
```

Calling `specifyNewRoute(...)` is significant. It lets the aggregate recalculate
delivery and routing status relative to the new specification. Direct field
mutation or a persistence-only update would bypass that behavior.

**Recommendation:** Replace the `RouteSpecification` through
`Cargo.specifyNewRoute(...)`. Preserve origin, destination, and itinerary.
Persist using the existing repository. Do not add a deadline setter to the
domain model.

**Resolution:**

Use the same aggregate-update pattern as `changeDestination(...)`. Add
`BookingService.changeDeadline(TrackingId, Date)` and implement it by loading
the cargo, constructing a new `RouteSpecification` from the existing origin,
existing destination, and supplied deadline, calling
`cargo.specifyNewRoute(...)`, and storing the cargo through
`cargoRepository.store(...)`. Do not add mutable deadline setters to the domain
objects.

### 3.3 — What should happen to an existing itinerary and delivery state?

**Question:** When a routed cargo's deadline changes, should its itinerary be
cleared, retained, or recomputed?

Although the UI initially exposes the feature only for unrouted cargo, the
application operation should have deterministic domain behavior if invoked for
````

</details>


---

<sub>29s</sub>

### `view`

**view the file at /Users/edburns/workareas/dd-3072797-tricked-out-cargotracker-run-04-shepherd-control/1-arrival-deadline-control-remove-before-merge/add-change-arrival-deadline-feature-ignorance-reduction-plan.md.**

/Users/edburns/workareas/dd-3072797-tricked-out-cargotracker-run-04-shepherd-control/1-arrival-deadline-control-remove-before-merge/add-change-arrival-deadline-feature-ignorance-reduction-plan.md (lines 221-440)

<details>
<summary>163 lines</summary>

````
a routed cargo. The existing `changeDestination(...)` behavior preserves the
assigned itinerary and lets `Cargo.specifyNewRoute(...)` recalculate whether
that itinerary still satisfies the new specification.

The core application test should deliberately invoke the operation after:

1. booking a cargo;
2. requesting route candidates;
3. assigning an itinerary;
4. changing its destination;
5. changing its deadline.

This sequence verifies that the feature uses the aggregate correctly rather
than assuming the cargo always has an empty itinerary.

**Recommendation:** Preserve the itinerary. Let the domain model recompute
routing and delivery-derived state. Assert all unaffected fields explicitly in
`BookingServiceTest`.

**Resolution:**

Retain the existing itinerary. Do not clear, replace, or reroute it as part of
the deadline change. `Cargo.specifyNewRoute(...)` recalculates the delivery
snapshot and routing status against the replacement specification. In the
established sequential application test, the assigned itinerary remains
unchanged and the cargo remains `MISROUTED` after the deadline changes.

### 3.4 — What type crosses the facade boundary?

**Question:** Should the booking facade accept a `Date`, a formatted string, or
a newly introduced request DTO?

The existing facade already uses `java.util.Date` for
`bookNewCargo(...)`. Introducing another representation for this one operation
would create unnecessary conversion code and depart from the historical
application style.

Proposed facade shape:

```java
void changeDeadline(String trackingId, Date arrivalDeadline);
```

The implementation converts only the identifier:

```java
bookingService.changeDeadline(
        new TrackingId(trackingId),
        arrivalDeadline);
```

**Recommendation:** Use `String` for the tracking ID and `java.util.Date` for
the deadline. Do not expose `TrackingId`, `Cargo`, or `RouteSpecification` to
the JSF layer and do not introduce a new DTO solely for this command.

**Resolution:**

Add `void changeDeadline(String trackingId, Date arrivalDeadline)` to
`BookingServiceFacade`. `DefaultBookingServiceFacade` converts the string to
`new TrackingId(trackingId)` and passes the same `Date` to
`BookingService.changeDeadline(...)`. No new command DTO or formatted-string
service parameter is introduced.

### 3.5 — How is the DTO's formatted deadline converted for editing?

**Question:** `CargoRoute` exposes its deadline as formatted strings, while
`p:datePicker` binds naturally to `java.util.Date`. How should the backing bean
initialize the editor?

At the starting commit:

- `CargoRoute.getArrivalDeadline()` returns
  `MM/dd/yyyy hh:mm a z`.
- `CargoRoute.getArrivalDeadlineDate()` returns only the date component.
- The table displays `getArrivalDeadlineDate()`.

Options:

| Option | Approach | Trade-off |
|--------|----------|-----------|
| A | Parse `cargo.getArrivalDeadlineDate()` with `MM/dd/yyyy` | Small, localized change; preserves the existing DTO contract. |
| B | Add a `Date` property to `CargoRoute` | Cleaner typing, but broadens a DTO used throughout the application. |
| C | Reload the domain object in the backing bean | Violates the facade boundary. |

The formatter/parser must be created per operation or per view bean; do not add
a shared mutable `SimpleDateFormat`.

**Recommendation:** Option A. Load `CargoRoute` through
`BookingServiceFacade.loadCargoForRouting(trackingId)` and parse
`cargo.getArrivalDeadlineDate()` using `new SimpleDateFormat("MM/dd/yyyy")`.
Surface an explicit failure if the existing DTO value cannot be parsed; do not
silently submit a null date.

**Resolution:**

Use Option A and keep date conversion inside the view-scoped editor bean. The
existing implementation loads the `CargoRoute`, creates
`new SimpleDateFormat("MM/dd/yyyy")`, and parses the leading date portion of
`cargo.getArrivalDeadline()`. Because that value begins with `MM/dd/yyyy`,
`SimpleDateFormat.parse(...)` obtains the same date that
`getArrivalDeadlineDate()` displays. A per-load formatter is used, so no shared
mutable formatter is added.

### 3.6 — Which JSF bean scopes and interaction pattern should be used?

**Question:** Should deadline editing introduce a new navigation page, use an
inline editor, or mirror the existing Change Destination dynamic-dialog
pattern?

The baseline already contains:

- `ChangeDestination`, a CDI `@Named` and JSF `@ViewScoped` editor bean;
- `ChangeDestinationDialog`, a session-scoped JSF managed bean that opens and
  closes a PrimeFaces dynamic dialog;
- `changeDestination.xhtml`, a dialog view;
- a `dialogReturn` Ajax listener that refreshes `tableNotRouted`.

Using the same pattern minimizes changes and provides a consistent user
experience.

Proposed bean names:

```text
changeArrivalDeadlineDate
changeArrivalDeadlineDateDialog
```

**Recommendation:** Add a serializable CDI `@Named @ViewScoped`
`ChangeArrivalDeadlineDate` editor and a serializable
`@ManagedBean(name = "changeArrivalDeadlineDateDialog") @SessionScoped`
launcher. Mirror the existing destination-dialog lifecycle rather than
introducing a new navigation or inline-edit framework.

**Resolution:**

Mirror the existing Change Destination interaction. Implement
`ChangeArrivalDeadlineDate` as a serializable CDI `@Named @ViewScoped` bean and
`ChangeArrivalDeadlineDateDialog` as a serializable
`@ManagedBean(name = "changeArrivalDeadlineDateDialog") @SessionScoped` bean.
Use a PrimeFaces dynamic dialog rather than navigation to a full page or inline
cell editing.

### 3.7 — What is the dynamic-dialog contract?

**Question:** What path, request parameters, dimensions, and close result should
the PrimeFaces dialog use?

The launcher needs one parameter, `trackingId`, supplied as a
`Map<String, List<String>>`. The dialog metadata binds the parameter and invokes
the editor bean's `load()` action.

Proposed launcher contract:

```java
PrimeFaces.current().dialog().openDynamic(
        "/admin/dialogs/changeArrivalDeadlineDate.xhtml",
        options,
        params);
```

Required options:

| Option | Value |
|--------|-------|
| `modal` | `true` |
| `draggable` | `true` |
| `resizable` | `false` |
| `contentWidth` | `410` |
| `contentHeight` | `280` |

Required completion behavior:

- successful update: `closeDynamic("DONE")`;
- cancel: `closeDynamic("")`;
- caller listens for `dialogReturn` and updates `tableNotRouted`.

Because Open Liberty uses MyFaces, `<f:metadata>` must be a direct child of the
view root, before `<h:head>` and `<h:body>`. It must not be nested inside
`<h:body>`.

**Recommendation:** Use the contract above and preserve the metadata placement
required by the prepared baseline.

**Resolution:**

Open `/admin/dialogs/changeArrivalDeadlineDate.xhtml` with a single
`trackingId` request parameter and these options: modal and draggable are
`true`, resizable is `false`, content width is `410`, and content height is
`280`. Successful submission closes with `"DONE"`; cancellation closes with
the empty string. The caller handles `dialogReturn` and updates
`tableNotRouted`. Place the dialog's `<f:metadata>` directly under the root
`<html>` element, before `<h:head>` and `<h:body>`, so the known MyFaces
`UIViewRoot` requirement is satisfied.

### 3.8 — What date validation is required?

**Question:** Must the new deadline be non-null, in the future, after the
current date, or after itinerary completion?

The requested feature is an administrative correction to an existing arrival
deadline. No new domain policy about future dates is part of the request.
Inventing such a rule could reject dates accepted by existing cargo booking or
`RouteSpecification` behavior.

The UI must nevertheless prevent a null submission because the operation
requires a concrete replacement deadline.

**Recommendation:** Require a date value in the JSF form and display a normal
Faces validation message when it is absent. Do not add a new minimum-date,
future-date, or itinerary-date business rule. Continue to rely on the existing
domain model for its established invariants.

**Resolution:**

Require a non-null date selection, but add no new chronological business rule.
In particular, do not require the replacement deadline to be after today,
after the old deadline, or after every itinerary leg. Pass the selected
`java.util.Date` to the existing domain construction path and let the current
`RouteSpecification` invariants apply.
````

</details>


---

<sub>29s</sub>

### `view`

**view the file at /Users/edburns/workareas/dd-3072797-tricked-out-cargotracker-run-04-shepherd-control/1-arrival-deadline-control-remove-before-merge/add-change-arrival-deadline-feature-ignorance-reduction-plan.md.**

/Users/edburns/workareas/dd-3072797-tricked-out-cargotracker-run-04-shepherd-control/1-arrival-deadline-control-remove-before-merge/add-change-arrival-deadline-feature-ignorance-reduction-plan.md (lines 441-700)

<details>
<summary>190 lines</summary>

````
### 3.9 — How will the feature be tested on the prepared historical baseline?

**Question:** Which automated and runtime tests are mandatory on the prepared
JDK 17/Open Liberty baseline?

The prepared baseline executes the sequential `BookingServiceTest` under Open
Liberty with:

```bash
cd demo && ./mvnw -Popenliberty -Dtest=BookingServiceTest clean test
```

The feature-free baseline passes four ordered methods with zero failures,
errors, or skipped tests. Its CI gate preserves those four named methods while
allowing the suite to grow when a feature adds another valid test.

The feature still needs layered evidence:

1. Extend `BookingServiceTest` with the domain/application assertions that
   specify the deadline mutation.
2. Run the complete `BookingServiceTest` under Open Liberty and require all
   five ordered methods to pass with zero failures, errors, or skipped tests.
3. Run `cd demo && ./mvnw clean package -Popenliberty` and require the complete
   package gate to pass.
4. Add focused JUnit tests for facade and backing-bean delegation where they
   can run without a container, using hand-written fakes rather than adding a
   mocking framework.
5. Perform mandatory end-to-end verification against the running Open Liberty
   application.

**Resolved evidence:** The prepared baseline runs `BookingServiceTest` in its
managed Open Liberty test environment. The repository's injected
`CargoRepository` is available in that test; a separately introduced
test-level `EntityManager` injection is not. `JpaCargoRepository.find(...)`
already executes the `Cargo.findByTrackingId` named query.

**Recommendation:** Use the existing injected repository to reload the cargo,
run the dedicated Open Liberty integration tier, run the complete package
gate, and retain HTTP/UI acceptance as the final user-visible proof. Do not add
a second persistence access path or modernize the test runtime.

**Resolution:**

Extend the existing sequential Arquillian `BookingServiceTest` with
`testChangeDeadline()` after `testChangeDestination()`. The test changes the
deadline by one month, reloads the cargo through the injected
`CargoRepository`, and asserts the complete set of preserved and recalculated
domain state described above. Require five passing `BookingServiceTest`
methods, a successful JDK 17 Open Liberty package gate, direct HTTP checks, and
the complete `DEF789` browser acceptance flow. No test-runtime modernization,
second persistence access path, or new mocking dependency is part of this
feature.

---

## Phase 4 — Implementation (five serial issues)

Implement these issues in order. Each issue should be a separate commit. Do not
start an issue until the previous issue's gating criteria are satisfied.

### 4.1 — Issue 1: Add the application-layer deadline change operation

**What to build**

Add the core use case to the application layer. This issue must contain no JSF
or PrimeFaces changes.

**Files to modify**

- `demo/src/main/java/org/eclipse/cargotracker/application/BookingService.java`
- `demo/src/main/java/org/eclipse/cargotracker/application/internal/DefaultBookingService.java`
- `demo/src/test/java/org/eclipse/cargotracker/application/BookingServiceTest.java`

**Required API**

```java
void changeDeadline(TrackingId trackingId, Date deadline);
```

**Required implementation behavior**

1. Load the cargo using `cargoRepository.find(trackingId)`.
2. Obtain the current destination from
   `cargo.getRouteSpecification().getDestination()`.
3. Construct a replacement `RouteSpecification` from:
   - `cargo.getOrigin()`;
   - the current destination;
   - the new deadline.
4. Apply it using `cargo.specifyNewRoute(routeSpecification)`.
5. Persist using `cargoRepository.store(cargo)`.
6. Log the tracking ID and new deadline at `Level.INFO`, following the style of
   `changeDestination(...)`.

Do not:

- add a setter to `Cargo` or `RouteSpecification`;
- modify the origin or destination;
- clear or replace the itinerary directly;
- update persistence entities behind the aggregate's back.

**Tests to write first**

Append a sequential `testChangeDeadline()` case to `BookingServiceTest` after
`testChangeDestination()`. Build a new deadline one month after the test's
original `deadline`, invoke the service, reload the cargo with the existing
injected `cargoRepository.find(trackingId)` path, and assert:

- origin remains Chicago;
- destination remains Helsinki;
- stored deadline is the same calendar day as the requested new deadline;
- assigned itinerary remains unchanged;
- transport status remains `NOT_RECEIVED`;
- last known location remains `Location.UNKNOWN`;
- current voyage remains `Voyage.NONE`;
- cargo is not marked misdirected;
- estimated time of arrival is `Delivery.ETA_UNKOWN`;
- next expected activity is `Delivery.NO_ACTIVITY`;
- cargo is not unloaded at destination;
- routing status reflects the domain model's recalculation and remains
  `MISROUTED` for the established test sequence.

**Gating criteria**

- `cd demo && ./mvnw -Popenliberty -Dtest=BookingServiceTest clean test`
  executes five tests with zero failures, errors, or skipped tests.
- `cd demo && ./mvnw clean package -Popenliberty` succeeds on JDK 17.
- No web, facade, REST, Liberty, or persistence configuration files change in
  this issue.
- The repository's extensible integration-test CI gate passes without a
  workflow change in this issue.

### 4.2 — Issue 2: Expose deadline changes through the booking facade

**What to build**

Expose the use case to presentation clients without leaking domain identifier
types into the web layer.

**Files to modify**

- `demo/src/main/java/org/eclipse/cargotracker/interfaces/booking/facade/BookingServiceFacade.java`
- `demo/src/main/java/org/eclipse/cargotracker/interfaces/booking/facade/internal/DefaultBookingServiceFacade.java`

**Optional focused test file**

- `demo/src/test/java/org/eclipse/cargotracker/interfaces/booking/facade/internal/DefaultBookingServiceFacadeTest.java`

**Required API**

```java
void changeDeadline(String trackingId, Date arrivalDeadline);
```

**Required implementation**

```java
bookingService.changeDeadline(
        new TrackingId(trackingId),
        arrivalDeadline);
```

The facade must not:

- load and mutate `Cargo` itself;
- call `CargoRepository.store(...)`;
- parse a formatted date;
- introduce JSF or PrimeFaces types.

**Tests**

Where a container-free test is added, use a hand-written `BookingService` fake
or spy and prove that:

- the same `Date` object/value reaches the application service;
- the tracking-ID string is converted to an equivalent `TrackingId`;
- the facade delegates exactly once;
- no repository work is duplicated in the facade.

Do not add Mockito or another dependency solely for this test.

**Gating criteria**

- Existing facade consumers still compile.
- `cd demo && ./mvnw clean package -Popenliberty` succeeds on JDK 17.
- The application-layer test added in Issue 1 remains unchanged and compiling.

### 4.3 — Issue 3: Implement the deadline editor backing model

**What to build**

Add the view-scoped backing bean that loads a cargo's current deadline and
submits a replacement deadline through the booking facade. Do not add the
dialog launcher or XHTML in this issue.

**File to create**

- `demo/src/main/java/org/eclipse/cargotracker/interfaces/booking/web/ChangeArrivalDeadlineDate.java`

**Required bean shape**

```java
@Named
@ViewScoped
public class ChangeArrivalDeadlineDate implements Serializable {
    private static final long serialVersionUID = 1L;

    private String trackingId;
    private CargoRoute cargo;
    private Date arrivalDeadlineDate;

    @Inject
    private BookingServiceFacade bookingServiceFacade;
}
```

Required properties and methods:

- `getTrackingId()` / `setTrackingId(String)`
- `getCargo()`
- `getArrivalDeadlineDate()` / `setArrivalDeadlineDate(Date)`
- `load()`
- `changeArrivalDeadline()`

**Load behavior**

1. Call `bookingServiceFacade.loadCargoForRouting(trackingId)`.
2. Store the returned `CargoRoute`.
3. Parse `cargo.getArrivalDeadlineDate()` using `MM/dd/yyyy`.
4. Store the resulting `Date` in `arrivalDeadlineDate`.
5. Do not query a repository or domain object directly.
6. Do not ignore a parsing failure or merely print its stack trace. Surface a
   clear application/view error consistent with existing JSF behavior.

**Submit behavior**

1. Refuse a null date through JSF validation or explicit bean validation.
2. Call
   `bookingServiceFacade.changeDeadline(trackingId, arrivalDeadlineDate)`.
3. Close the dynamic dialog with:

   ```java
   PrimeFaces.current().dialog().closeDynamic("DONE");
   ```

4. Do not close the dialog if the facade call fails.

**Tests to write**

Add a container-free JUnit test if practical, using a hand-written fake facade,
that proves:

- `load()` requests the correct tracking ID;
- `load()` converts an `MM/dd/yyyy` DTO date into the editable `Date`;
- `changeArrivalDeadline()` delegates the selected date and tracking ID;
- a malformed DTO deadline is surfaced rather than converted to null;
- a null selected date is rejected.

Do not add a mocking framework solely for these tests.

**Gating criteria**
````

</details>


---

<sub>29s</sub>

### `view`

**view the file at /Users/edburns/workareas/dd-3072797-tricked-out-cargotracker-run-04-shepherd-control/1-arrival-deadline-control-remove-before-merge/shepherd-campaign.json.**

/Users/edburns/workareas/dd-3072797-tricked-out-cargotracker-run-04-shepherd-control/1-arrival-deadline-control-remove-before-merge/shepherd-campaign.json

<details>
<summary>16 lines</summary>

```
{
  "schemaVersion": 1,
  "campaignId": "26cfa4aa-1dc7-46f3-a995-310bc2c5f60b",
  "campaignIssueNumber": 1,
  "campaignShortname": "arrival-deadline-control",
  "repository": "edburns/dd-3072797-tricked-out-cargotracker-run-04",
  "baseBranch": "edburns/dd-3016202-cargotracker-devoxx-be-2026-add-feature-control",
  "lessonPropagation": "off",
  "campaignMetadataDirectory": "1-arrival-deadline-control-remove-before-merge",
  "lessonsFile": "campaign-lessons.md",
  "createdBy": {
    "shepherdTaskVersion": "1.0.4",
    "stageOutcomeProtocolVersion": 1
  },
  "createdAt": "2026-10-02T18:33:46Z"
}
```

</details>


---

<sub>29s</sub>

### `glob`

**1-arrival-deadline-control-remove-before-merge/**/***

"1-arrival-deadline-control-remove-before-merge/**/*"

<details>
<summary>11 matches</summary>

```
/Users/edburns/workareas/dd-3072797-tricked-out-cargotracker-run-04-shepherd-control/1-arrival-deadline-control-remove-before-merge/.stage20-after.7437
/Users/edburns/workareas/dd-3072797-tricked-out-cargotracker-run-04-shepherd-control/1-arrival-deadline-control-remove-before-merge/campaign-lessons.md
/Users/edburns/workareas/dd-3072797-tricked-out-cargotracker-run-04-shepherd-control/1-arrival-deadline-control-remove-before-merge/shepherd-test-experiment.json
/Users/edburns/workareas/dd-3072797-tricked-out-cargotracker-run-04-shepherd-control/1-arrival-deadline-control-remove-before-merge/prompts/shepherd-task-20-20261002-1434/20261002-1434-invoke-shepherd-task-20-create-issues-from-plan-skill.sh
/Users/edburns/workareas/dd-3072797-tricked-out-cargotracker-run-04-shepherd-control/1-arrival-deadline-control-remove-before-merge/prompts/shepherd-task-20-20261002-1434/20261002-1434-invoke-shepherd-task-20-create-issues-from-plan-skill.md
/Users/edburns/workareas/dd-3072797-tricked-out-cargotracker-run-04-shepherd-control/1-arrival-deadline-control-remove-before-merge/prompts/shepherd-task-20-20261002-1434/pre-creation-children.json
/Users/edburns/workareas/dd-3072797-tricked-out-cargotracker-run-04-shepherd-control/1-arrival-deadline-control-remove-before-merge/prompts/shepherd-task-20-20261002-1434/create-issues-otel-20261002-1434.jsonl
/Users/edburns/workareas/dd-3072797-tricked-out-cargotracker-run-04-shepherd-control/1-arrival-deadline-control-remove-before-merge/add-change-arrival-deadline-feature-ignorance-reduction-plan.md
/Users/edburns/workareas/dd-3072797-tricked-out-cargotracker-run-04-shepherd-control/1-arrival-deadline-control-remove-before-merge/shepherd-campaign.json
/Users/edburns/workareas/dd-3072797-tricked-out-cargotracker-run-04-shepherd-control/1-arrival-deadline-control-remove-before-merge/.stage20-before.7437
/Users/edburns/workareas/dd-3072797-tricked-out-cargotracker-run-04-shepherd-control/1-arrival-deadline-control-remove-before-merge/prompts/shepherd-task-20-20261002-1434/create-issues-session-20261002-1434.jsonl
```

</details>


---

<sub>29s</sub>

### `rg`

**^(## Phase 3 — Ignorance reduction: questions to answer before writing code|## Phase 4 — Implementation \(five serial issues\)|### |#### |\*\*Resolution:\*\*)**

"^(## Phase 3 — Ignorance reduction: questions to answer before writing code|## Phase 4 — Implementation \(five serial issues\)|### |#### |\*\*Resolution:\*\*)" (1-arrival-deadline-control-remove-before-merge/add-change-arrival-deadline-feature-ignorance-reduction-plan.md)

<details>
<summary>32 matches</summary>

```
[grep content: 30 matches across 1 file(s) under /Users/edburns/workareas]

dd (30 match(es)):
  3072797- tricked-out-cargotracker-run-04-shepherd-control/1-arrival-deadline-control-remove-before-merge/add-change-arrival-deadline-feature-ignorance-reduction-plan.md:36:### User-visible acceptance behavior
  3072797- tricked-out-cargotracker-run-04-shepherd-control/1-arrival-deadline-control-remove-before-merge/add-change-arrival-deadline-feature-ignorance-reduction-plan.md:63:### Domain acceptance behavior
  3072797- tricked-out-cargotracker-run-04-shepherd-control/1-arrival-deadline-control-remove-before-merge/add-change-arrival-deadline-feature-ignorance-reduction-plan.md:78:### Hard scope constraints
  3072797- tricked-out-cargotracker-run-04-shepherd-control/1-arrival-deadline-control-remove-before-merge/add-change-arrival-deadline-feature-ignorance-reduction-plan.md:98:### Phase 1 ✅ — Establish a runnable feature-absent baseline
  3072797- tricked-out-cargotracker-run-04-shepherd-control/1-arrival-deadline-control-remove-before-merge/add-change-arrival-deadline-feature-ignorance-reduction-plan.md:112:### Phase 2 ✅ — Verify the before and after user experience
  3072797- tricked-out-cargotracker-run-04-shepherd-control/1-arrival-deadline-control-remove-before-merge/add-change-arrival-deadline-feature-ignorance-reduction-plan.md:126:## Phase 3 — Ignorance reduction: questions to answer before writing code
  3072797- tricked-out-cargotracker-run-04-shepherd-control/1-arrival-deadline-control-remove-before-merge/add-change-arrival-deadline-feature-ignorance-reduction-plan.md:132:### 3.1 — Which cargos expose the edit operation?
  3072797- tricked-out-cargotracker-run-04-shepherd-control/1-arrival-deadline-control-remove-before-merge/add-change-arrival-deadline-feature-ignorance-reduction-plan.md:158:**Resolution:**
  3072797- tricked-out-cargotracker-run-04-shepherd-control/1-arrival-deadline-control-remove-before-merge/add-change-arrival-deadline-feature-ignorance-reduction-plan.md:165:### 3.2 — What is the exact domain mutation?
  3072797- tricked-out-cargotracker-run-04-shepherd-control/1-arrival-deadline-control-remove-before-merge/add-change-arrival-deadline-feature-ignorance-reduction-plan.md:204:**Resolution:**
  3072797- tricked-out-cargotracker-run-04-shepherd-control/1-arrival-deadline-control-remove-before-merge/add-change-arrival-deadline-feature-ignorance-reduction-plan.md:214:### 3.3 — What should happen to an existing itinerary and delivery state?
  3072797- tricked-out-cargotracker-run-04-shepherd-control/1-arrival-deadline-control-remove-before-merge/add-change-arrival-deadline-feature-ignorance-reduction-plan.md:240:**Resolution:**
  3072797- tricked-out-cargotracker-run-04-shepherd-control/1-arrival-deadline-control-remove-before-merge/add-change-arrival-deadline-feature-ignorance-reduction-plan.md:248:### 3.4 — What type crosses the facade boundary?
  3072797- tricked-out-cargotracker-run-04-shepherd-control/1-arrival-deadline-control-remove-before-merge/add-change-arrival-deadline-feature-ignorance-reduction-plan.md:276:**Resolution:**
  3072797- tricked-out-cargotracker-run-04-shepherd-control/1-arrival-deadline-control-remove-before-merge/add-change-arrival-deadline-feature-ignorance-reduction-plan.md:284:### 3.5 — How is the DTO's formatted deadline converted for editing?
  3072797- tricked-out-cargotracker-run-04-shepherd-control/1-arrival-deadline-control-remove-before-merge/add-change-arrival-deadline-feature-ignorance-reduction-plan.md:314:**Resolution:**
  3072797- tricked-out-cargotracker-run-04-shepherd-control/1-arrival-deadline-control-remove-before-merge/add-change-arrival-deadline-feature-ignorance-reduction-plan.md:324:### 3.6 — Which JSF bean scopes and interaction pattern should be used?
  3072797- tricked-out-cargotracker-run-04-shepherd-control/1-arrival-deadline-control-remove-before-merge/add-change-arrival-deadline-feature-ignorance-reduction-plan.md:354:**Resolution:**
  3072797- tricked-out-cargotracker-run-04-shepherd-control/1-arrival-deadline-control-remove-before-merge/add-change-arrival-deadline-feature-ignorance-reduction-plan.md:363:### 3.7 — What is the dynamic-dialog contract?
  3072797- tricked-out-cargotracker-run-04-shepherd-control/1-arrival-deadline-control-remove-before-merge/add-change-arrival-deadline-feature-ignorance-reduction-plan.md:404:**Resolution:**
  3072797- tricked-out-cargotracker-run-04-shepherd-control/1-arrival-deadline-control-remove-before-merge/add-change-arrival-deadline-feature-ignorance-reduction-plan.md:415:### 3.8 — What date validation is required?
  3072797- tricked-out-cargotracker-run-04-shepherd-control/1-arrival-deadline-control-remove-before-merge/add-change-arrival-deadline-feature-ignorance-reduction-plan.md:433:**Resolution:**
  3072797- tricked-out-cargotracker-run-04-shepherd-control/1-arrival-deadline-control-remove-before-merge/add-change-arrival-deadline-feature-ignorance-reduction-plan.md:441:### 3.9 — How will the feature be tested on the prepared historical baseline?
  3072797- tricked-out-cargotracker-run-04-shepherd-control/1-arrival-deadline-control-remove-before-merge/add-change-arrival-deadline-feature-ignorance-reduction-plan.md:482:**Resolution:**
  3072797- tricked-out-cargotracker-run-04-shepherd-control/1-arrival-deadline-control-remove-before-merge/add-change-arrival-deadline-feature-ignorance-reduction-plan.md:496:## Phase 4 — Implementation (five serial issues)
  3072797- tricked-out-cargotracker-run-04-shepherd-control/1-arrival-deadline-control-remove-before-merge/add-change-arrival-deadline-feature-ignorance-reduction-plan.md:501:### 4.1 — Issue 1: Add the application-layer deadline change operation
  3072797- tricked-out-cargotracker-run-04-shepherd-control/1-arrival-deadline-control-remove-before-merge/add-change-arrival-deadline-feature-ignorance-reduction-plan.md:572:### 4.2 — Issue 2: Expose deadline changes through the booking facade
  3072797- tricked-out-cargotracker-run-04-shepherd-control/1-arrival-deadline-control-remove-before-merge/add-change-arrival-deadline-feature-ignorance-reduction-plan.md:627:### 4.3 — Issue 3: Implement the deadline editor backing model
  3072797- tricked-out-cargotracker-run-04-shepherd-control/1-arrival-deadline-control-remove-before-merge/add-change-arrival-deadline-feature-ignorance-reduction-plan.md:706:### 4.4 — Issue 4: Implement the PrimeFaces deadline dialog
  3072797- tricked-out-cargotracker-run-04-shepherd-control/1-arrival-deadline-control-remove-before-merge/add-change-arrival-deadline-feature-ignorance-reduction-plan.md:803:### 4.5 — Issue 5: Integrate deadline editing into the Administration dashboard
```

</details>


---

<sub>35s</sub>

### `view`

**view the file at /Users/edburns/workareas/dd-3072797-tricked-out-cargotracker-run-04-shepherd-control/1-arrival-deadline-control-remove-before-merge/add-change-arrival-deadline-feature-ignorance-reduction-plan.md.**

/Users/edburns/workareas/dd-3072797-tricked-out-cargotracker-run-04-shepherd-control/1-arrival-deadline-control-remove-before-merge/add-change-arrival-deadline-feature-ignorance-reduction-plan.md (lines 620-802)

<details>
<summary>129 lines</summary>

````

**Gating criteria**

- Existing facade consumers still compile.
- `cd demo && ./mvnw clean package -Popenliberty` succeeds on JDK 17.
- The application-layer test added in Issue 1 remains unchanged and compiling.

### 4.3 — Issue 3: Implement the deadline editor backing model

**What to build**

Add the view-scoped backing bean that loads a cargo's current deadline and
submits a replacement deadline through the booking facade. Do not add the
dialog launcher or XHTML in this issue.

**File to create**

- `demo/src/main/java/org/eclipse/cargotracker/interfaces/booking/web/ChangeArrivalDeadlineDate.java`

**Required bean shape**

```java
@Named
@ViewScoped
public class ChangeArrivalDeadlineDate implements Serializable {
    private static final long serialVersionUID = 1L;

    private String trackingId;
    private CargoRoute cargo;
    private Date arrivalDeadlineDate;

    @Inject
    private BookingServiceFacade bookingServiceFacade;
}
```

Required properties and methods:

- `getTrackingId()` / `setTrackingId(String)`
- `getCargo()`
- `getArrivalDeadlineDate()` / `setArrivalDeadlineDate(Date)`
- `load()`
- `changeArrivalDeadline()`

**Load behavior**

1. Call `bookingServiceFacade.loadCargoForRouting(trackingId)`.
2. Store the returned `CargoRoute`.
3. Parse `cargo.getArrivalDeadlineDate()` using `MM/dd/yyyy`.
4. Store the resulting `Date` in `arrivalDeadlineDate`.
5. Do not query a repository or domain object directly.
6. Do not ignore a parsing failure or merely print its stack trace. Surface a
   clear application/view error consistent with existing JSF behavior.

**Submit behavior**

1. Refuse a null date through JSF validation or explicit bean validation.
2. Call
   `bookingServiceFacade.changeDeadline(trackingId, arrivalDeadlineDate)`.
3. Close the dynamic dialog with:

   ```java
   PrimeFaces.current().dialog().closeDynamic("DONE");
   ```

4. Do not close the dialog if the facade call fails.

**Tests to write**

Add a container-free JUnit test if practical, using a hand-written fake facade,
that proves:

- `load()` requests the correct tracking ID;
- `load()` converts an `MM/dd/yyyy` DTO date into the editable `Date`;
- `changeArrivalDeadline()` delegates the selected date and tracking ID;
- a malformed DTO deadline is surfaced rather than converted to null;
- a null selected date is rejected.

Do not add a mocking framework solely for these tests.

**Gating criteria**

- The bean is serializable and uses the established CDI/JSF annotations.
- The bean references only facade DTOs, not domain model classes.
- `cd demo && ./mvnw clean package -Popenliberty` succeeds on JDK 17.

### 4.4 — Issue 4: Implement the PrimeFaces deadline dialog

**What to build**

Add the session-scoped dialog launcher and the dynamic dialog view. The dialog
must work when addressed directly with a `trackingId` query parameter, but it
is not yet linked from the dashboard in this issue.

**Files to create**

- `demo/src/main/java/org/eclipse/cargotracker/interfaces/booking/web/ChangeArrivalDeadlineDateDialog.java`
- `demo/src/main/webapp/admin/dialogs/changeArrivalDeadlineDate.xhtml`

**Launcher requirements**

Use:

```java
@ManagedBean(name = "changeArrivalDeadlineDateDialog")
@SessionScoped
```

Implement:

- `showDialog(String trackingId)`
- `handleReturn(SelectEvent event)`
- `cancel()`

`showDialog(...)` must:

- set the options documented in Question 3.7;
- pass `trackingId` as a dynamic-dialog request parameter;
- open `/admin/dialogs/changeArrivalDeadlineDate.xhtml`.

`cancel()` must close the dialog without invoking the facade.

**XHTML requirements**

The page title must be:

```xhtml
<title>Change Deadline</title>
```

Place metadata directly beneath the root `<html>` element and before
`<h:head>`:

```xhtml
<f:metadata>
    <f:viewParam name="trackingId"
                 value="#{changeArrivalDeadlineDate.trackingId}"/>
    <f:viewAction action="#{changeArrivalDeadlineDate.load}"/>
</f:metadata>
```

The form must display:

- `Origin:` and `changeArrivalDeadlineDate.cargo.originName`;
- `Destination:` and
  `changeArrivalDeadlineDate.cargo.finalDestinationName`;
- `Deadline:` and a `p:datePicker` bound to
  `changeArrivalDeadlineDate.arrivalDeadlineDate`;
- **Cancel**, invoking
  `changeArrivalDeadlineDateDialog.cancel()`;
- **Update**, invoking
  `changeArrivalDeadlineDate.changeArrivalDeadline()`.

The date picker must require a value. The Update action must reload or refresh
the calling Administration view after a successful dialog close, following the
existing destination-dialog behavior.

**Runtime tests**

With the application running, request:

```text
http://localhost:8080/cargo-tracker/admin/dialogs/changeArrivalDeadlineDate.xhtml?trackingId=DEF789
```

Verify:

- HTTP 200;
- title is **Change Deadline**;
- origin and destination render;
- the existing deadline is selected;
- no `TagException`, `Parent UIComponent`, `FacesException`, or server error is
  present;
- Cancel does not change the persisted deadline;
- Update changes the deadline.

**Gating criteria**

- `cd demo && ./mvnw clean package -Popenliberty liberty:run` succeeds on JDK 17.
- Direct dialog loading and both actions work.
- Destination editing continues to work.
- Stop Liberty cleanly before completing the issue.
````

</details>


---

<sub>35s</sub>

### `view`

**view the file at /Users/edburns/workareas/dd-3072797-tricked-out-cargotracker-run-04-shepherd-control/1-arrival-deadline-control-remove-before-merge/add-change-arrival-deadline-feature-ignorance-reduction-plan.md.**

/Users/edburns/workareas/dd-3072797-tricked-out-cargotracker-run-04-shepherd-control/1-arrival-deadline-control-remove-before-merge/add-change-arrival-deadline-feature-ignorance-reduction-plan.md (lines 803-980)

<details>
<summary>93 lines</summary>

````
### 4.5 — Issue 5: Integrate deadline editing into the Administration dashboard

**What to build**

Replace the plain deadline text in the Not Routed Cargo table with the
PrimeFaces command-link affordance that opens the completed dialog and refreshes
the table after return.

**File to modify**

- `demo/src/main/webapp/admin/tables/listNotRouted.xhtml`

**Required UI shape**

Within the existing Deadline column, add a `p:commandLink` that:

- calls
  `changeArrivalDeadlineDateDialog.showDialog(cargoNotRouted.trackingId)`;
- retains the displayed
  `cargoNotRouted.arrivalDeadlineDate`;
- adds the existing Font Awesome edit icon style;
- uses a stable component ID such as `arrivalDeadlineToUpdate`;
- listens for `dialogReturn`;
- invokes
  `changeArrivalDeadlineDateDialog.handleReturn`;
- updates `tableNotRouted`;
- provides the tooltip:
  `Click to change cargo arrival deadline date.`

Follow the adjacent Destination column's established structure and styling. Do
not alter tracking-ID routing or destination editing.

**End-to-end acceptance test**

1. Start from a clean build on JDK 17:

   ```bash
   cd demo && ./mvnw clean package -Popenliberty liberty:run
   ```

2. Confirm the home page returns HTTP 200.
3. Open Administration and locate `DEF789`.
4. Record the original deadline.
5. Confirm the deadline now has an edit icon and tooltip.
6. Open the deadline dialog.
7. Confirm origin and destination identify the same cargo.
8. Choose a visibly different date.
9. Press **Update**.
10. Confirm the dialog closes and the Not Routed Cargo table refreshes.
11. Confirm the table shows the selected date.
12. Reload the browser and confirm the selected date remains.
13. Reopen the dialog and confirm the editor initializes to the changed date.
14. Press **Cancel** and confirm no additional change occurs.
15. Verify the Destination edit dialog still opens.
16. Verify selecting `DEF789` for routing still loads without an error page.

**Log acceptance**

The final run must contain none of:

- `<f:metadata> Parent UIComponent`;
- `TagException`;
- `VerifyError`;
- `FacesException`;
- `CWWKZ0002E` or `CWWKZ0003E`;
- recurring batch authorization failures;
- new FFDC files attributable to this feature.

Transient JMS activation-order warnings are acceptable only if all message
endpoints subsequently activate, as established by the prepared baseline.

**Final regression and scope checks**

- `cd demo && ./mvnw clean package -Popenliberty` succeeds.
- The dedicated Open Liberty `BookingServiceTest` tier executes all five
  ordered tests with zero failures, errors, or skipped tests.
- No Java EE namespace migration occurred.
- No Open Liberty, Derby, Jackson, JSF metadata, batch authorization, or REST
  compatibility fix from the starting commit was reverted.
- The feature affects only the intended application, facade, web, dialog,
  table, and test surfaces.
- Stop Liberty cleanly.

---

## Phase 5 — Documentation and implementation handoff

- Update `demo/README.md` only if user-facing Administration capabilities are
  enumerated there; add one concise sentence that administrators can change an
  unrouted cargo's arrival deadline.
- Record the exact JDK 17 run command in the final issue or pull-request
  description:

  ```bash
  cd demo && ./mvnw clean package -Popenliberty liberty:run
  ```

- Include `DEF789` and the before/after deadline values in the acceptance
  evidence.
- State explicitly that data is in-memory and resets when the application is
  rebuilt/restarted.

---

## Cross-cutting concerns

| Concern | Required handling |
|---------|--------------------|
| Domain-driven design | Mutate the aggregate through `Cargo.specifyNewRoute(...)`; do not bypass it with persistence-level field updates. |
| Layering | Web bean → booking facade → booking service → cargo repository. |
| Date handling | Use `java.util.Date` at service/facade boundaries and `MM/dd/yyyy` for the date-only editor representation. |
| Time zones | Acceptance compares the calendar date displayed by the application; do not introduce a new timezone policy in this feature. |
| Error handling | Do not silently swallow parse, lookup, validation, or persistence failures. A failed update must not look successful. |
| JSF compatibility | Keep `<f:metadata>` at view-root scope for MyFaces. |
| Bean lifecycle | Editor is CDI `@ViewScoped`; dynamic-dialog launcher mirrors the existing session-scoped JSF managed bean. |
| Accessibility | Preserve visible labels; the date editor must have an associated label and validation feedback. |
| Backward compatibility | Existing destination editing, routing, tracking, REST, messaging, batch, and startup behavior must remain intact. |
| Test discipline | Add tests before production code where practical; every issue must preserve all prior gates. |
| Experiment integrity | Implement from this specification starting at `89e107c3ed6dd3655c2ffdf638b57d6c47099dab`; do not cherry-pick or inspect feature-bearing commits. |
````

</details>


---

<sub>35s</sub>

### `bash`

**Verify headings branch and remote**

$ set -e
PLAN='1-arrival-deadline-control-remove-before-merge/add-change-arrival-deadline-feature-ignorance-reduction-plan.md'
BASE='edburns/dd-3016202-cargotracker-devoxx-be-2026-add-feature-control'
printf 'questions=%s implementation=%s tasks=%s\n' "$(git show "$BASE:$PLAN" | grep -Fxc '## Phase 3 — Ignorance reduction: questions to answer before writing code')" "$(git show "$BASE:$PLAN" | grep -Fxc '## Phase 4 — Implementation (five serial issues)')" "$(git show "$BASE:$PLAN" | sed -n '/^## Phase 4 — Implementation (five serial issues)$/,$p' | grep -Ec '^### 4\.[0-9]+ — Issue [0-9]+:')"
printf 'default=%s current=%s remote=%s\n' "$(gh api repos/edburns/dd-3072797-tricked-out-cargotracker-run-04 --jq .default_branch)" "$(git branch --show-current)" "$(git remote get-url origin)"

```
questions=1 implementation=1 tasks=5
default=edburns/dd-3016202-cargotracker-devoxx-be-2026-experiment current=edburns/dd-3016202-cargotracker-devoxx-be-2026-add-feature-control remote=git@github.com:edburns/dd-3072797-tricked-out-cargotracker-run-04.git
<shellId: 3 completed with exit code 0>
```


---

<sub>38s</sub>

### `view`

**view the file at /Users/edburns/.copilot/plugins/shepherd-task/scripts/validate-stage20-drafts.sh.**

/Users/edburns/.copilot/plugins/shepherd-task/scripts/validate-stage20-drafts.sh

<details>
<summary>65 lines</summary>

```
#!/usr/bin/env bash
# shepherd-task-version: 1.0.4

set -euo pipefail

[[ $# -eq 3 ]] || {
    echo "Usage: $0 <body-directory> <expected-count> <off|campaign>" >&2
    exit 1
}

body_directory="$1"
expected_count="$2"
lesson_propagation="$3"

[[ -d "$body_directory" ]] || {
    echo "Stage-20 body directory does not exist: $body_directory" >&2
    exit 1
}
[[ "$expected_count" =~ ^[1-9][0-9]*$ ]] || {
    echo "Expected count must be a positive integer." >&2
    exit 1
}
[[ "$lesson_propagation" == "off" || "$lesson_propagation" == "campaign" ]] || {
    echo "Lesson propagation must be off or campaign." >&2
    exit 1
}

body_files=()
for body_file in "$body_directory"/*-body.md; do
    [[ -f "$body_file" ]] || continue
    [[ "$body_file" != *-observed-body.md ]] || continue
    body_files+=("$body_file")
done
[[ ${#body_files[@]} -eq $expected_count ]] || {
    echo "Expected $expected_count persisted stage-20 body files; found ${#body_files[@]}." >&2
    exit 1
}

required_headings=(
    '## Campaign context and required reading'
    '## Branch and execution order'
    '## Implement'
    '## Completion gates'
    '## Out of scope'
)

for body_file in "${body_files[@]}"; do
    [[ -s "$body_file" && "$(awk 'END { print NR }' "$body_file")" -gt 1 ]] || {
        echo "Persisted issue body must contain physical Markdown lines: $body_file" >&2
        exit 1
    }
    first_nonblank="$(awk 'NF { print; exit }' "$body_file")"
    [[ "$first_nonblank" =~ ^##[[:space:]]+[^[:space:]] ]] || {
        echo "Persisted issue body must begin with a level-two heading: $body_file" >&2
        exit 1
    }
    for heading in "${required_headings[@]}"; do
        grep -Fqx -- "$heading" "$body_file" || {
            echo "Persisted issue body is missing the physical heading '$heading': $body_file" >&2
            exit 1
        }
    done
    if [[ "$lesson_propagation" == "campaign" ]]; then
        grep -Fqx -- '## Campaign lessons (REQUIRED)' "$body_file" || {
            echo "Treatment issue body is missing its campaign-lessons heading: $body_file" >&2
            exit 1
        }
    elif grep -Fqx -- '## Campaign lessons (REQUIRED)' "$body_file"; then
        echo "Control issue body unexpectedly contains a campaign-lessons heading: $body_file" >&2
        exit 1
    fi
done
```

</details>


---

<sub>38s</sub>

### `view`

**view the file at /Users/edburns/.copilot/plugins/shepherd-task/scripts/verify-stage20-child-links.sh.**

/Users/edburns/.copilot/plugins/shepherd-task/scripts/verify-stage20-child-links.sh

<details>
<summary>30 lines</summary>

```
#!/usr/bin/env bash
# shepherd-task-version: 1.0.4

set -euo pipefail

if [[ $# -ne 3 ]]; then
    echo "Usage: $0 <PRE_CREATION_CHILDREN_JSON> <FINAL_CHILDREN_JSON> <CREATION_LEDGER_JSON>" >&2
    exit 2
fi

for command_name in jq; do
    command -v "$command_name" >/dev/null 2>&1 || {
        echo "Error: Required command '$command_name' was not found." >&2
        exit 1
    }
done

script_dir="$(cd "$(dirname "$0")" && pwd)"
filter_path="$script_dir/verify-stage20-child-links.jq"
[[ -f "$filter_path" ]] || {
    echo "Error: Stage-20 child-link verification filter was not found: $filter_path" >&2
    exit 1
}

for input_path in "$@"; do
    [[ -f "$input_path" ]] || {
        echo "Error: Stage-20 child-link verification input was not found: $input_path" >&2
        exit 1
    }
done

jq -n \
    --slurpfile baseline "$1" \
    --slurpfile final "$2" \
    --slurpfile ledger "$3" \
    -f "$filter_path"
```

</details>


---

<sub>38s</sub>

### `view`

**view the file at /Users/edburns/.copilot/plugins/shepherd-task/scripts/verify-github-issue-body.sh.**

/Users/edburns/.copilot/plugins/shepherd-task/scripts/verify-github-issue-body.sh

<details>
<summary>131 lines</summary>

```
#!/usr/bin/env bash
# shepherd-task-version: 1.0.4
set -euo pipefail

fail() {
    printf 'verify-github-issue-body: %s\n' "$*" >&2
    exit 1
}

[[ $# -ge 3 && $# -le 6 ]] ||
    fail "usage: $0 OWNER/REPO ISSUE_NUMBER EXPECTED_BODY_PATH [MAX_ATTEMPTS] [DELAY_SECONDS] [DIAGNOSTIC_PATH]"

repository="$1"
issue_number="$2"
expected_body_path="$3"
max_attempts="${4:-6}"
delay_seconds="${5:-5}"
diagnostic_path="${6:-}"
gh_command="${GH_COMMAND:-gh}"

[[ "$repository" =~ ^[A-Za-z0-9_.-]+/[A-Za-z0-9_.-]+$ ]] ||
    fail "invalid repository: $repository"
[[ "$issue_number" =~ ^[1-9][0-9]*$ ]] ||
    fail "invalid issue number: $issue_number"
[[ "$max_attempts" =~ ^[1-9][0-9]*$ ]] ||
    fail "MAX_ATTEMPTS must be a positive integer"
[[ "$delay_seconds" =~ ^[0-9]+$ ]] ||
    fail "DELAY_SECONDS must be a non-negative integer"
[[ -f "$expected_body_path" ]] ||
    fail "expected issue body file not found: $expected_body_path"

temp_directory="$(mktemp -d)"
trap 'rm -rf "$temp_directory"' EXIT
response_path="$temp_directory/response.json"
actual_path="$temp_directory/actual.txt"
actual_normalized="$temp_directory/actual-normalized.txt"
expected_normalized="$temp_directory/expected-normalized.txt"

normalize_file() {
    jq -b -Rsj 'gsub("\r\n|\r"; "\n")' "$1" >"$2"
}

equivalent_files() {
    local actual="$1"
    local expected="$2"
    local candidate="$temp_directory/candidate.txt"

    cmp -s -- "$actual" "$expected" && return 0
    cp "$actual" "$candidate"
    printf '\n' >>"$candidate"
    cmp -s -- "$candidate" "$expected" && return 0
    cp "$expected" "$candidate"
    printf '\n' >>"$candidate"
    cmp -s -- "$actual" "$candidate"
}

sha256_file() {
    if command -v sha256sum >/dev/null 2>&1; then
        sha256sum "$1" | awk '{print $1}'
    else
        shasum -a 256 "$1" | awk '{print $1}'
    fi
}

write_diagnostic() {
    local reason="$1"
    local attempts="$2"
    [[ -n "$diagnostic_path" ]] || return 0

    mkdir -p "$(dirname "$diagnostic_path")"
    local expected_length actual_length expected_hash actual_hash first_offset
    expected_length="$(wc -c <"$expected_normalized" | tr -d ' ')"
    actual_length="$(wc -c <"$actual_normalized" | tr -d ' ')"
    expected_hash="$(sha256_file "$expected_normalized")"
    actual_hash="$(sha256_file "$actual_normalized")"
    first_offset="$( (cmp -l -- "$actual_normalized" "$expected_normalized" 2>/dev/null || true) | awk 'NR == 1 { print $1 - 1 }')"
    [[ -n "$first_offset" ]] || first_offset="null"

    jq -n \
        --arg repository "$repository" \
        --argjson issueNumber "$issue_number" \
        --arg endpoint "repos/$repository/issues/$issue_number" \
        --argjson attempts "$attempts" \
        --arg observedAt "$(date -u +%Y-%m-%dT%H:%M:%SZ)" \
        --arg reason "$reason" \
        --argjson expectedLength "$expected_length" \
        --argjson actualLength "$actual_length" \
        --arg expectedSha256 "$expected_hash" \
        --arg actualSha256 "$actual_hash" \
        --argjson firstDifferenceOffset "$first_offset" \
        '{
            schemaVersion: 1,
            repository: $repository,
            issueNumber: $issueNumber,
            endpoint: $endpoint,
            attempts: $attempts,
            observedAt: $observedAt,
            reason: $reason,
            expectedLength: $expectedLength,
            actualLength: $actualLength,
            expectedSha256: $expectedSha256,
            actualSha256: $actualSha256,
            firstDifferenceOffset: $firstDifferenceOffset
        }' >"$diagnostic_path"
}

normalize_file "$expected_body_path" "$expected_normalized"
last_reason=""

for ((attempt = 1; attempt <= max_attempts; attempt++)); do
    set +e
    "$gh_command" api "repos/$repository/issues/$issue_number" >"$response_path" 2>"$temp_directory/error.txt"
    exit_code=$?
    set -e

    if [[ $exit_code -ne 0 ]]; then
        last_reason="GitHub REST request failed with exit code $exit_code."
        error_message="$(cat "$temp_directory/error.txt")"
        authentication_error_pattern='HTTP[[:space:]]+(401|403)|[Aa]uthentication|[Nn][Oo][Tt][[:space:]]authorized|[Rr]esource[[:space:]]not[[:space:]]accessible'
        if [[ "$error_message" =~ $authentication_error_pattern ]]; then
            : >"$actual_normalized"
            write_diagnostic "$last_reason" "$attempt"
            fail "unable to fetch issue #$issue_number from $repository: $error_message"
        fi
    elif ! jq -e 'type == "object" and has("body")' "$response_path" >/dev/null 2>&1; then
        last_reason="GitHub REST response was invalid JSON."
    else
        jq -b -j '.body // ""' "$response_path" >"$actual_path"
        normalize_file "$actual_path" "$actual_normalized"
        if equivalent_files "$actual_normalized" "$expected_normalized"; then
            cat "$response_path"
            exit 0
        fi
        last_reason="GitHub issue body differs from the persisted draft."
    fi

    if [[ $attempt -lt $max_attempts ]]; then
        printf 'verify-github-issue-body: %s Retrying issue #%s body verification (%s/%s).\n' \
            "$last_reason" "$issue_number" "$attempt" "$max_attempts" >&2
        ((delay_seconds > 0)) && sleep "$delay_seconds"
    fi
done

[[ -f "$actual_normalized" ]] || : >"$actual_normalized"
write_diagnostic "$last_reason" "$max_attempts"
diagnostic_suffix=""
[[ -z "$diagnostic_path" ]] || diagnostic_suffix=" Diagnostic: $diagnostic_path"
fail "issue #$issue_number body verification failed after $max_attempts attempts. $last_reason$diagnostic_suffix"
```

</details>


---

<sub>1m 26s</sub>

### `apply_patch`

<details>
<summary>Arguments</summary>

````json
"*** Begin Patch\n*** Add File: 1-arrival-deadline-control-remove-before-merge/prompts/shepherd-task-20-20261002-1434/issue-bodies/01-4.1-body.md\n+## Campaign context and required reading\n+\n+On the `edburns/dd-3016202-cargotracker-devoxx-be-2026-add-feature-control` branch, the directory `1-arrival-deadline-control-remove-before-merge` contains the plan (`add-change-arrival-deadline-feature-ignorance-reduction-plan.md`) and supporting resources (diagrams, decision records). Spike subdirectories are research artifacts — read the plan's Resolution sections for findings, not the spike source code.\n+\n+Read the entire plan before working. Then re-read these exact sections:\n+\n+- `### Domain acceptance behavior`\n+- `### Hard scope constraints`\n+- `### 3.2 — What is the exact domain mutation?`\n+- `### 3.3 — What should happen to an existing itinerary and delivery state?`\n+- `### 3.9 — How will the feature be tested on the prepared historical baseline?`\n+- `### 4.1 — Issue 1: Add the application-layer deadline change operation`\n+- `## Cross-cutting concerns`\n+\n+The resolved design is to load the aggregate by `TrackingId`, replace its `RouteSpecification` with one containing the existing origin, existing destination, and supplied deadline, call `Cargo.specifyNewRoute(...)`, and store through `CargoRepository`. Research established that the existing itinerary must remain assigned and the domain model must recalculate delivery and routing state; in the established sequential test, the cargo remains `MISROUTED`. Do not add a mutable deadline setter or bypass the aggregate with a persistence update.\n+\n+## Branch and execution order\n+\n+Target `edburns/dd-3016202-cargotracker-devoxx-be-2026-add-feature-control` from remote `origin`. This is serial task 1 of 5. Tasks are assigned, completed, and merged in plan order. Do not begin until assigned; task 2 must not begin until this task's gates pass and its PR is merged.\n+\n+Keep Java EE 7 and `javax.*`, preserve the historical Java source/target configuration, run on JDK 17 with Open Liberty, and implement from the prepared baseline without inspecting or copying feature-bearing commits.\n+\n+## Implement\n+\n+Modify only:\n+\n+- `demo/src/main/java/org/eclipse/cargotracker/application/BookingService.java`\n+- `demo/src/main/java/org/eclipse/cargotracker/application/internal/DefaultBookingService.java`\n+- `demo/src/test/java/org/eclipse/cargotracker/application/BookingServiceTest.java`\n+\n+Add `void changeDeadline(TrackingId trackingId, Date deadline)` to the application service. Its implementation must:\n+\n+1. Load with `cargoRepository.find(trackingId)`.\n+2. Read the current destination from the current route specification.\n+3. Construct a replacement `RouteSpecification` from `cargo.getOrigin()`, the current destination, and the supplied deadline.\n+4. Apply it through `cargo.specifyNewRoute(...)`.\n+5. Persist with `cargoRepository.store(cargo)`.\n+6. Log the tracking ID and deadline at `Level.INFO` in the style of `changeDestination(...)`.\n+\n+Write the test first. Append ordered `testChangeDeadline()` after `testChangeDestination()`. Advance the test's original deadline by one month, invoke the new operation, reload through the already injected `CargoRepository`, and assert:\n+\n+- origin is Chicago and destination is Helsinki;\n+- the stored deadline is the requested calendar day;\n+- the assigned itinerary is unchanged;\n+- transport status is `NOT_RECEIVED`;\n+- last known location is `Location.UNKNOWN`;\n+- current voyage is `Voyage.NONE`;\n+- the cargo is not misdirected;\n+- ETA is `Delivery.ETA_UNKOWN`;\n+- next expected activity is `Delivery.NO_ACTIVITY`;\n+- cargo is not unloaded at destination;\n+- routing status is `MISROUTED`.\n+\n+## Completion gates\n+\n+- From `demo/`, with the repository-required Java 17 environment, `./mvnw -Popenliberty -Dtest=BookingServiceTest clean test` runs all five ordered methods with zero failures, errors, or skips.\n+- From `demo/`, `./mvnw clean package -Popenliberty` succeeds.\n+- The extensible integration-test CI gate passes without workflow changes.\n+- A focused diff confirms no facade, web, REST, Liberty, persistence configuration, or unrelated files changed.\n+- Existing origin, destination, itinerary, and derived delivery-state assertions discriminate aggregate replacement from a direct field/persistence update.\n+\n+## Out of scope\n+\n+Do not add facade, JSF, PrimeFaces, dialog, dashboard, REST, persistence configuration, or workflow changes. Do not add setters to domain value objects, clear or replace the itinerary, reroute cargo, or introduce a new date policy.\n*** Add File: 1-arrival-deadline-control-remove-before-merge/prompts/shepherd-task-20-20261002-1434/issue-bodies/02-4.2-body.md\n+## Campaign context and required reading\n+\n+On the `edburns/dd-3016202-cargotracker-devoxx-be-2026-add-feature-control` branch, the directory `1-arrival-deadline-control-remove-before-merge` contains the plan (`add-change-arrival-deadline-feature-ignorance-reduction-plan.md`) and supporting resources (diagrams, decision records). Spike subdirectories are research artifacts — read the plan's Resolution sections for findings, not the spike source code.\n+\n+Read the entire plan before working. Then re-read these exact sections:\n+\n+- `### Hard scope constraints`\n+- `### 3.2 — What is the exact domain mutation?`\n+- `### 3.4 — What type crosses the facade boundary?`\n+- `### 3.9 — How will the feature be tested on the prepared historical baseline?`\n+- `### 4.2 — Issue 2: Expose deadline changes through the booking facade`\n+- `## Cross-cutting concerns`\n+\n+The resolved facade contract is `void changeDeadline(String trackingId, Date arrivalDeadline)`. Research established that only the identifier is converted: construct an equivalent `TrackingId` and pass the same `java.util.Date` to the application service. The facade must preserve the web/domain boundary: no domain aggregate, repository, formatted string, command DTO, JSF type, or PrimeFaces type belongs in this operation.\n+\n+## Branch and execution order\n+\n+Target `edburns/dd-3016202-cargotracker-devoxx-be-2026-add-feature-control` from remote `origin`. This is serial task 2 of 5. Tasks are assigned, completed, and merged in plan order. Do not begin until assigned and task 1 is merged; task 3 must wait for this task's gates and merge.\n+\n+Keep Java EE 7 and `javax.*`, preserve the historical Java source/target configuration, and build with JDK 17/Open Liberty.\n+\n+## Implement\n+\n+Modify:\n+\n+- `demo/src/main/java/org/eclipse/cargotracker/interfaces/booking/facade/BookingServiceFacade.java`\n+- `demo/src/main/java/org/eclipse/cargotracker/interfaces/booking/facade/internal/DefaultBookingServiceFacade.java`\n+\n+Add this facade API:\n+\n+```java\n+void changeDeadline(String trackingId, Date arrivalDeadline);\n+```\n+\n+Delegate exactly once:\n+\n+```java\n+bookingService.changeDeadline(\n+        new TrackingId(trackingId),\n+        arrivalDeadline);\n+```\n+\n+A focused container-free test may be added at `demo/src/test/java/org/eclipse/cargotracker/interfaces/booking/facade/internal/DefaultBookingServiceFacadeTest.java`. If practical with the existing design, use a hand-written `BookingService` fake/spy to prove equivalent tracking-ID conversion, preservation of the same date object/value, and exactly one delegation. Do not add a mocking dependency.\n+\n+## Completion gates\n+\n+- Existing facade consumers compile unchanged.\n+- Any focused test proves one delegation, equivalent `TrackingId`, and unchanged date value/reference without touching a repository.\n+- From `demo/`, with Java 17 configured, `./mvnw clean package -Popenliberty` succeeds.\n+- The task 1 `BookingServiceTest` remains unchanged and compiling.\n+- A focused diff confirms there is no aggregate loading, repository call, formatted-date parsing, DTO addition, JSF/PrimeFaces dependency, or unrelated change in this task.\n+\n+## Out of scope\n+\n+Do not implement the backing bean, dynamic dialog, XHTML, dashboard link, domain mutation, repository work, date formatting/parsing, or a new DTO. Do not add Mockito or another dependency solely for this test.\n*** Add File: 1-arrival-deadline-control-remove-before-merge/prompts/shepherd-task-20-20261002-1434/issue-bodies/03-4.3-body.md\n+## Campaign context and required reading\n+\n+On the `edburns/dd-3016202-cargotracker-devoxx-be-2026-add-feature-control` branch, the directory `1-arrival-deadline-control-remove-before-merge` contains the plan (`add-change-arrival-deadline-feature-ignorance-reduction-plan.md`) and supporting resources (diagrams, decision records). Spike subdirectories are research artifacts — read the plan's Resolution sections for findings, not the spike source code.\n+\n+Read the entire plan before working. Then re-read these exact sections:\n+\n+- `### 3.4 — What type crosses the facade boundary?`\n+- `### 3.5 — How is the DTO's formatted deadline converted for editing?`\n+- `### 3.6 — Which JSF bean scopes and interaction pattern should be used?`\n+- `### 3.8 — What date validation is required?`\n+- `### 4.3 — Issue 3: Implement the deadline editor backing model`\n+- `## Cross-cutting concerns`\n+\n+The resolved design uses a serializable CDI `@Named @ViewScoped` editor. Research established that `CargoRoute` remains unchanged: load it through the facade and parse its date-only `MM/dd/yyyy` representation with a per-load `SimpleDateFormat`. Do not create a shared mutable formatter or access domain/repository objects. A malformed stored value must surface as an explicit application/view error. The selected date is required, but no minimum, future, old-deadline, or itinerary-date rule is added.\n+\n+## Branch and execution order\n+\n+Target `edburns/dd-3016202-cargotracker-devoxx-be-2026-add-feature-control` from remote `origin`. This is serial task 3 of 5. Tasks are assigned, completed, and merged in plan order. Do not begin until assigned and tasks 1-2 are merged; task 4 waits for this task's gates and merge.\n+\n+Preserve Java EE 7, `javax.*`, PrimeFaces 8, and the established facade boundary.\n+\n+## Implement\n+\n+Create `demo/src/main/java/org/eclipse/cargotracker/interfaces/booking/web/ChangeArrivalDeadlineDate.java` as a serializable CDI `@Named @ViewScoped` bean with:\n+\n+```java\n+private static final long serialVersionUID = 1L;\n+private String trackingId;\n+private CargoRoute cargo;\n+private Date arrivalDeadlineDate;\n+@Inject\n+private BookingServiceFacade bookingServiceFacade;\n+```\n+\n+Provide `getTrackingId()` / `setTrackingId(String)`, `getCargo()`, `getArrivalDeadlineDate()` / `setArrivalDeadlineDate(Date)`, `load()`, and `changeArrivalDeadline()`.\n+\n+`load()` must call `bookingServiceFacade.loadCargoForRouting(trackingId)`, retain the returned `CargoRoute`, parse `cargo.getArrivalDeadlineDate()` with a newly created `SimpleDateFormat(\"MM/dd/yyyy\")`, and retain the parsed date. Surface parse failure clearly using repository-consistent JSF/application error behavior; never swallow, print-only, or convert it to null.\n+\n+`changeArrivalDeadline()` must reject a null selection, call `bookingServiceFacade.changeDeadline(trackingId, arrivalDeadlineDate)`, and only after successful return call `PrimeFaces.current().dialog().closeDynamic(\"DONE\")`. It must leave the dialog open when delegation fails.\n+\n+If practical without a container, add a focused JUnit test with a hand-written facade fake proving correct load ID, `MM/dd/yyyy` conversion, submit ID/date delegation, malformed-date failure, and null-date rejection. Do not add a mocking framework.\n+\n+## Completion gates\n+\n+- The bean is serializable and has the specified CDI/JSF annotations and state.\n+- Its imports and behavior reference facade interfaces/DTOs only, not domain model or repository types.\n+- Focused tests, if feasible with existing seams, discriminate malformed/null failure from successful delegation and prove that successful submission delegates before closing.\n+- From `demo/`, with Java 17 configured, `./mvnw clean package -Popenliberty` succeeds.\n+- Prior application and facade gates remain passing.\n+\n+## Out of scope\n+\n+Do not create the dialog launcher or XHTML, change `CargoRoute`, add domain/repository access, introduce a DTO, add a chronological policy, use a shared `SimpleDateFormat`, or add a mocking dependency solely for this task.\n*** Add File: 1-arrival-deadline-control-remove-before-merge/prompts/shepherd-task-20-20261002-1434/issue-bodies/04-4.4-body.md\n+## Campaign context and required reading\n+\n+On the `edburns/dd-3016202-cargotracker-devoxx-be-2026-add-feature-control` branch, the directory `1-arrival-deadline-control-remove-before-merge` contains the plan (`add-change-arrival-deadline-feature-ignorance-reduction-plan.md`) and supporting resources (diagrams, decision records). Spike subdirectories are research artifacts — read the plan's Resolution sections for findings, not the spike source code.\n+\n+Read the entire plan before working. Then re-read these exact sections:\n+\n+- `### User-visible acceptance behavior`\n+- `### 3.6 — Which JSF bean scopes and interaction pattern should be used?`\n+- `### 3.7 — What is the dynamic-dialog contract?`\n+- `### 3.8 — What date validation is required?`\n+- `### 4.4 — Issue 4: Implement the PrimeFaces deadline dialog`\n+- `## Cross-cutting concerns`\n+\n+The resolved design mirrors the existing Change Destination dynamic-dialog lifecycle: a serializable session-scoped JSF managed launcher opens a CDI view-scoped editor. Research established the exact options: modal/draggable `true`, resizable `false`, width `410`, height `280`; one `trackingId` parameter; update closes with `\"DONE\"` and cancel with `\"\"`. On MyFaces, `<f:metadata>` must be directly under the root `<html>` before `<h:head>`/`<h:body>` or the view fails.\n+\n+## Branch and execution order\n+\n+Target `edburns/dd-3016202-cargotracker-devoxx-be-2026-add-feature-control` from remote `origin`. This is serial task 4 of 5. Tasks are assigned, completed, and merged in plan order. Do not begin until assigned and tasks 1-3 are merged; task 5 waits for this task's gates and merge.\n+\n+Preserve Java EE 7, `javax.*`, PrimeFaces 8, MyFaces metadata placement, and Open Liberty.\n+\n+## Implement\n+\n+Create:\n+\n+- `demo/src/main/java/org/eclipse/cargotracker/interfaces/booking/web/ChangeArrivalDeadlineDateDialog.java`\n+- `demo/src/main/webapp/admin/dialogs/changeArrivalDeadlineDate.xhtml`\n+\n+The serializable launcher uses `@ManagedBean(name = \"changeArrivalDeadlineDateDialog\") @SessionScoped` and implements `showDialog(String trackingId)`, `handleReturn(SelectEvent event)`, and `cancel()`. `showDialog` opens `/admin/dialogs/changeArrivalDeadlineDate.xhtml` with the exact options above and a `Map<String,List<String>>` containing only `trackingId`. `cancel()` closes with the empty string and never invokes the facade.\n+\n+The XHTML title is `Change Deadline`. Immediately beneath root `<html>` and before `<h:head>`, add:\n+\n+```xhtml\n+<f:metadata>\n+    <f:viewParam name=\"trackingId\"\n+                 value=\"#{changeArrivalDeadlineDate.trackingId}\"/>\n+    <f:viewAction action=\"#{changeArrivalDeadlineDate.load}\"/>\n+</f:metadata>\n+```\n+\n+The form displays labeled, read-only origin and destination using `cargo.originName` and `cargo.finalDestinationName`; a labeled required `p:datePicker` bound to `arrivalDeadlineDate` with validation feedback; Cancel invoking the launcher; and Update invoking the editor. Follow the existing destination dialog's return/refresh behavior without copying spike code.\n+\n+## Completion gates\n+\n+- From `demo/`, with Java 17 configured, `./mvnw clean package -Popenliberty liberty:run` starts successfully.\n+- A direct request to `/cargo-tracker/admin/dialogs/changeArrivalDeadlineDate.xhtml?trackingId=DEF789` returns HTTP 200, title **Change Deadline**, origin/destination, and the selected existing deadline.\n+- Direct runtime checks show no `TagException`, `Parent UIComponent`, `FacesException`, or server error.\n+- Cancel leaves the persisted deadline unchanged; Update changes it and closes successfully.\n+- Destination editing still works.\n+- The required-field path displays validation feedback and does not delegate or close.\n+- Liberty is stopped cleanly before completion.\n+\n+## Out of scope\n+\n+Do not add the dashboard command link, alter the application/facade contract, change tracking-ID routing or destination editing, introduce navigation to a full page or inline editing, add chronological date rules, or modify Liberty/MyFaces configuration.\n*** Add File: 1-arrival-deadline-control-remove-before-merge/prompts/shepherd-task-20-20261002-1434/issue-bodies/05-4.5-body.md\n+## Campaign context and required reading\n+\n+On the `edburns/dd-3016202-cargotracker-devoxx-be-2026-add-feature-control` branch, the directory `1-arrival-deadline-control-remove-before-merge` contains the plan (`add-change-arrival-deadline-feature-ignorance-reduction-plan.md`) and supporting resources (diagrams, decision records). Spike subdirectories are research artifacts — read the plan's Resolution sections for findings, not the spike source code.\n+\n+Read the entire plan before working. Then re-read these exact sections:\n+\n+- `### User-visible acceptance behavior`\n+- `### Domain acceptance behavior`\n+- `### Hard scope constraints`\n+- `### 3.1 — Which cargos expose the edit operation?`\n+- `### 3.6 — Which JSF bean scopes and interaction pattern should be used?`\n+- `### 3.7 — What is the dynamic-dialog contract?`\n+- `### 3.9 — How will the feature be tested on the prepared historical baseline?`\n+- `### 4.5 — Issue 5: Integrate deadline editing into the Administration dashboard`\n+- `## Phase 5 — Documentation and implementation handoff`\n+- `## Cross-cutting concerns`\n+\n+The resolved scope exposes editing only in the Not Routed Cargo table, while application/facade operations remain generally callable. Research established that the existing Destination cell is the interaction model: a command link opens the dynamic dialog, `dialogReturn` refreshes `tableNotRouted`, and existing routing/destination behavior remains unchanged. Acceptance compares the displayed calendar date and adds no timezone policy. The running sample is in-memory, so persistence lasts only for that application lifetime and resets after rebuild/restart.\n+\n+## Branch and execution order\n+\n+Target `edburns/dd-3016202-cargotracker-devoxx-be-2026-add-feature-control` from remote `origin`. This is serial task 5 of 5. Tasks are assigned, completed, and merged in plan order. Do not begin until assigned and tasks 1-4 are merged.\n+\n+Preserve Java EE 7, `javax.*`, Java 17/Open Liberty, Derby, PrimeFaces 8, and all compatibility fixes from the prepared baseline.\n+\n+## Implement\n+\n+Modify `demo/src/main/webapp/admin/tables/listNotRouted.xhtml`. In the existing Deadline column, replace plain text with a `p:commandLink` that:\n+\n+- calls `changeArrivalDeadlineDateDialog.showDialog(cargoNotRouted.trackingId)`;\n+- still displays `cargoNotRouted.arrivalDeadlineDate`;\n+- uses the neighboring Destination cell's Font Awesome edit-icon structure/style;\n+- has a stable ID such as `arrivalDeadlineToUpdate`;\n+- attaches `dialogReturn` to `changeArrivalDeadlineDateDialog.handleReturn`;\n+- updates `tableNotRouted`;\n+- exposes tooltip text exactly `Click to change cargo arrival deadline date.`\n+\n+Do not change destination editing, tracking-ID routing, or other Administration tables.\n+\n+Update `demo/README.md` only if it enumerates Administration capabilities; if so, add one concise sentence about changing an unrouted cargo's arrival deadline.\n+\n+## Completion gates\n+\n+- From `demo/`, with Java 17 configured, `./mvnw clean package -Popenliberty liberty:run` starts successfully and the home page returns HTTP 200.\n+- In a browser, locate `DEF789`, record its original deadline, verify the edit icon/tooltip, open the dialog, verify matching origin/destination, choose a visibly different date, update, and verify dialog close plus table refresh.\n+- Reload and confirm the chosen date persists; reopen and confirm initialization to that date; cancel and confirm no further change.\n+- Verify Destination editing still opens and selecting `DEF789` for routing still loads without an error page.\n+- Logs contain none of `<f:metadata> Parent UIComponent`, `TagException`, `VerifyError`, `FacesException`, `CWWKZ0002E`, `CWWKZ0003E`, recurring batch authorization failures, or new feature-attributable FFDC. Transient JMS activation-order warnings are acceptable only when all endpoints subsequently activate.\n+- `./mvnw -Popenliberty -Dtest=BookingServiceTest clean test` executes five ordered tests with zero failures, errors, or skips, and `./mvnw clean package -Popenliberty` succeeds.\n+- Record the exact run command, `DEF789`, before/after dates, and in-memory reset limitation in PR acceptance evidence.\n+- Confirm no Java EE namespace migration or regression to Open Liberty, Derby, Jackson, JSF metadata, batch authorization, REST, messaging, startup, destination editing, routing, or tracking behavior.\n+- Liberty is stopped cleanly.\n+\n+## Out of scope\n+\n+Do not expose editing in other cargo tables/pages, alter application/domain/facade/editor/dialog contracts, redesign Administration, add lifecycle/authorization/date/timezone policy, migrate frameworks/namespaces/runtime/database, or change unrelated behavior.\n*** End Patch\n"
````

</details>

```
Added 5 file(s): /Users/edburns/workareas/dd-3072797-tricked-out-cargotracker-run-04-shepherd-control/1-arrival-deadline-control-remove-before-merge/prompts/shepherd-task-20-20261002-1434/issue-bodies/01-4.1-body.md, /Users/edburns/workareas/dd-3072797-tricked-out-cargotracker-run-04-shepherd-control/1-arrival-deadline-control-remove-before-merge/prompts/shepherd-task-20-20261002-1434/issue-bodies/02-4.2-body.md, /Users/edburns/workareas/dd-3072797-tricked-out-cargotracker-run-04-shepherd-control/1-arrival-deadline-control-remove-before-merge/prompts/shepherd-task-20-20261002-1434/issue-bodies/03-4.3-body.md, /Users/edburns/workareas/dd-3072797-tricked-out-cargotracker-run-04-shepherd-control/1-arrival-deadline-control-remove-before-merge/prompts/shepherd-task-20-20261002-1434/issue-bodies/04-4.4-body.md, /Users/edburns/workareas/dd-3072797-tricked-out-cargotracker-run-04-shepherd-control/1-arrival-deadline-control-remove-before-merge/prompts/shepherd-task-20-20261002-1434/issue-bodies/05-4.5-body.md
```


---

<sub>1m 30s</sub>

### Copilot

All nine gating questions have substantive resolution blocks, and the traceability map now covers the five direct implementation headings. I’m validating the persisted Markdown from disk before initializing the one-shot creation ledger.

---

<sub>1m 32s</sub>

### `view`

**view the file at /Users/edburns/workareas/dd-3072797-tricked-out-cargotracker-run-04-shepherd-control/1-arrival-deadline-control-remove-before-merge/prompts/shepherd-task-20-20261002-1434/issue-bodies/01-4.1-body.md.**

/Users/edburns/workareas/dd-3072797-tricked-out-cargotracker-run-04-shepherd-control/1-arrival-deadline-control-remove-before-merge/prompts/shepherd-task-20-20261002-1434/issue-bodies/01-4.1-body.md

<details>
<summary>46 lines</summary>

```
## Campaign context and required reading

On the `edburns/dd-3016202-cargotracker-devoxx-be-2026-add-feature-control` branch, the directory `1-arrival-deadline-control-remove-before-merge` contains the plan (`add-change-arrival-deadline-feature-ignorance-reduction-plan.md`) and supporting resources (diagrams, decision records). Spike subdirectories are research artifacts — read the plan's Resolution sections for findings, not the spike source code.

Read the entire plan before working. Then re-read these exact sections:

- `### Domain acceptance behavior`
- `### Hard scope constraints`
- `### 3.2 — What is the exact domain mutation?`
- `### 3.3 — What should happen to an existing itinerary and delivery state?`
- `### 3.9 — How will the feature be tested on the prepared historical baseline?`
- `### 4.1 — Issue 1: Add the application-layer deadline change operation`
- `## Cross-cutting concerns`

The resolved design is to load the aggregate by `TrackingId`, replace its `RouteSpecification` with one containing the existing origin, existing destination, and supplied deadline, call `Cargo.specifyNewRoute(...)`, and store through `CargoRepository`. Research established that the existing itinerary must remain assigned and the domain model must recalculate delivery and routing state; in the established sequential test, the cargo remains `MISROUTED`. Do not add a mutable deadline setter or bypass the aggregate with a persistence update.

## Branch and execution order

Target `edburns/dd-3016202-cargotracker-devoxx-be-2026-add-feature-control` from remote `origin`. This is serial task 1 of 5. Tasks are assigned, completed, and merged in plan order. Do not begin until assigned; task 2 must not begin until this task's gates pass and its PR is merged.

Keep Java EE 7 and `javax.*`, preserve the historical Java source/target configuration, run on JDK 17 with Open Liberty, and implement from the prepared baseline without inspecting or copying feature-bearing commits.

## Implement

Modify only:

- `demo/src/main/java/org/eclipse/cargotracker/application/BookingService.java`
- `demo/src/main/java/org/eclipse/cargotracker/application/internal/DefaultBookingService.java`
- `demo/src/test/java/org/eclipse/cargotracker/application/BookingServiceTest.java`

Add `void changeDeadline(TrackingId trackingId, Date deadline)` to the application service. Its implementation must:

1. Load with `cargoRepository.find(trackingId)`.
2. Read the current destination from the current route specification.
3. Construct a replacement `RouteSpecification` from `cargo.getOrigin()`, the current destination, and the supplied deadline.
4. Apply it through `cargo.specifyNewRoute(...)`.
5. Persist with `cargoRepository.store(cargo)`.
6. Log the tracking ID and deadline at `Level.INFO` in the style of `changeDestination(...)`.

Write the test first. Append ordered `testChangeDeadline()` after `testChangeDestination()`. Advance the test's original deadline by one month, invoke the new operation, reload through the already injected `CargoRepository`, and assert:

- origin is Chicago and destination is Helsinki;
- the stored deadline is the requested calendar day;
- the assigned itinerary is unchanged;
- transport status is `NOT_RECEIVED`;
- last known location is `Location.UNKNOWN`;
- current voyage is `Voyage.NONE`;
- the cargo is not misdirected;
- ETA is `Delivery.ETA_UNKOWN`;
- next expected activity is `Delivery.NO_ACTIVITY`;
- cargo is not unloaded at destination;
- routing status is `MISROUTED`.

## Completion gates

- From `demo/`, with the repository-required Java 17 environment, `./mvnw -Popenliberty -Dtest=BookingServiceTest clean test` runs all five ordered methods with zero failures, errors, or skips.
- From `demo/`, `./mvnw clean package -Popenliberty` succeeds.
- The extensible integration-test CI gate passes without workflow changes.
- A focused diff confirms no facade, web, REST, Liberty, persistence configuration, or unrelated files changed.
- Existing origin, destination, itinerary, and derived delivery-state assertions discriminate aggregate replacement from a direct field/persistence update.

## Out of scope

Do not add facade, JSF, PrimeFaces, dialog, dashboard, REST, persistence configuration, or workflow changes. Do not add setters to domain value objects, clear or replace the itinerary, reroute cargo, or introduce a new date policy.
```

</details>


---

<sub>1m 32s</sub>

### `view`

**view the file at /Users/edburns/workareas/dd-3072797-tricked-out-cargotracker-run-04-shepherd-control/1-arrival-deadline-control-remove-before-merge/prompts/shepherd-task-20-20261002-1434/issue-bodies/02-4.2-body.md.**

/Users/edburns/workareas/dd-3072797-tricked-out-cargotracker-run-04-shepherd-control/1-arrival-deadline-control-remove-before-merge/prompts/shepherd-task-20-20261002-1434/issue-bodies/02-4.2-body.md

<details>
<summary>36 lines</summary>

````
## Campaign context and required reading

On the `edburns/dd-3016202-cargotracker-devoxx-be-2026-add-feature-control` branch, the directory `1-arrival-deadline-control-remove-before-merge` contains the plan (`add-change-arrival-deadline-feature-ignorance-reduction-plan.md`) and supporting resources (diagrams, decision records). Spike subdirectories are research artifacts — read the plan's Resolution sections for findings, not the spike source code.

Read the entire plan before working. Then re-read these exact sections:

- `### Hard scope constraints`
- `### 3.2 — What is the exact domain mutation?`
- `### 3.4 — What type crosses the facade boundary?`
- `### 3.9 — How will the feature be tested on the prepared historical baseline?`
- `### 4.2 — Issue 2: Expose deadline changes through the booking facade`
- `## Cross-cutting concerns`

The resolved facade contract is `void changeDeadline(String trackingId, Date arrivalDeadline)`. Research established that only the identifier is converted: construct an equivalent `TrackingId` and pass the same `java.util.Date` to the application service. The facade must preserve the web/domain boundary: no domain aggregate, repository, formatted string, command DTO, JSF type, or PrimeFaces type belongs in this operation.

## Branch and execution order

Target `edburns/dd-3016202-cargotracker-devoxx-be-2026-add-feature-control` from remote `origin`. This is serial task 2 of 5. Tasks are assigned, completed, and merged in plan order. Do not begin until assigned and task 1 is merged; task 3 must wait for this task's gates and merge.

Keep Java EE 7 and `javax.*`, preserve the historical Java source/target configuration, and build with JDK 17/Open Liberty.

## Implement

Modify:

- `demo/src/main/java/org/eclipse/cargotracker/interfaces/booking/facade/BookingServiceFacade.java`
- `demo/src/main/java/org/eclipse/cargotracker/interfaces/booking/facade/internal/DefaultBookingServiceFacade.java`

Add this facade API:

```java
void changeDeadline(String trackingId, Date arrivalDeadline);
```

Delegate exactly once:

```java
bookingService.changeDeadline(
        new TrackingId(trackingId),
        arrivalDeadline);
```

A focused container-free test may be added at `demo/src/test/java/org/eclipse/cargotracker/interfaces/booking/facade/internal/DefaultBookingServiceFacadeTest.java`. If practical with the existing design, use a hand-written `BookingService` fake/spy to prove equivalent tracking-ID conversion, preservation of the same date object/value, and exactly one delegation. Do not add a mocking dependency.

## Completion gates

- Existing facade consumers compile unchanged.
- Any focused test proves one delegation, equivalent `TrackingId`, and unchanged date value/reference without touching a repository.
- From `demo/`, with Java 17 configured, `./mvnw clean package -Popenliberty` succeeds.
- The task 1 `BookingServiceTest` remains unchanged and compiling.
- A focused diff confirms there is no aggregate loading, repository call, formatted-date parsing, DTO addition, JSF/PrimeFaces dependency, or unrelated change in this task.

## Out of scope

Do not implement the backing bean, dynamic dialog, XHTML, dashboard link, domain mutation, repository work, date formatting/parsing, or a new DTO. Do not add Mockito or another dependency solely for this test.
````

</details>


---

<sub>1m 32s</sub>

### `view`

**view the file at /Users/edburns/workareas/dd-3072797-tricked-out-cargotracker-run-04-shepherd-control/1-arrival-deadline-control-remove-before-merge/prompts/shepherd-task-20-20261002-1434/issue-bodies/03-4.3-body.md.**

/Users/edburns/workareas/dd-3072797-tricked-out-cargotracker-run-04-shepherd-control/1-arrival-deadline-control-remove-before-merge/prompts/shepherd-task-20-20261002-1434/issue-bodies/03-4.3-body.md

<details>
<summary>35 lines</summary>

````
## Campaign context and required reading

On the `edburns/dd-3016202-cargotracker-devoxx-be-2026-add-feature-control` branch, the directory `1-arrival-deadline-control-remove-before-merge` contains the plan (`add-change-arrival-deadline-feature-ignorance-reduction-plan.md`) and supporting resources (diagrams, decision records). Spike subdirectories are research artifacts — read the plan's Resolution sections for findings, not the spike source code.

Read the entire plan before working. Then re-read these exact sections:

- `### 3.4 — What type crosses the facade boundary?`
- `### 3.5 — How is the DTO's formatted deadline converted for editing?`
- `### 3.6 — Which JSF bean scopes and interaction pattern should be used?`
- `### 3.8 — What date validation is required?`
- `### 4.3 — Issue 3: Implement the deadline editor backing model`
- `## Cross-cutting concerns`

The resolved design uses a serializable CDI `@Named @ViewScoped` editor. Research established that `CargoRoute` remains unchanged: load it through the facade and parse its date-only `MM/dd/yyyy` representation with a per-load `SimpleDateFormat`. Do not create a shared mutable formatter or access domain/repository objects. A malformed stored value must surface as an explicit application/view error. The selected date is required, but no minimum, future, old-deadline, or itinerary-date rule is added.

## Branch and execution order

Target `edburns/dd-3016202-cargotracker-devoxx-be-2026-add-feature-control` from remote `origin`. This is serial task 3 of 5. Tasks are assigned, completed, and merged in plan order. Do not begin until assigned and tasks 1-2 are merged; task 4 waits for this task's gates and merge.

Preserve Java EE 7, `javax.*`, PrimeFaces 8, and the established facade boundary.

## Implement

Create `demo/src/main/java/org/eclipse/cargotracker/interfaces/booking/web/ChangeArrivalDeadlineDate.java` as a serializable CDI `@Named @ViewScoped` bean with:

```java
private static final long serialVersionUID = 1L;
private String trackingId;
private CargoRoute cargo;
private Date arrivalDeadlineDate;
@Inject
private BookingServiceFacade bookingServiceFacade;
```

Provide `getTrackingId()` / `setTrackingId(String)`, `getCargo()`, `getArrivalDeadlineDate()` / `setArrivalDeadlineDate(Date)`, `load()`, and `changeArrivalDeadline()`.

`load()` must call `bookingServiceFacade.loadCargoForRouting(trackingId)`, retain the returned `CargoRoute`, parse `cargo.getArrivalDeadlineDate()` with a newly created `SimpleDateFormat("MM/dd/yyyy")`, and retain the parsed date. Surface parse failure clearly using repository-consistent JSF/application error behavior; never swallow, print-only, or convert it to null.

`changeArrivalDeadline()` must reject a null selection, call `bookingServiceFacade.changeDeadline(trackingId, arrivalDeadlineDate)`, and only after successful return call `PrimeFaces.current().dialog().closeDynamic("DONE")`. It must leave the dialog open when delegation fails.

If practical without a container, add a focused JUnit test with a hand-written facade fake proving correct load ID, `MM/dd/yyyy` conversion, submit ID/date delegation, malformed-date failure, and null-date rejection. Do not add a mocking framework.

## Completion gates

- The bean is serializable and has the specified CDI/JSF annotations and state.
- Its imports and behavior reference facade interfaces/DTOs only, not domain model or repository types.
- Focused tests, if feasible with existing seams, discriminate malformed/null failure from successful delegation and prove that successful submission delegates before closing.
- From `demo/`, with Java 17 configured, `./mvnw clean package -Popenliberty` succeeds.
- Prior application and facade gates remain passing.

## Out of scope

Do not create the dialog launcher or XHTML, change `CargoRoute`, add domain/repository access, introduce a DTO, add a chronological policy, use a shared `SimpleDateFormat`, or add a mocking dependency solely for this task.
````

</details>


---

<sub>1m 32s</sub>

### `view`

**view the file at /Users/edburns/workareas/dd-3072797-tricked-out-cargotracker-run-04-shepherd-control/1-arrival-deadline-control-remove-before-merge/prompts/shepherd-task-20-20261002-1434/issue-bodies/04-4.4-body.md.**

/Users/edburns/workareas/dd-3072797-tricked-out-cargotracker-run-04-shepherd-control/1-arrival-deadline-control-remove-before-merge/prompts/shepherd-task-20-20261002-1434/issue-bodies/04-4.4-body.md

<details>
<summary>37 lines</summary>

````
## Campaign context and required reading

On the `edburns/dd-3016202-cargotracker-devoxx-be-2026-add-feature-control` branch, the directory `1-arrival-deadline-control-remove-before-merge` contains the plan (`add-change-arrival-deadline-feature-ignorance-reduction-plan.md`) and supporting resources (diagrams, decision records). Spike subdirectories are research artifacts — read the plan's Resolution sections for findings, not the spike source code.

Read the entire plan before working. Then re-read these exact sections:

- `### User-visible acceptance behavior`
- `### 3.6 — Which JSF bean scopes and interaction pattern should be used?`
- `### 3.7 — What is the dynamic-dialog contract?`
- `### 3.8 — What date validation is required?`
- `### 4.4 — Issue 4: Implement the PrimeFaces deadline dialog`
- `## Cross-cutting concerns`

The resolved design mirrors the existing Change Destination dynamic-dialog lifecycle: a serializable session-scoped JSF managed launcher opens a CDI view-scoped editor. Research established the exact options: modal/draggable `true`, resizable `false`, width `410`, height `280`; one `trackingId` parameter; update closes with `"DONE"` and cancel with `""`. On MyFaces, `<f:metadata>` must be directly under the root `<html>` before `<h:head>`/`<h:body>` or the view fails.

## Branch and execution order

Target `edburns/dd-3016202-cargotracker-devoxx-be-2026-add-feature-control` from remote `origin`. This is serial task 4 of 5. Tasks are assigned, completed, and merged in plan order. Do not begin until assigned and tasks 1-3 are merged; task 5 waits for this task's gates and merge.

Preserve Java EE 7, `javax.*`, PrimeFaces 8, MyFaces metadata placement, and Open Liberty.

## Implement

Create:

- `demo/src/main/java/org/eclipse/cargotracker/interfaces/booking/web/ChangeArrivalDeadlineDateDialog.java`
- `demo/src/main/webapp/admin/dialogs/changeArrivalDeadlineDate.xhtml`

The serializable launcher uses `@ManagedBean(name = "changeArrivalDeadlineDateDialog") @SessionScoped` and implements `showDialog(String trackingId)`, `handleReturn(SelectEvent event)`, and `cancel()`. `showDialog` opens `/admin/dialogs/changeArrivalDeadlineDate.xhtml` with the exact options above and a `Map<String,List<String>>` containing only `trackingId`. `cancel()` closes with the empty string and never invokes the facade.

The XHTML title is `Change Deadline`. Immediately beneath root `<html>` and before `<h:head>`, add:

```xhtml
<f:metadata>
    <f:viewParam name="trackingId"
                 value="#{changeArrivalDeadlineDate.trackingId}"/>
    <f:viewAction action="#{changeArrivalDeadlineDate.load}"/>
</f:metadata>
```

The form displays labeled, read-only origin and destination using `cargo.originName` and `cargo.finalDestinationName`; a labeled required `p:datePicker` bound to `arrivalDeadlineDate` with validation feedback; Cancel invoking the launcher; and Update invoking the editor. Follow the existing destination dialog's return/refresh behavior without copying spike code.

## Completion gates

- From `demo/`, with Java 17 configured, `./mvnw clean package -Popenliberty liberty:run` starts successfully.
- A direct request to `/cargo-tracker/admin/dialogs/changeArrivalDeadlineDate.xhtml?trackingId=DEF789` returns HTTP 200, title **Change Deadline**, origin/destination, and the selected existing deadline.
- Direct runtime checks show no `TagException`, `Parent UIComponent`, `FacesException`, or server error.
- Cancel leaves the persisted deadline unchanged; Update changes it and closes successfully.
- Destination editing still works.
- The required-field path displays validation feedback and does not delegate or close.
- Liberty is stopped cleanly before completion.

## Out of scope

Do not add the dashboard command link, alter the application/facade contract, change tracking-ID routing or destination editing, introduce navigation to a full page or inline editing, add chronological date rules, or modify Liberty/MyFaces configuration.
````

</details>


---

<sub>1m 32s</sub>

### `view`

**view the file at /Users/edburns/workareas/dd-3072797-tricked-out-cargotracker-run-04-shepherd-control/1-arrival-deadline-control-remove-before-merge/prompts/shepherd-task-20-20261002-1434/issue-bodies/05-4.5-body.md.**

/Users/edburns/workareas/dd-3072797-tricked-out-cargotracker-run-04-shepherd-control/1-arrival-deadline-control-remove-before-merge/prompts/shepherd-task-20-20261002-1434/issue-bodies/05-4.5-body.md

<details>
<summary>40 lines</summary>

```
## Campaign context and required reading

On the `edburns/dd-3016202-cargotracker-devoxx-be-2026-add-feature-control` branch, the directory `1-arrival-deadline-control-remove-before-merge` contains the plan (`add-change-arrival-deadline-feature-ignorance-reduction-plan.md`) and supporting resources (diagrams, decision records). Spike subdirectories are research artifacts — read the plan's Resolution sections for findings, not the spike source code.

Read the entire plan before working. Then re-read these exact sections:

- `### User-visible acceptance behavior`
- `### Domain acceptance behavior`
- `### Hard scope constraints`
- `### 3.1 — Which cargos expose the edit operation?`
- `### 3.6 — Which JSF bean scopes and interaction pattern should be used?`
- `### 3.7 — What is the dynamic-dialog contract?`
- `### 3.9 — How will the feature be tested on the prepared historical baseline?`
- `### 4.5 — Issue 5: Integrate deadline editing into the Administration dashboard`
- `## Phase 5 — Documentation and implementation handoff`
- `## Cross-cutting concerns`

The resolved scope exposes editing only in the Not Routed Cargo table, while application/facade operations remain generally callable. Research established that the existing Destination cell is the interaction model: a command link opens the dynamic dialog, `dialogReturn` refreshes `tableNotRouted`, and existing routing/destination behavior remains unchanged. Acceptance compares the displayed calendar date and adds no timezone policy. The running sample is in-memory, so persistence lasts only for that application lifetime and resets after rebuild/restart.

## Branch and execution order

Target `edburns/dd-3016202-cargotracker-devoxx-be-2026-add-feature-control` from remote `origin`. This is serial task 5 of 5. Tasks are assigned, completed, and merged in plan order. Do not begin until assigned and tasks 1-4 are merged.

Preserve Java EE 7, `javax.*`, Java 17/Open Liberty, Derby, PrimeFaces 8, and all compatibility fixes from the prepared baseline.

## Implement

Modify `demo/src/main/webapp/admin/tables/listNotRouted.xhtml`. In the existing Deadline column, replace plain text with a `p:commandLink` that:

- calls `changeArrivalDeadlineDateDialog.showDialog(cargoNotRouted.trackingId)`;
- still displays `cargoNotRouted.arrivalDeadlineDate`;
- uses the neighboring Destination cell's Font Awesome edit-icon structure/style;
- has a stable ID such as `arrivalDeadlineToUpdate`;
- attaches `dialogReturn` to `changeArrivalDeadlineDateDialog.handleReturn`;
- updates `tableNotRouted`;
- exposes tooltip text exactly `Click to change cargo arrival deadline date.`

Do not change destination editing, tracking-ID routing, or other Administration tables.

Update `demo/README.md` only if it enumerates Administration capabilities; if so, add one concise sentence about changing an unrouted cargo's arrival deadline.

## Completion gates

- From `demo/`, with Java 17 configured, `./mvnw clean package -Popenliberty liberty:run` starts successfully and the home page returns HTTP 200.
- In a browser, locate `DEF789`, record its original deadline, verify the edit icon/tooltip, open the dialog, verify matching origin/destination, choose a visibly different date, update, and verify dialog close plus table refresh.
- Reload and confirm the chosen date persists; reopen and confirm initialization to that date; cancel and confirm no further change.
- Verify Destination editing still opens and selecting `DEF789` for routing still loads without an error page.
- Logs contain none of `<f:metadata> Parent UIComponent`, `TagException`, `VerifyError`, `FacesException`, `CWWKZ0002E`, `CWWKZ0003E`, recurring batch authorization failures, or new feature-attributable FFDC. Transient JMS activation-order warnings are acceptable only when all endpoints subsequently activate.
- `./mvnw -Popenliberty -Dtest=BookingServiceTest clean test` executes five ordered tests with zero failures, errors, or skips, and `./mvnw clean package -Popenliberty` succeeds.
- Record the exact run command, `DEF789`, before/after dates, and in-memory reset limitation in PR acceptance evidence.
- Confirm no Java EE namespace migration or regression to Open Liberty, Derby, Jackson, JSF metadata, batch authorization, REST, messaging, startup, destination editing, routing, or tracking behavior.
- Liberty is stopped cleanly.

## Out of scope

Do not expose editing in other cargo tables/pages, alter application/domain/facade/editor/dialog contracts, redesign Administration, add lifecycle/authorization/date/timezone policy, migrate frameworks/namespaces/runtime/database, or change unrelated behavior.
```

</details>


---

<sub>1m 32s</sub>

### `bash`

**Validate persisted issue drafts**

$ '/Users/edburns/.copilot/plugins/shepherd-task/scripts/validate-stage20-drafts.sh' '1-arrival-deadline-control-remove-before-merge/prompts/shepherd-task-20-20261002-1434/issue-bodies' 5 off

```

<shellId: 4 completed with exit code 0>
```


---

<sub>1m 44s</sub>

### Copilot

The persisted drafts pass the supplied validator. I’m beginning the one-shot GitHub mutation with atomic state files, per-issue body verification before linkage, and immediate ledger persistence after every state transition.

---

<sub>2m 2s</sub>

### `apply_patch`

<details>
<summary>Arguments</summary>

```json
"*** Begin Patch\n*** Add File: 1-arrival-deadline-control-remove-before-merge/prompts/shepherd-task-20-20261002-1434/execute-stage20.sh\n+#!/usr/bin/env bash\n+set -Eeuo pipefail\n+\n+REPO='edburns/dd-3072797-tricked-out-cargotracker-run-04'\n+PARENT_ISSUE=1\n+LOG_DIRECTORY='/Users/edburns/workareas/dd-3072797-tricked-out-cargotracker-run-04-shepherd-control/1-arrival-deadline-control-remove-before-merge/prompts/shepherd-task-20-20261002-1434'\n+BODY_DIRECTORY=\"$LOG_DIRECTORY/issue-bodies\"\n+LEDGER=\"$LOG_DIRECTORY/creation-ledger.json\"\n+RESULT=\"$LOG_DIRECTORY/stage-20-result.json\"\n+BODY_VERIFIER='/Users/edburns/.copilot/plugins/shepherd-task/scripts/verify-github-issue-body.sh'\n+CHILD_VERIFIER='/Users/edburns/.copilot/plugins/shepherd-task/scripts/verify-stage20-child-links.sh'\n+PRE_CHILDREN=\"$LOG_DIRECTORY/pre-creation-children.json\"\n+FINAL_CHILDREN=\"$LOG_DIRECTORY/final-children.json\"\n+CURRENT_OPERATION='initialization'\n+FAILURE_ACTIVE=0\n+\n+atomic_write() {\n+  local path=\"$1\" content=\"$2\" temporary\n+  temporary=\"$(mktemp \"${path}.tmp.XXXXXX\")\"\n+  printf '%s\\n' \"$content\" >\"$temporary\"\n+  mv \"$temporary\" \"$path\"\n+}\n+\n+update_ledger_flag() {\n+  local number=\"$1\" field=\"$2\" value=\"$3\" updated\n+  updated=\"$(\n+    jq \\\n+      --argjson number \"$number\" \\\n+      --arg field \"$field\" \\\n+      --argjson value \"$value\" \\\n+      'map(if .number == $number then .[$field] = $value else . end)' \\\n+      \"$LEDGER\"\n+  )\" || return 1\n+  atomic_write \"$LEDGER\" \"$updated\"\n+}\n+\n+reconcile_and_fail() {\n+  local exit_code=\"$1\" error_message=\"$2\" children_output normalized updated result_json\n+  [[ \"$FAILURE_ACTIVE\" -eq 0 ]] || exit \"$exit_code\"\n+  FAILURE_ACTIVE=1\n+  trap - ERR\n+  set +e\n+\n+  children_output=\"$(gh api \"repos/$REPO/issues/$PARENT_ISSUE/sub_issues\" --paginate --slurp 2>&1)\"\n+  if [[ $? -eq 0 ]]; then\n+    normalized=\"$(printf '%s' \"$children_output\" | jq 'if length == 0 then [] elif all(.[]; type == \"array\") then add else . end' 2>/dev/null)\"\n+    if [[ $? -eq 0 ]]; then\n+      atomic_write \"$LOG_DIRECTORY/failure-reconciliation-children.json\" \"$normalized\"\n+      updated=\"$(\n+        jq \\\n+          --slurpfile children \"$LOG_DIRECTORY/failure-reconciliation-children.json\" \\\n+          'map(.linked = ((.id as $id | $children[0] | map(.id) | index($id)) != null))' \\\n+          \"$LEDGER\"\n+      )\"\n+      [[ $? -ne 0 ]] || atomic_write \"$LEDGER\" \"$updated\"\n+    fi\n+  fi\n+\n+  result_json=\"$(\n+    jq -n \\\n+      --arg error \"$error_message\" \\\n+      '{\n+        schemaVersion: 1,\n+        status: \"failed\",\n+        ledgerFile: \"creation-ledger.json\",\n+        operationError: $error\n+      }'\n+  )\"\n+  atomic_write \"$RESULT\" \"$result_json\"\n+\n+  printf 'FAILED OPERATION: %s\\n' \"$error_message\" >&2\n+  if [[ \"$(jq 'length' \"$LEDGER\" 2>/dev/null)\" == \"0\" ]]; then\n+    printf 'No issues were created; no cleanup is required.\\n' >&2\n+  else\n+    jq -r '.[] | \"Issue #\\(.number) | \\(.title) | \\(.url) | \\(.bodyFile) | body_verified=\\(.body_verified) | linked=\\(.linked)\"' \"$LEDGER\" >&2\n+    jq -r --arg repo \"$REPO\" '.[] | \"gh issue delete \\(.number) --repo \\\"\\($repo)\\\" --yes\"' \"$LEDGER\" >&2\n+    printf 'The operation did not complete. No automatic rollback was performed. Delete every issue in the ledger before invoking stage 20 again.\\n' >&2\n+  fi\n+  exit \"$exit_code\"\n+}\n+\n+on_error() {\n+  local exit_code=\"$?\"\n+  reconcile_and_fail \"$exit_code\" \"$CURRENT_OPERATION failed with exit code $exit_code\"\n+}\n+trap on_error ERR\n+\n+subsections=(\n+  '4.1 — Issue 1: Add the application-layer deadline change operation'\n+  '4.2 — Issue 2: Expose deadline changes through the booking facade'\n+  '4.3 — Issue 3: Implement the deadline editor backing model'\n+  '4.4 — Issue 4: Implement the PrimeFaces deadline dialog'\n+  '4.5 — Issue 5: Integrate deadline editing into the Administration dashboard'\n+)\n+titles=(\n+  '4.1 — Add the application-layer deadline change operation'\n+  '4.2 — Expose deadline changes through the booking facade'\n+  '4.3 — Implement the deadline editor backing model'\n+  '4.4 — Implement the PrimeFaces deadline dialog'\n+  '4.5 — Integrate deadline editing into the Administration dashboard'\n+)\n+body_files=(\n+  \"$BODY_DIRECTORY/01-4.1-body.md\"\n+  \"$BODY_DIRECTORY/02-4.2-body.md\"\n+  \"$BODY_DIRECTORY/03-4.3-body.md\"\n+  \"$BODY_DIRECTORY/04-4.4-body.md\"\n+  \"$BODY_DIRECTORY/05-4.5-body.md\"\n+)\n+\n+atomic_write \"$LEDGER\" '[]'\n+atomic_write \"$RESULT\" '{\n+  \"schemaVersion\": 1,\n+  \"status\": \"in_progress\",\n+  \"ledgerFile\": \"creation-ledger.json\",\n+  \"operationError\": null\n+}'\n+\n+for index in \"${!subsections[@]}\"; do\n+  CURRENT_OPERATION=\"creating ${subsections[$index]}\"\n+  issue_json=\"$(\n+    gh api \"repos/$REPO/issues\" \\\n+      -X POST \\\n+      -f title=\"${titles[$index]}\" \\\n+      -F \"body=@${body_files[$index]}\" \\\n+      --jq '{id,number,node_id,html_url,title}'\n+  )\"\n+  issue_id=\"$(jq -er '.id' <<<\"$issue_json\")\"\n+  issue_number=\"$(jq -er '.number' <<<\"$issue_json\")\"\n+  issue_url=\"$(jq -er '.html_url' <<<\"$issue_json\")\"\n+  issue_title=\"$(jq -er '.title' <<<\"$issue_json\")\"\n+  body_relative=\"issue-bodies/$(basename \"${body_files[$index]}\")\"\n+\n+  updated=\"$(\n+    jq \\\n+      --arg subsection \"${subsections[$index]}\" \\\n+      --arg body_file \"$body_relative\" \\\n+      --argjson id \"$issue_id\" \\\n+      --argjson number \"$issue_number\" \\\n+      --arg title \"$issue_title\" \\\n+      --arg url \"$issue_url\" \\\n+      '. + [{\n+        implementationSubsection: $subsection,\n+        bodyFile: $body_file,\n+        id: $id,\n+        number: $number,\n+        title: $title,\n+        url: $url,\n+        body_verified: false,\n+        linked: false\n+      }]' \\\n+      \"$LEDGER\"\n+  )\"\n+  atomic_write \"$LEDGER\" \"$updated\"\n+\n+  CURRENT_OPERATION=\"verifying body for issue #$issue_number\"\n+  issue_verification=\"$(\n+    \"$BODY_VERIFIER\" \\\n+      \"$REPO\" \\\n+      \"$issue_number\" \\\n+      \"${body_files[$index]}\" \\\n+      6 \\\n+      5 \\\n+      \"$LOG_DIRECTORY/issue-$issue_number-body-verification-failure.json\"\n+  )\"\n+  jq -e --argjson number \"$issue_number\" '.number == $number' <<<\"$issue_verification\" >/dev/null\n+  update_ledger_flag \"$issue_number\" body_verified true\n+\n+  CURRENT_OPERATION=\"linking issue #$issue_number to parent #$PARENT_ISSUE\"\n+  linked=false\n+  link_error=''\n+  for attempt in 1 2 3; do\n+    if link_output=\"$(\n+      printf '{\"sub_issue_id\": %s}' \"$issue_id\" |\n+        gh api \"repos/$REPO/issues/$PARENT_ISSUE/sub_issues\" -X POST --input - 2>&1\n+    )\"; then\n+      linked=true\n+      break\n+    fi\n+    link_error=\"$link_output\"\n+    sleep 2\n+  done\n+  if [[ \"$linked\" != true ]]; then\n+    reconcile_and_fail 1 \"linking issue #$issue_number failed after 3 attempts: $link_error\"\n+  fi\n+  update_ledger_flag \"$issue_number\" linked true\n+done\n+\n+CURRENT_OPERATION='capturing final child snapshot'\n+final_output=\"$(gh api \"repos/$REPO/issues/$PARENT_ISSUE/sub_issues\" --paginate --slurp)\"\n+normalized_final=\"$(printf '%s' \"$final_output\" | jq 'if length == 0 then [] elif all(.[]; type == \"array\") then add else . end')\"\n+atomic_write \"$FINAL_CHILDREN\" \"$normalized_final\"\n+\n+CURRENT_OPERATION='verifying child linkage and order'\n+\"$CHILD_VERIFIER\" \"$PRE_CHILDREN\" \"$FINAL_CHILDREN\" \"$LEDGER\"\n+\n+CURRENT_OPERATION='verifying final issue bodies and states'\n+while IFS=$'\\t' read -r issue_number body_relative; do\n+  final_issue=\"$(\n+    \"$BODY_VERIFIER\" \\\n+      \"$REPO\" \\\n+      \"$issue_number\" \\\n+      \"$LOG_DIRECTORY/$body_relative\" \\\n+      6 \\\n+      5 \\\n+      \"$LOG_DIRECTORY/issue-$issue_number-final-body-verification-failure.json\"\n+  )\"\n+  jq -e '.state == \"open\" and (.assignees | length) == 0' <<<\"$final_issue\" >/dev/null\n+done < <(jq -r '.[] | [.number, .bodyFile] | @tsv' \"$LEDGER\")\n+\n+CURRENT_OPERATION='completing stage result'\n+atomic_write \"$RESULT\" '{\n+  \"schemaVersion\": 1,\n+  \"status\": \"complete\",\n+  \"ledgerFile\": \"creation-ledger.json\",\n+  \"operationError\": null\n+}'\n+\n+jq -n \\\n+  --slurpfile ledger \"$LEDGER\" \\\n+  --slurpfile result \"$RESULT\" \\\n+  '{result: $result[0], ledger: $ledger[0]}'\n*** End Patch\n"
```

</details>

```
Added 1 file(s): /Users/edburns/workareas/dd-3072797-tricked-out-cargotracker-run-04-shepherd-control/1-arrival-deadline-control-remove-before-merge/prompts/shepherd-task-20-20261002-1434/execute-stage20.sh
```


---

<sub>2m 11s</sub>

### `sql`

**Advance stage tracking**

<details>
<summary>Arguments</summary>

```json
{
  "description": "Advance stage tracking",
  "query": "UPDATE todos SET status='done' WHERE id IN ('validate-stage20','draft-stage20'); UPDATE todos SET status='in_progress' WHERE id='create-stage20'"
}
```

</details>

<details>
<summary>5 lines</summary>

```
Executed 2 statement(s):

1. UPDATE
   2 row(s) updated.

2. UPDATE
   1 row(s) updated.
```

</details>


---

<sub>2m 29s</sub>

### `bash`

**Create link and verify issues**

$ bash '1-arrival-deadline-control-remove-before-merge/prompts/shepherd-task-20-20261002-1434/execute-stage20.sh'

<details>
<summary>73 lines</summary>

```
{
  "baselineCount": 0,
  "ledgerCount": 5,
  "finalCount": 5,
  "newIssueIds": [
    5681733812,
    5681734265,
    5681734606,
    5681735022,
    5681735375
  ]
}
{
  "result": {
    "schemaVersion": 1,
    "status": "complete",
    "ledgerFile": "creation-ledger.json",
    "operationError": null
  },
  "ledger": [
    {
      "implementationSubsection": "4.1 — Issue 1: Add the application-layer deadline change operation",
      "bodyFile": "issue-bodies/01-4.1-body.md",
      "id": 5681733812,
      "number": 2,
      "title": "4.1 — Add the application-layer deadline change operation",
      "url": "https://github.com/edburns/dd-3072797-tricked-out-cargotracker-run-04/issues/2",
      "body_verified": true,
      "linked": true
    },
    {
      "implementationSubsection": "4.2 — Issue 2: Expose deadline changes through the booking facade",
      "bodyFile": "issue-bodies/02-4.2-body.md",
      "id": 5681734265,
      "number": 3,
      "title": "4.2 — Expose deadline changes through the booking facade",
      "url": "https://github.com/edburns/dd-3072797-tricked-out-cargotracker-run-04/issues/3",
      "body_verified": true,
      "linked": true
    },
    {
      "implementationSubsection": "4.3 — Issue 3: Implement the deadline editor backing model",
      "bodyFile": "issue-bodies/03-4.3-body.md",
      "id": 5681734606,
      "number": 4,
      "title": "4.3 — Implement the deadline editor backing model",
      "url": "https://github.com/edburns/dd-3072797-tricked-out-cargotracker-run-04/issues/4",
      "body_verified": true,
      "linked": true
    },
    {
      "implementationSubsection": "4.4 — Issue 4: Implement the PrimeFaces deadline dialog",
      "bodyFile": "issue-bodies/04-4.4-body.md",
      "id": 5681735022,
      "number": 5,
      "title": "4.4 — Implement the PrimeFaces deadline dialog",
      "url": "https://github.com/edburns/dd-3072797-tricked-out-cargotracker-run-04/issues/5",
      "body_verified": true,
      "linked": true
    },
    {
      "implementationSubsection": "4.5 — Issue 5: Integrate deadline editing into the Administration dashboard",
      "bodyFile": "issue-bodies/05-4.5-body.md",
      "id": 5681735375,
      "number": 6,
      "title": "4.5 — Integrate deadline editing into the Administration dashboard",
      "url": "https://github.com/edburns/dd-3072797-tricked-out-cargotracker-run-04/issues/6",
      "body_verified": true,
      "linked": true
    }
  ]
}
<shellId: 5 completed with exit code 0>
```

</details>


---

<sub>2m 33s</sub>

### Copilot

All five issues were created, body-verified, linked exactly once, and ordered correctly under #1. I’m finalizing the persistent stage record and ordered handoff.

---

<sub>2m 34s</sub>

### `sql`

**Complete stage tracking**

<details>
<summary>Arguments</summary>

```json
{
  "description": "Complete stage tracking",
  "query": "UPDATE todos SET status='done' WHERE id IN ('create-stage20','verify-stage20'); SELECT id,status FROM todos ORDER BY created_at,id"
}
```

</details>

<details>
<summary>11 lines</summary>

```
Executed 2 statement(s):

1. UPDATE
   2 row(s) updated.

2. SELECT
   4 row(s) returned:
   
   | id | status |
   | --- | --- |
   | create-stage20 | done |
   | draft-stage20 | done |
   | validate-stage20 | done |
   | verify-stage20 | done |
```

</details>


---

<sub>2m 34s</sub>

### `view`

**view the file at /Users/edburns/workareas/dd-3072797-tricked-out-cargotracker-run-04-shepherd-control/1-arrival-deadline-control-remove-before-merge/prompts/shepherd-task-20-20261002-1434/stage-20-result.json.**

/Users/edburns/workareas/dd-3072797-tricked-out-cargotracker-run-04-shepherd-control/1-arrival-deadline-control-remove-before-merge/prompts/shepherd-task-20-20261002-1434/stage-20-result.json

<details>
<summary>6 lines</summary>

```
{
  "schemaVersion": 1,
  "status": "complete",
  "ledgerFile": "creation-ledger.json",
  "operationError": null
}
```

</details>


---

<sub>2m 34s</sub>

### `view`

**view the file at /Users/edburns/workareas/dd-3072797-tricked-out-cargotracker-run-04-shepherd-control/1-arrival-deadline-control-remove-before-merge/prompts/shepherd-task-20-20261002-1434/creation-ledger.json.**

/Users/edburns/workareas/dd-3072797-tricked-out-cargotracker-run-04-shepherd-control/1-arrival-deadline-control-remove-before-merge/prompts/shepherd-task-20-20261002-1434/creation-ledger.json

<details>
<summary>52 lines</summary>

```
[
  {
    "implementationSubsection": "4.1 — Issue 1: Add the application-layer deadline change operation",
    "bodyFile": "issue-bodies/01-4.1-body.md",
    "id": 5681733812,
    "number": 2,
    "title": "4.1 — Add the application-layer deadline change operation",
    "url": "https://github.com/edburns/dd-3072797-tricked-out-cargotracker-run-04/issues/2",
    "body_verified": true,
    "linked": true
  },
  {
    "implementationSubsection": "4.2 — Issue 2: Expose deadline changes through the booking facade",
    "bodyFile": "issue-bodies/02-4.2-body.md",
    "id": 5681734265,
    "number": 3,
    "title": "4.2 — Expose deadline changes through the booking facade",
    "url": "https://github.com/edburns/dd-3072797-tricked-out-cargotracker-run-04/issues/3",
    "body_verified": true,
    "linked": true
  },
  {
    "implementationSubsection": "4.3 — Issue 3: Implement the deadline editor backing model",
    "bodyFile": "issue-bodies/03-4.3-body.md",
    "id": 5681734606,
    "number": 4,
    "title": "4.3 — Implement the deadline editor backing model",
    "url": "https://github.com/edburns/dd-3072797-tricked-out-cargotracker-run-04/issues/4",
    "body_verified": true,
    "linked": true
  },
  {
    "implementationSubsection": "4.4 — Issue 4: Implement the PrimeFaces deadline dialog",
    "bodyFile": "issue-bodies/04-4.4-body.md",
    "id": 5681735022,
    "number": 5,
    "title": "4.4 — Implement the PrimeFaces deadline dialog",
    "url": "https://github.com/edburns/dd-3072797-tricked-out-cargotracker-run-04/issues/5",
    "body_verified": true,
    "linked": true
  },
  {
    "implementationSubsection": "4.5 — Issue 5: Integrate deadline editing into the Administration dashboard",
    "bodyFile": "issue-bodies/05-4.5-body.md",
    "id": 5681735375,
    "number": 6,
    "title": "4.5 — Integrate deadline editing into the Administration dashboard",
    "url": "https://github.com/edburns/dd-3072797-tricked-out-cargotracker-run-04/issues/6",
    "body_verified": true,
    "linked": true
  }
]
```

</details>


---

<sub>2m 37s</sub>

### Copilot

Created and verified five ordered child issues under #1. All are open, unassigned, body-verified, and linked exactly once **without an issue type**.

| Implementation subsection | Issue | Title |
|---|---:|---|
| 4.1 | [#2](https://github.com/edburns/dd-3072797-tricked-out-cargotracker-run-04/issues/2) | Add the application-layer deadline change operation |
| 4.2 | [#3](https://github.com/edburns/dd-3072797-tricked-out-cargotracker-run-04/issues/3) | Expose deadline changes through the booking facade |
| 4.3 | [#4](https://github.com/edburns/dd-3072797-tricked-out-cargotracker-run-04/issues/4) | Implement the deadline editor backing model |
| 4.4 | [#5](https://github.com/edburns/dd-3072797-tricked-out-cargotracker-run-04/issues/5) | Implement the PrimeFaces deadline dialog |
| 4.5 | [#6](https://github.com/edburns/dd-3072797-tricked-out-cargotracker-run-04/issues/6) | Integrate deadline editing into the Administration dashboard |

**Ordered issue numbers for `shepherd-task-25-given-list`:** `2,3,4,5,6`

**Suggested invocation:** Invoke `shepherd-task-25-given-list` for repository `edburns/dd-3072797-tricked-out-cargotracker-run-04`, base branch `edburns/dd-3016202-cargotracker-devoxx-be-2026-add-feature-control`, ordered issues `2,3,4,5,6`, and plan directory `1-arrival-deadline-control-remove-before-merge`. Campaign ID: `26cfa4aa-1dc7-46f3-a995-310bc2c5f60b`.

---

<sub>Generated by [GitHub Copilot CLI](https://github.com/features/copilot/cli)</sub>
