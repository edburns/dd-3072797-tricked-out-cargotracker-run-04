# Unclassified Campaign Evidence

- **Arm:** `treatment`
- **Evaluator:** `0.4.4` at `c2051a95cd589e9c594a2648558ae938f04c1038`

## event-0044 — task #2, stage 30

- Kind: `failed_ci_check`
- Detection gate: `null`
- Reason: The failing CI job was identified, but no failing step was captured.
- Artifact: `phase1-task-20261002-150208-2.md:761`

```text
<details>
<summary>16 lines</summary>

```
Refreshing checks status every 10 seconds. Press Ctrl+C to quit.

Shepherd task Cargo Tracker	pending	0	https://github.com/edburns/dd-3072797-tricked-out-cargotracker-run-04/actions/runs/37052072535/job/110988900841	
formatting	pending	0	https://github.com/edburns/dd-3072797-tricked-out-cargotracker-run-04/actions/runs/37052072558/job/110988893677	
Refreshing checks status every 10 seconds. Press Ctrl+C to quit.

Shepherd task Cargo Tracker	pending	0	https://github.com/edburns/dd-3072797-tricked-out-cargotracker-run-04/actions/runs/37052072535/job/110988900841	
formatting	pending	0	https://github.com/edburns/dd-3072797-tricked-out-cargotracker-run-04/actions/runs/37052072558/job/110988893677	
Refreshing checks status every 10 seconds. Press Ctrl+C to quit.

formatting	fail	21s	https://github.com/edburns/dd-3072797-tricked-out-cargotracker-run-04/actions/runs/37052072558/job/110988893677	
build	skipping	0	https://github.com/edburns/dd-3072797-tricked-out-cargotracker-run-04/actions/runs/37052072558/job/110989041140	
source-gates	skipping	0	https://github.com/edburns/dd-3072797-tricked-out-cargotracker-run-04/actions/runs/37052072558/job/110
…
```

## event-0047 — task #2, stage 30

- Kind: `failed_ci_check`
- Detection gate: `null`
- Reason: The failing CI job was identified, but no failing step was captured.
- Artifact: `phase1-task-20261002-150208-2.md:981`

```text
```
{"conclusion":"skipped","details_url":"https://github.com/edburns/dd-3072797-tricked-out-cargotracker-run-04/actions/runs/37052072558/job/110989041140","name":"build","status":"completed"}
{"conclusion":"skipped","details_url":"https://github.com/edburns/dd-3072797-tricked-out-cargotracker-run-04/actions/runs/37052072558/job/110989040638","name":"source-gates","status":"completed"}
{"conclusion":null,"details_url":"https://github.com/edburns/dd-3072797-tricked-out-cargotracker-run-04/actions/runs/37052072535/job/110988900841","name":"Shepherd task Cargo Tracker","status":"in_progress"}
{"conclusion":"failure","details_url":"https://github.com/edburns/dd-3072797-tricked-out-cargotracker-run-04/actions/runs/37052072558/job/110988893677","name":"formatting","status":"completed"}
<shellId: 10 completed with exit code 0>
```
```

## event-0048 — task #2, stage 30

- Kind: `nonzero_tool_exit`
- Detection gate: `null`
- Reason: No deterministic product, operational, or infrastructure rule matched.
- Artifact: `phase1-task-20261002-150208-2.md:1145`

```text
```
no checks reported on the 'copilot/edburnsdd-3016202-cargotracker-devoxx-be-2026-add' branch
<shellId: 16 completed with exit code 1>
```
```

## event-0020 — task #2, stage 40

- Kind: `nonzero_tool_exit`
- Detection gate: `null`
- Reason: No deterministic product, operational, or infrastructure rule matched.
- Artifact: `phase2-task-20261002-153307-2.md:452`

```text
```
fatal: ambiguous argument 'origin/edburns/dd-3016202-cargotracker-devoxx-be-2026-add-feature-control...origin/copilot/edburnsdd-3016202-cargotracker-devoxx-be-2026-add': unknown revision or path not in the working tree.
Use '--' to separate paths from revisions, like this:
'git <command> [<revision>...] -- [<file>...]'
<shellId: 2 completed with exit code 128>
```
```

## event-0009 — task #3, stage 30

- Kind: `stage_30_change_request`
- Detection gate: `null`
- Reason: Scope-like free text was present, but the stage-30 request had no recognized scope heading.
- Artifact: `phase1-task-20261002-153810-3.md:634`

```text
@copilot Please fix the following issue:

## Focused diff gate failure: unrelated Maven Wrapper files

The PR adds `demo/.mvn/wrapper/maven-wrapper.jar`, `demo/.mvn/wrapper/maven-wrapper.properties`, `demo/mvnw`, and `demo/mvnw.cmd`. Issue #3 permits changes only to the two facade files plus the optional focused facade test, and explicitly requires a focused diff with no unrelated changes.

**Fix:** Remove those four Maven Wrapper files from this PR. Preserve the two facade changes and `DefaultBookingServiceFacadeTest.java`; do not make any other changes.
```

## event-0010 — task #3, stage 30

- Kind: `failed_ci_check`
- Detection gate: `null`
- Reason: The failing CI job was identified, but no failing step was captured.
- Artifact: `phase1-task-20261002-153810-3.md:770`

```text
<details>
<summary>16 lines</summary>

```
Refreshing checks status every 10 seconds. Press Ctrl+C to quit.

Shepherd task Cargo Tracker	pending	0	https://github.com/edburns/dd-3072797-tricked-out-cargotracker-run-04/actions/runs/37056650891/job/111003298119	
formatting	pending	0	https://github.com/edburns/dd-3072797-tricked-out-cargotracker-run-04/actions/runs/37056650872/job/111003293431	
Refreshing checks status every 10 seconds. Press Ctrl+C to quit.

Shepherd task Cargo Tracker	pending	0	https://github.com/edburns/dd-3072797-tricked-out-cargotracker-run-04/actions/runs/37056650891/job/111003298119	
formatting	pending	0	https://github.com/edburns/dd-3072797-tricked-out-cargotracker-run-04/actions/runs/37056650872/job/111003293431	
Refreshing checks status every 10 seconds. Press Ctrl+C to quit.

formatting	fail	24s	https://github.com/edburns/dd-3072797-tricked-out-cargotracker-run-04/actions/runs/37056650872/job/111003293431	
build	skipping	0	https://github.com/edburns/dd-3072797-tricked-out-cargotracker-run-04/actions/runs/37056650872/job/111003451953	
source-gates	skipping	0	https://github.com/edburns/dd-3072797-tricked-out-cargotracker-run-04/actions/runs/37056650872/job/111
…
```

## event-0013 — task #3, stage 30

- Kind: `failed_ci_check`
- Detection gate: `null`
- Reason: The failing CI job was identified, but no failing step was captured.
- Artifact: `phase1-task-20261002-153810-3.md:1144`

```text
<details>
<summary>67 lines</summary>

```
Refreshing checks status every 10 seconds. Press Ctrl+C to quit.

Shepherd task Cargo Tracker	pending	0	https://github.com/edburns/dd-3072797-tricked-out-cargotracker-run-04/actions/runs/37057219345/job/111005063220	
formatting	pending	0	https://github.com/edburns/dd-3072797-tricked-out-cargotracker-run-04/actions/runs/37057219341/job/111005057797	
Refreshing checks status every 10 seconds. Press Ctrl+C to quit.

Shepherd task Cargo Tracker	pending	0	https://github.com/edburns/dd-3072797-tricked-out-cargotracker-run-04/actions/runs/37057219345/job/111005063220	
formatting	pending	0	https://github.com/edburns/dd-3072797-tricked-out-cargotracker-run-04/actions/runs/37057219341/job/111005057797	
Refreshing checks status every 10 seconds. Press Ctrl+C to quit.

Shepherd task Cargo Tracker	pending	0	https://github.com/edburns/dd-3072797-tricked-out-cargotracker-run-04/actions/runs/37057219345/job/111005063220	
source-gates	pending	0	https://github.com/edburns/dd-3072797-tricked-out-cargotracker-run-04/actions/runs/37057219341/job/111005170559	
formatting	pass	18s	https://github.com/edburns/dd-3072797-tricked-out-cargotracker-run-04/actions/runs
…
```

## event-0027 — task #3, stage 40

- Kind: `failed_ci_check`
- Detection gate: `null`
- Reason: The failing CI job was identified, but no failing step was captured.
- Artifact: `phase2-task-20261002-162337-3.md:2598`

```text
<details>
<summary>16 lines</summary>

```
Refreshing checks status every 10 seconds. Press Ctrl+C to quit.

Shepherd task Cargo Tracker	pending	0	https://github.com/edburns/dd-3072797-tricked-out-cargotracker-run-04/actions/runs/37060809207/job/111016712074	
formatting	pending	0	https://github.com/edburns/dd-3072797-tricked-out-cargotracker-run-04/actions/runs/37060809057/job/111016711751	
Refreshing checks status every 10 seconds. Press Ctrl+C to quit.

Shepherd task Cargo Tracker	pending	0	https://github.com/edburns/dd-3072797-tricked-out-cargotracker-run-04/actions/runs/37060809207/job/111016712074	
formatting	pending	0	https://github.com/edburns/dd-3072797-tricked-out-cargotracker-run-04/actions/runs/37060809057/job/111016711751	
Refreshing checks status every 10 seconds. Press Ctrl+C to quit.

formatting	fail	23s	https://github.com/edburns/dd-3072797-tricked-out-cargotracker-run-04/actions/runs/37060809057/job/111016711751	
build	skipping	0	https://github.com/edburns/dd-3072797-tricked-out-cargotracker-run-04/actions/runs/37060809057/job/111016861938	
source-gates	skipping	0	https://github.com/edburns/dd-3072797-tricked-out-cargotracker-run-04/actions/runs/37060809057/job/111
…
```

## event-0018 — task #4, stage 30

- Kind: `failed_ci_check`
- Detection gate: `null`
- Reason: The failing CI job was identified, but no failing step was captured.
- Artifact: `phase1-task-20261002-165618-4.md:995`

```text
```
[{"conclusion":"success","databaseId":37064882929,"headSha":"c2a3af4da5675a8f5b8819b6ed5cf6b7e77cbf5f","name":"Shepherd task Cargo Tracker","status":"completed","url":"https://github.com/edburns/dd-3072797-tricked-out-cargotracker-run-04/actions/runs/37064882929"},{"conclusion":"success","databaseId":37064882957,"headSha":"c2a3af4da5675a8f5b8819b6ed5cf6b7e77cbf5f","name":"Main Build","status":"completed","url":"https://github.com/edburns/dd-3072797-tricked-out-cargotracker-run-04/actions/runs/37064882957"},{"conclusion":"","databaseId":37064789135,"headSha":"8b7f2d272a0db6fe9373741a3576134457faa1f7","name":"Main Build","status":"in_progress","url":"https://github.com/edburns/dd-3072797-tricked-out-cargotracker-run-04/actions/runs/37064789135"},{"conclusion":"success","databaseId":37064789055,"headSha":"8b7f2d272a0db6fe9373741a3576134457faa1f7","name":"Shepherd task Cargo Tracker","status":"completed","url":"https://github.com/edburns/dd-3072797-tricked-out-cargotracker-run-04/actions/runs/37064789055"},{"conclusion":"","databaseId":37064439865,"headSha":"9a8ca94613c4387249d8d8ac16d9859d198def3a","name":"Main Build","status":"in_progress","url":"https://github.com/edburns/dd-307
…
```

## event-0037 — task #4, stage 40

- Kind: `nonzero_tool_exit`
- Detection gate: `null`
- Reason: No deterministic product, operational, or infrastructure rule matched.
- Artifact: `phase2-task-20261002-173345-4.md:1954`

```text
<details>
<summary>9 lines</summary>

```
error: gpg failed to sign the data:
[GNUPG:] KEY_CONSIDERED CEB0E11ABB58FABFAA1764AEE2C9481D9AC7D351 0
[GNUPG:] BEGIN_SIGNING H8
[GNUPG:] PINENTRY_LAUNCHED 2120 mac 1.3.1.1 - xterm-256color - - 501/20 0
gpg: signing failed: Operation cancelled
[GNUPG:] FAILURE sign 83886179
gpg: signing failed: Operation cancelled

fatal: failed to write commit object
<shellId: 20 completed with exit code 128>
```

</details>
```

## event-0038 — task #4, stage 40

- Kind: `failed_ci_check`
- Detection gate: `null`
- Reason: The failing CI job was identified, but no failing step was captured.
- Artifact: `phase2-task-20261002-173345-4.md:2062`

```text
<details>
<summary>71 lines</summary>

```
Refreshing checks status every 10 seconds. Press Ctrl+C to quit.

Shepherd task Cargo Tracker	pending	0	https://github.com/edburns/dd-3072797-tricked-out-cargotracker-run-04/actions/runs/37068241190/job/111041272820	
formatting	pending	0	https://github.com/edburns/dd-3072797-tricked-out-cargotracker-run-04/actions/runs/37068241196/job/111041273131	
Refreshing checks status every 10 seconds. Press Ctrl+C to quit.

Shepherd task Cargo Tracker	pending	0	https://github.com/edburns/dd-3072797-tricked-out-cargotracker-run-04/actions/runs/37068241190/job/111041272820	
formatting	pending	0	https://github.com/edburns/dd-3072797-tricked-out-cargotracker-run-04/actions/runs/37068241196/job/111041273131	
Refreshing checks status every 10 seconds. Press Ctrl+C to quit.

source-gates	pending	0	https://github.com/edburns/dd-3072797-tricked-out-cargotracker-run-04/actions/runs/37068241196/job/111041411251	
formatting	pass	24s	https://github.com/edburns/dd-3072797-tricked-out-cargotracker-run-04/actions/runs/37068241196/job/111041273131	
Shepherd task Cargo Tracker	pending	0	https://github.com/edburns/dd-3072797-tricked-out-cargotracker-run-04/actions/runs
…
```

## event-0002 — task #5, stage 30

- Kind: `nonzero_tool_exit`
- Detection gate: `null`
- Reason: No deterministic product, operational, or infrastructure rule matched.
- Artifact: `phase1-task-20261002-183403-5.md:1241`

```text
```

<shellId: 12 completed with exit code 1>
```
```

## event-0005 — task #5, stage 30

- Kind: `nonzero_tool_exit`
- Detection gate: `null`
- Reason: No deterministic product, operational, or infrastructure rule matched.
- Artifact: `phase1-task-20261002-183403-5.md:2102`

```text
```

<shellId: 26 completed with exit code 1>
```
```

## event-0006 — task #5, stage 30

- Kind: `nonzero_tool_exit`
- Detection gate: `null`
- Reason: No deterministic product, operational, or infrastructure rule matched.
- Artifact: `phase1-task-20261002-183403-5.md:2325`

```text
```

<shellId: 30 completed with exit code 1>
```
```

## event-0007 — task #5, stage 30

- Kind: `nonzero_tool_exit`
- Detection gate: `null`
- Reason: No deterministic product, operational, or infrastructure rule matched.
- Artifact: `phase1-task-20261002-183403-5.md:2409`

```text
```
CANCEL_UNCHANGED=12/02/2026
<shellId: 32 completed with exit code 1>
```
```

## event-0008 — task #5, stage 30

- Kind: `nonzero_tool_exit`
- Detection gate: `null`
- Reason: No deterministic product, operational, or infrastructure rule matched.
- Artifact: `phase1-task-20261002-183403-5.md:2469`

```text
```
REQUIRED_VALIDATION=PASS
<shellId: 33 completed with exit code 1>
```
```

## event-0031 — task #5, stage 40

- Kind: `nonzero_tool_exit`
- Detection gate: `null`
- Reason: No deterministic product, operational, or infrastructure rule matched.
- Artifact: `phase2-task-20261002-192223-5.md:419`

```text
<details>
<summary>6 lines</summary>

```
Output too large to read at once (22.2 KB). Saved to: /var/folders/vc/_9vlsvsd7wg72zf3bf0z_1k00000gn/T/1790983370485-copilot-tool-output-36895-29f04310-fdd7-47dd-9b98-55be60a23452.txt
Consider using tools like rg (for searching), head/tail (for viewing start/end), view with view_range (for specific sections), or jq (for JSON) to examine portions of the output.

Preview (first 500 chars):
=== ISSUE ===
{"body":"## Campaign context and required reading\n\nOn the `edburns/dd-3016202-cargotracker-devoxx-be-2026-add-feature-control` branch, the directory `1-arrival-deadline-control-remove-before-merge` contains the plan (`add-change-arrival-deadline-feature-ignorance-reduction-plan.md`) and supporting resources (diagrams, decision records). Spike subdirectories are research artifacts — read the plan's Resolution sections for findings, not the spike source code.\n\nRead the entire pla
<shellId: 1 completed with exit code 2>
```

</details>
```

## event-0049 — task #6, stage 30

- Kind: `nonzero_tool_exit`
- Detection gate: `null`
- Reason: No deterministic product, operational, or infrastructure rule matched.
- Artifact: `phase1-task-20261002-204205-6.md:296`

```text
<details>
<summary>18 lines</summary>

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
campaign metadata mismatch
<shellId: 1 completed with exit code 2>
```

</details>
```

## event-0052 — task #6, stage 30

- Kind: `nonzero_tool_exit`
- Detection gate: `null`
- Reason: No deterministic product, operational, or infrastructure rule matched.
- Artifact: `phase1-task-20261002-204205-6.md:2031`

```text
<details>
<summary>32 lines</summary>

```
node:internal/modules/run_main:107
    triggerUncaughtException(
    ^

[TypeError: fetch failed] {
  [cause]: AggregateError [ECONNREFUSED]: 
      at internalConnectMultiple (node:net:1430:18)
      at afterConnectMultiple (node:net:2099:7) {
    code: 'ECONNREFUSED',
    [errors]: [
      Error: connect ECONNREFUSED ::1:9222
          at createConnectionError (node:net:2062:14)
          at afterConnectMultiple (node:net:2092:16) {
        errno: -61,
        code: 'ECONNREFUSED',
        syscall: 'connect',
        address: '::1',
        port: 9222
      },
      Error: connect ECONNREFUSED 127.0.0.1:9222
          at createConnectionError (node:net:2062:14)
          at afterConnectMultiple (node:net:2092:16) {
        errno: -61,
        code: 'ECONNREFUSED',
        syscall: 'connect',
        address: '127.0.0.1',
        port: 9222
      }
    ]
  }
}

Node.js v24.21.0
<shellId: 15 completed with exit code 1>
```

</details>
```

## event-0053 — task #6, stage 30

- Kind: `nonzero_tool_exit`
- Detection gate: `null`
- Reason: No deterministic product, operational, or infrastructure rule matched.
- Artifact: `phase1-task-20261002-204205-6.md:2225`

```text
<details>
<summary>32 lines</summary>

```
node:internal/modules/run_main:107
    triggerUncaughtException(
    ^

[TypeError: fetch failed] {
  [cause]: AggregateError [ECONNREFUSED]: 
      at internalConnectMultiple (node:net:1430:18)
      at afterConnectMultiple (node:net:2099:7) {
    code: 'ECONNREFUSED',
    [errors]: [
      Error: connect ECONNREFUSED ::1:9222
          at createConnectionError (node:net:2062:14)
          at afterConnectMultiple (node:net:2092:16) {
        errno: -61,
        code: 'ECONNREFUSED',
        syscall: 'connect',
        address: '::1',
        port: 9222
      },
      Error: connect ECONNREFUSED 127.0.0.1:9222
          at createConnectionError (node:net:2062:14)
          at afterConnectMultiple (node:net:2092:16) {
        errno: -61,
        code: 'ECONNREFUSED',
        syscall: 'connect',
        address: '127.0.0.1',
        port: 9222
      }
    ]
  }
}

Node.js v24.21.0
<shellId: 16 completed with exit code 1>
```

</details>
```

## event-0054 — task #6, stage 30

- Kind: `nonzero_tool_exit`
- Detection gate: `null`
- Reason: No deterministic product, operational, or infrastructure rule matched.
- Artifact: `phase1-task-20261002-204205-6.md:2307`

```text
<details>
<summary>7 lines</summary>

```
file:///Users/edburns/.copilot/session-state/0c1e2189-f9f9-4c96-ad41-e372469c0740/files/pr11-ui-acceptance.mjs:111
  throw new Error(`Dialog initialization failed: ${JSON.stringify(dialog)}`);
        ^

Error: Dialog initialization failed: {"date":"12/02/2026"}
    at file:///Users/edburns/.copilot/session-state/0c1e2189-f9f9-4c96-ad41-e372469c0740/files/pr11-ui-acceptance.mjs:111:9

Node.js v24.21.0
<shellId: 17 completed with exit code 1>
```

</details>
```

## event-0055 — task #6, stage 30

- Kind: `nonzero_tool_exit`
- Detection gate: `null`
- Reason: No deterministic product, operational, or infrastructure rule matched.
- Artifact: `phase1-task-20261002-204205-6.md:2648`

```text
<details>
<summary>37 lines</summary>

```
unknown command "head" for "gh run list"

List recent workflow runs.

Note that providing the `workflow_name` to the `-w` flag will not fetch disabled workflows.
Also pass the `-a` flag to fetch disabled workflow runs using the `workflow_name` and the `-w` flag.

Runs created by organization and enterprise ruleset workflows will not display a workflow name due to GitHub API limitations.

To see runs associated with a pull request, users should run `gh pr checks`.

For more information about output formatting flags, see `gh help formatting`.

USAGE
  gh run list [flags]

ALIASES
  gh run ls

FLAGS
  -a, --all               Include disabled workflows
  -b, --branch string     Filter runs by branch
  -c, --commit SHA        Filter runs by the SHA of the commit
      --created date      Filter runs by the date it was created
  -e, --event event       Filter runs by which event triggered the run
  -q, --jq expression     Filter JSON output using a jq expression
      --json fields       Output JSON with the specified fields
  -L, --limit int         Maximum number of runs to fetch (default 20)
  -s, --status string     Filter runs by status: {q
…
```

