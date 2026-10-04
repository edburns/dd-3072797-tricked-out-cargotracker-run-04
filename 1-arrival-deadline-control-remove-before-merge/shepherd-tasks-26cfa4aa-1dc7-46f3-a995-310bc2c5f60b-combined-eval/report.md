# Shepherd Campaign Evaluation

- **Arm:** `treatment`
- **Campaign:** `26cfa4aa-1dc7-46f3-a995-310bc2c5f60b`
- **Evaluator:** `0.4.4` at `c2051a95cd589e9c594a2648558ae938f04c1038`
- **Evaluator worktree dirty:** false
- **Generated:** 2026-10-04T14:39:09.667159Z

## Headline findings

| Task | PR | Attempts/outcomes | First product-defect detection | Product defects | Nonzero exits | CCRA rounds | CCRA comments | Flaky tests |
|---:|---:|---|---|---:|---:|---:|---:|---:|
| 2 | 7 | 1:completed | formatting | 1 | 5 | 0 | 0 | 0 |
| 3 | 8 | 1:completed | formatting | 6 | 7 | 0 | 2 | 0 |
| 4 | 9 | 1:completed | ccra_review | 4 | 8 | 1 | 2 | 0 |
| 5 | 10 | 1:completed | stage_30_gate | 1 | 8 | 0 | 0 | 0 |
| 6 | 11 | 2:completed | none detected | 0 | 7 | 1 | 0 | 0 |

## Cost and timing

- Campaign active time: 5h 22m 55s
- Inter-directory gap: 1h 04m 37s
- First-start to last-end span: 6h 27m 32s (not campaign active time)
- Recorded session time: 4h 14m 19s
- JSONL exact session time: 15264260 ms (5260 ms above second-truncated Markdown headers)
- Orchestration overhead: 1h 08m 36s
- CCA wait proxy: 2 polls / 0h 03m 28s elapsed; 0h 13m 00s configured ceiling
- AIU: 1151.44616
- Premium requests: 10

## Evidence and run invariants

- CI tests run: unavailable (`not_captured`)
- Partial output: 7932946 Unicode code points / 7932980 UTF-16 code units
- Skill content verification: `unverified`; telemetry hashes identify skill names, not content

## Acceptance checks

| Check | Status | Observed |
|---|---|---|
| maven_project_root_recorded | **pass** | `{"77a2892b1a5ab1d2eff833e6d131e75e04b3d50c":"demo","26b6936b7957e2040b97e7f138d8fa37c052122f":"demo","7131d5e2d197e398d7bf6c89aa801e2af30497ab":"demo","1272f0c90e29219a1d66b4c0688ef8dc0c2cacaf":"demo","1821ac816f1560b1cd95baecfc372a0571556688":"demo","de71190a762389fb608c155b55a72f64ce8ee6e0":"demo","01f2c36d54bb93ac6e950c5ecf6f434b4e9f129f":"demo"}` |
| cross_repo_start_equivalence | **pass** | `{"guardrail_infrastructure":{"count":3,"paths":[".github/copilot-instructions.md",".github/workflows/main.yml","demo/scripts/ci/run-openliberty-acceptance.sh"]},"relocation_only":{"count":0,"paths":[]},"formatting_only":{"count":0,"paths":[]},"substantive_production":{"count":20,"paths":["demo/src/main/java/org/eclipse/cargotracker/domain/model/cargo/BookingBackingBean.java","demo/src/main/java/org/eclipse/cargotracker/domain/model/voyage/SampleVoyages.java","demo/src/main/java/org/eclipse/cargo
…` |
| ci_and_build_gates_classified | **pass** | `{"formatting":{"status":"present","entryCount":1},"build_contract":{"status":"present","entryCount":5},"security":{"status":"present","entryCount":1},"static_analysis":{"status":"present","entryCount":2},"compiler":{"status":"present","entryCount":2},"unit_tests":{"status":"present","entryCount":5},"container_tests":{"status":"present","entryCount":2},"ci_other":{"status":"present","entryCount":40}}` |
| product_defect_gate_and_class_non_null | **pass** | `true` |
| defect_class_subtype_consistent | **pass** | `true` |
| guardrail_failures_not_unclassified | **fail** | `[{"id":"event-0055","taskIssue":6,"prNumber":null,"sessionId":"0c1e2189-f9f9-4c96-ad41-e372469c0740","attempt":2,"campaignDirectory":"/Users/edburns/workareas/dd-3072797-tricked-out-cargotracker-run-04/1-arrival-deadline-control-remove-before-merge/shepherd-tasks-26cfa4aa-1dc7-46f3-a995-310bc2c5f60b-20261002-2042","shepherdStage":30,"eventKind":"nonzero_tool_exit","relativeOffsetSeconds":2274,"timestamp":"2026-10-03T01:20:03.317Z","timestampSource":"jsonl_tool_execution_complete","headSha":"01f2
…` |
| ci_test_log_availability_semantics | **pass** | `{"availability":"not_captured","testsExecuted":null,"testsRun":null,"reason":"Only gh run view --log-failed output was captured; passing-run Surefire/Failsafe summaries were not captured."}` |
| combined_attempts_preserved | **pass** | `["/Users/edburns/workareas/dd-3072797-tricked-out-cargotracker-run-04/1-arrival-deadline-control-remove-before-merge/shepherd-tasks-26cfa4aa-1dc7-46f3-a995-310bc2c5f60b-20261002-1502","/Users/edburns/workareas/dd-3072797-tricked-out-cargotracker-run-04/1-arrival-deadline-control-remove-before-merge/shepherd-tasks-26cfa4aa-1dc7-46f3-a995-310bc2c5f60b-20261002-2042"]` |
| combined_active_time_separates_gap | **pass** | `{"arm":"treatment","campaignId":"26cfa4aa-1dc7-46f3-a995-310bc2c5f60b","campaignDirectory":"/Users/edburns/workareas/dd-3072797-tricked-out-cargotracker-run-04/1-arrival-deadline-control-remove-before-merge/shepherd-tasks-26cfa4aa-1dc7-46f3-a995-310bc2c5f60b-20261002-1502","campaignDirectories":["/Users/edburns/workareas/dd-3072797-tricked-out-cargotracker-run-04/1-arrival-deadline-control-remove-before-merge/shepherd-tasks-26cfa4aa-1dc7-46f3-a995-310bc2c5f60b-20261002-1502","/Users/edburns/work
…` |

## CI gate inventory

| Gate | Status | Entries |
|---|---|---:|
| formatting | present | 1 |
| build_contract | present | 5 |
| security | present | 1 |
| static_analysis | present | 2 |
| compiler | present | 2 |
| unit_tests | present | 5 |
| container_tests | present | 2 |
| ci_other | present | 40 |

Named steps requiring `ci_other` review:

- `Build Cargo Tracker with Open Liberty`
- `Cache Maven packages`
- `Capture evidence end`
- `Record artifact evidence`
- `Record performance artifact evidence`
- `Record source-gate evidence`
- `Run OpenTelemetry observability acceptance`
- `Run bounded Java and jaz performance comparison`
- `Run negative controls`
- `Run observability negative controls`
- `Set up Java`
- `Upload Liberty logs`
- `Upload Liberty test reports`
- `Upload OpenTelemetry telemetry`
- `Upload build contract`
- `Upload bypassed jaz performance evidence`
- `Upload compatibility contract`
- `Upload dependency reports`
- `Upload direct Java performance evidence`
- `Upload performance comparison`
- `Upload source gates`
- `Upload tuned jaz performance evidence`
- `Verify every retained performance JFR`
- `Verify final observability artifact redaction`
- `Verify final performance artifact redaction`
- `Verify performance artifact redaction`
- `Verify performance launcher rejects user tuning`
- `Write artifact metadata`
- `Write build contract reports`
- `Write observability artifact metadata`
- `Write performance artifact metadata`

## Start equivalence and confounds

| Classification | Count | Paths |
|---|---:|---|
| guardrail_infrastructure | 3 | [".github/copilot-instructions.md",".github/workflows/main.yml","demo/scripts/ci/run-openliberty-acceptance.sh"] |
| relocation_only | 0 | [] |
| formatting_only | 0 | [] |
| substantive_production | 20 | ["demo/src/main/java/org/eclipse/cargotracker/domain/model/cargo/BookingBackingBean.java","demo/src/main/java/org/eclipse/cargotracker/domain/model/voyage/SampleVoyages.java","demo/src/main/java/org/eclipse/cargotracker/infrastructure/messaging/jms/JmsApplicationEvents.java","demo/src/main/java/org/eclipse/cargotracker/interfaces/booking/facade/dto/CargoRoute.java","demo/src/main/java/org/eclipse/cargotracker/interfaces/booking/facade/dto/Leg.java","demo/src/main/java/org/eclipse/cargotracker/interfaces/booking/facade/dto/RouteCandidate.java","demo/src/main/java/org/eclipse/cargotracker/interfaces/booking/facade/internal/assembler/ItineraryCandidateDtoAssembler.java","demo/src/main/java/org/eclipse/cargotracker/interfaces/booking/socket/RealtimeCargoTrackingService.java","demo/src/main/java/org/eclipse/cargotracker/interfaces/booking/web/ChangeDestinationDialog.java","demo/src/main/java/org/eclipse/cargotracker/interfaces/booking/web/DashboardView.java","demo/src/main/java/org/eclipse/cargotracker/interfaces/handling/HandlingEventRegistrationAttempt.java","demo/src/main/java/org/eclipse/cargotracker/interfaces/handling/file/EventFilesCheckpoint.java","demo/src/main/java/org/eclipse/cargotracker/interfaces/handling/file/EventLineParseException.java","demo/src/main/java/org/eclipse/cargotracker/interfaces/handling/mobile/EventWizard.java","demo/src/main/java/org/eclipse/cargotracker/interfaces/tracking/web/CargoTrackingViewAdapter.java","demo/src/main/java/org/eclipse/pathfinder/api/TransitEdge.java","demo/src/main/java/org/eclipse/pathfinder/api/TransitPath.java","demo/src/main/java/org/eclipse/pathfinder/internal/GraphDao.java","demo/src/main/liberty/config/server.xml","demo/src/main/webapp/WEB-INF/glassfish-web.xml -> null"] |
| campaign_inputs | 2 | ["1-arrival-deadline-control-remove-before-merge/add-change-arrival-deadline-feature-ignorance-reduction-plan.md","1-arrival-deadline-control-remove-before-merge/shepherd-campaign.json"] |
| other | 30 | [".gitignore","1-arrival-deadline-control-remove-before-merge/shepherd-test-experiment.json","demo/README.md","demo/config/spotbugs-exclude.xml","demo/observability/README.md","demo/observability/otel-collector-config.yaml","demo/observability/versions.properties","demo/performance/README.md","demo/performance/collect-process-metadata.sh","demo/performance/run-liberty-java.sh","demo/performance/run-liberty-jaz.sh","demo/performance/run-negative-controls.sh","demo/performance/run-workload.sh","demo/pom.xml","demo/scripts/ci/redact-artifacts.sh","demo/scripts/ci/run-dependency-security-gate.sh","demo/scripts/ci/run-negative-controls.sh","demo/scripts/ci/run-observability-check.sh","demo/scripts/ci/run-observability-negative-controls.sh","demo/scripts/ci/run-safety-net-negative-controls.sh","demo/scripts/ci/verify-build-contract.sh","demo/scripts/ci/verify-compatibility-contract.sh","demo/scripts/ci/verify-observability.py","demo/scripts/ci/verify-source-gates.sh","demo/scripts/ci/write-build-metadata.sh","demo/scripts/ci/write-observability-metadata.py","demo/scripts/ci/write-test-inventory.sh","demo/src/test/java/org/eclipse/cargotracker/architecture/LayeringTest.java","demo/src/test/java/org/eclipse/cargotracker/interfaces/booking/facade/BookingFacadeDtoTest.java","demo/src/test/resources/arquillian.xml"] |

### Campaign-input line differences

- **1-arrival-deadline-control-remove-before-merge/add-change-arrival-deadline-feature-ignorance-reduction-plan.md**: 923 control lines vs 921 treatment lines. This is a campaign-input confound.

```diff
diff --git a/Users/edburns/workareas/dd-3072797-tricked-out-cargotracker-run-04/1-arrival-deadline-control-remove-before-merge/shepherd-tasks-26cfa4aa-1dc7-46f3-a995-310bc2c5f60b-combined-eval/.worktrees/control-start/1-arrival-deadline-control-remove-before-merge/add-change-arrival-deadline-feature-ignorance-reduction-plan.md b/Users/edburns/workareas/dd-3072797-tricked-out-cargotracker-run-04/1-arrival-deadline-control-remove-before-merge/shepherd-tasks-26cfa4aa-1dc7-46f3-a995-310bc2c5f60b-combined-eval/.worktrees/treatment-start/1-arrival-deadline-control-remove-before-merge/add-change-arrival-deadline-feature-ignorance-reduction-plan.md
index 04f342e..06d8021 100644
--- a/Users/edburns/workareas/dd-3072797-tricked-out-cargotracker-run-04/1-arrival-deadline-control-remove-before-merge/shepherd-tasks-26cfa4aa-1dc7-46f3-a995-310bc2c5f60b-combined-eval/.worktrees/control-start/1-arrival-deadline-control-remove-before-merge/add-change-arrival-deadline-feature-ignorance-reduction-plan.md
+++ b/Users/edburns/workareas/dd-3072797-tricked-out-cargotracker-run-04/1-arrival-deadline-control-remove-before-merge/shepherd-tasks-26cfa4aa-1dc7-46f3-a995-310bc2c5f60b-combined-eval/.worktrees/treatment-start/1-arrival-deadline-control-remove-before-merge/add-change-arrival-deadline-feature-ignorance-reduction-plan.md
@@ -1,24 +1,14 @@
 # Implementation plan: Change Arrival Deadline Date (`eclipse-ee4j/cargotracker#64`)
 
 Human DRI: Ed Burns
-Starting commit: `634f3ca4787c84fd652cdf5c883c37f1098e0c61` (`Remove prompts from control brancH`)
+Starting commit: `89e107c3ed6dd3655c2ffdf638b57d6c47099dab` (feature-free baseline with an extensible integration-test gate)
 Working directory: repository root of the current campaign worktree
+Cargo Tracker Maven application: `demo/`
 Runtime baseline: Java 17, Java EE 7 (`javax.*`), Open Liberty 26.0.0.8, PrimeFaces 8.0
 Baseline run instructions: `demo/README.md`
 Baseline preparation: fixed source branch and immutable SHA validated by the campaign fixture
 Historical issue: `eclipse-ee4j/cargotracker#64`
 
-Control-fixture provenance: the five-task plan and acceptance requirements are
-adapted from `cargotracker-add-change-arrival-deadline-feature` at tag
-`shepherd-task-v1.0.4`. The source branch is
-`edburns/dd-3016202-cargotracker-devoxx-be-2026-control`.
-Paths below are repository-relative; run each `cd demo && ./mvnw ...` command
-from the campaign worktree root. Campaign metadata stays at the root.
-Completed-phase observations below are inherited historical context, not
-evidence from a new run of this pinned baseline. Verify the baseline during
-the run and report its actual behavior. Section 3.9 records the baseline's
-different test configuration without importing the experiment's test/CI gates.
-
 Related directories and files:
 
 - `demo/src/main/java/org/eclipse/cargotracker/application/`
@@ -87,10 +77,9 @@ Changing the deadline must:
 
 ### Hard scope constraints
 
-- Begin from commit `634f3ca4787c84fd652cdf5c883c37f1098e0c61`.
+- Begin from commit `89e107c3ed6dd3655c2ffdf638b57d6c47099dab`.
 - Preserve Java EE 7 and the `javax.*` namespace.
-- Preserve the pinned POM's `maven.compiler.release=17`; do not restore the
-  tagged fixture's historical Java 7 source/target configuration.
+- Preserve the Java 7 source/target level used by this historical codebase.
 - Run the application on JDK 17 using the existing Open Liberty profile.
 - Do not migrate the application to Jakarta EE 8+, Jakarta EE 9+, Spring, or a
   different UI framework.
@@ -108,9 +97,11 @@ Changing the deadline must:
 
 ### Phase 1 ✅ — Establish a runnable feature-absent baseline
 
-- Commit `634f3ca4787c84fd652cdf5c883c37f1098e0c61` is based on the historical
-  feature-absent commit and contains only the compatibility work needed to run
-  the sample on JDK 17 and Open Liberty.
+- Commit `89e107c3ed6dd3655c2ffdf638b57d6c47099dab` is based on the historical
+  feature-absent commit and contains the compatibility work needed to run the
+  sample on JDK 17 and Open Liberty plus an extensible integration-test gate
+  that preserves the four named baseline methods while permitting valid
+  additional tests.
 - `cd demo && ./mvnw clean package -Popenliberty liberty:run` starts the application.
 - The home page and Administration flows return HTTP 200.
 - JSF view metadata is placed at `UIViewRoot` scope for MyFaces compatibility.
@@ -449,53 +440,56 @@ after the old deadline, or after every itinerary leg. Pass the selected
 
 ### 3.9 — How will the feature be tested on the prepared historical baseline?
 
-**Question:** Which automated and runtime tests are mandatory on this pinned
-control baseline?
+**Question:** Which automated and runtime tests are mandatory on the prepared
+JDK 17/Open Liberty baseline?
+
+The prepared baseline executes the sequential `BookingServiceTest` under Open
+Liberty with:
+
+```bash
+cd demo && ./mvnw -Popenliberty -Dtest=BookingServiceTest clean test
+```
 
-The tagged fixture described an older POM with `skipTests=true` and a remote
-Payara-only Arquillian suite. This baseline's `demo/pom.xml` instead configures
-the Open Liberty managed Arquillian adapter and selects `openliberty` for
-Surefire; it does not declare `skipTests=true`. These are configuration facts,
-not a claim that this baseline's tests have passed. Modernizing the integration
-test runtime remains outside this feature's scope.
+The feature-free baseline passes four ordered methods with zero failures,
+errors, or skipped tests. Its CI gate preserves those four named methods while
+allowing the suite to grow when a feature adds another valid test.
 
 The feature still needs layered evidence:
 
 1. Extend `BookingServiceTest` with the domain/application assertions that
    specify the deadline mutation.
-2. Ensure all test sources compile as part of
-   `cd demo && ./mvnw clean package -Popenliberty`.
-3. Add focused JUnit tests for facade and backing-bean delegation where they
+2. Run the complete `BookingServiceTest` under Open Liberty and require all
+   five ordered methods to pass with zero failures, errors, or skipped tests.
+3. Run `cd demo && ./mvnw clean package -Popenliberty` and require the complete
+   package gate to pass.
+4. Add focused JUnit tests for facade and backing-bean delegation where they
    can run without a container, using hand-written fakes rather than adding a
    mocking framework.
-4. Perform mandatory end-to-end verification against the running Open Liberty
+5. Perform mandatory end-to-end verification against the running Open Liberty
    application.
-5. Preserve the baseline's existing test configuration, including the Payara
-   profile and Open Liberty adapter; do not delete, disable, or rewrite tests
-   to manufacture a passing result.
 
-**Spike needed:** Before Issue 1 implementation, run the starting commit's
-standard Open Liberty package command and record which tests actually run,
-their results, and any skips or failures. Confirm the new `BookingServiceTest` method can be added without
-expanding the runtime modernization scope.
+**Resolved evidence:** The prepared baseline runs `BookingServiceTest` in its
+managed Open Liberty test environment. The repository's injected
+`CargoRepository` is available in that test; a separately introduced
+test-level `EntityManager` injection is not. `JpaCargoRepository.find(...)`
+already executes the `Cargo.findByTrackingId` named query.
 
-**Recommendation:** Treat the JDK 17/Open Liberty build plus HTTP/UI acceptance
-as the mandatory executable gate. Keep the Arquillian test as a precise
-application-layer specification and let the pinned profile execute its
-configured tests. Do not assume a fixed test count or add test/CI machinery
-from the experiment arm.
+**Recommendation:** Use the existing injected repository to reload the cargo,
+run the dedicated Open Liberty integration tier, run the complete package
+gate, and retain HTTP/UI acceptance as the final user-visible proof. Do not add
+a second persistence access path or modernize the test runtime.
 
 **Resolution:**
 
 Extend the existing sequential Arquillian `BookingServiceTest` with
 `testChangeDeadline()` after `testChangeDestination()`. The test changes the
-deadline by one month, reloads the cargo through JPA, and asserts the complete
-set of preserved and recalculated domain state described above. Record actual
-test execution rather than assuming the tagged fixture's skipped-test behavior.
-The mandatory executable gates remain the
-JDK 17 Open Liberty package/start command, direct HTTP checks, and the complete
-`DEF789` browser acceptance flow. No Arquillian-runtime modernization or new
-mocking dependency is part of this feature.
+deadline by one month, reloads the cargo through the injected
+`CargoRepository`, and asserts the complete set of preserved and recalculated
+domain state described above. Require five passing `BookingServiceTest`
+methods, a successful JDK 17 Open Liberty package gate, direct HTTP checks, and
+the complete `DEF789` browser acceptance flow. No test-runtime modernization,
+second persistence access path, or new mocking dependency is part of this
+feature.
 
 ---
 
@@ -548,8 +542,8 @@ Do not:
 
 Append a sequential `testChangeDeadline()` case to `BookingServiceTest` after
 `testChangeDestination()`. Build a new deadline one month after the test's
-original `deadline`, invoke the service, reload the cargo with
-`Cargo.findByTrackingId`, and assert:
+original `deadline`, invoke the service, reload the cargo with the existing
+injected `cargoRepository.find(trackingId)` path, and assert:
 
 - origin remains Chicago;
 - destination remains Helsinki;
@@ -567,10 +561,13 @@ original `deadline`, invoke the service, reload the cargo with
 
 **Gating criteria**
 
-- The test source compiles.
+- `cd demo && ./mvnw -Popenliberty -Dtest=BookingServiceTest clean test`
+  executes five tests with zero failures, errors, or skipped tests.
 - `cd demo && ./mvnw clean package -Popenliberty` succeeds on JDK 17.
 - No web, facade, REST, Liberty, or persistence configuration files change in
   this issue.
+- The repository's extensible integration-test CI gate passes without a
+  workflow change in this issue.
 
 ### 4.2 — Issue 2: Expose deadline changes through the booking facade
 
@@ -877,7 +874,8 @@ endpoints subsequently activate, as established by the prepared baseline.
 **Final regression and scope checks**
 
 - `cd demo && ./mvnw clean package -Popenliberty` succeeds.
-- The existing test sources and the new deadline test compile.
+- The dedicated Open Liberty `BookingServiceTest` tier executes all five
+  ordered tests with zero failures, errors, or skipped tests.
 - No Java EE namespace migration occurred.
 - No Open Liberty, Derby, Jackson, JSF metadata, batch authorization, or REST
   compatibility fix from the starting commit was reverted.
@@ -920,4 +918,4 @@ endpoints subsequently activate, as established by the prepared baseline.
 | Accessibility | Preserve visible labels; the date editor must have an associated label and validation feedback. |
 | Backward compatibility | Existing destination editing, routing, tracking, REST, messaging, batch, and startup behavior must remain intact. |
 | Test discipline | Add tests before production code where practical; every issue must preserve all prior gates. |
-| Experiment integrity | Implement from this specification starting at `634f3ca4787c84fd652cdf5c883c37f1098e0c61`; do not cherry-pick or inspect feature-bearing commits. |
+| Experiment integrity | Implement from this specification starting at `89e107c3ed6dd3655c2ffdf638b57d6c47099dab`; do not cherry-pick or inspect feature-bearing commits. |
```
- **1-arrival-deadline-control-remove-before-merge/shepherd-campaign.json**: 16 control lines vs 16 treatment lines. This is a campaign-input confound.

```diff
diff --git a/Users/edburns/workareas/dd-3072797-tricked-out-cargotracker-run-04/1-arrival-deadline-control-remove-before-merge/shepherd-tasks-26cfa4aa-1dc7-46f3-a995-310bc2c5f60b-combined-eval/.worktrees/control-start/1-arrival-deadline-control-remove-before-merge/shepherd-campaign.json b/Users/edburns/workareas/dd-3072797-tricked-out-cargotracker-run-04/1-arrival-deadline-control-remove-before-merge/shepherd-tasks-26cfa4aa-1dc7-46f3-a995-310bc2c5f60b-combined-eval/.worktrees/treatment-start/1-arrival-deadline-control-remove-before-merge/shepherd-campaign.json
index 579441e..84113fa 100644
--- a/Users/edburns/workareas/dd-3072797-tricked-out-cargotracker-run-04/1-arrival-deadline-control-remove-before-merge/shepherd-tasks-26cfa4aa-1dc7-46f3-a995-310bc2c5f60b-combined-eval/.worktrees/control-start/1-arrival-deadline-control-remove-before-merge/shepherd-campaign.json
+++ b/Users/edburns/workareas/dd-3072797-tricked-out-cargotracker-run-04/1-arrival-deadline-control-remove-before-merge/shepherd-tasks-26cfa4aa-1dc7-46f3-a995-310bc2c5f60b-combined-eval/.worktrees/treatment-start/1-arrival-deadline-control-remove-before-merge/shepherd-campaign.json
@@ -1,10 +1,10 @@
 {
   "schemaVersion": 1,
-  "campaignId": "ce607171-1d05-40bd-b1ca-65fd9ffb27df",
+  "campaignId": "26cfa4aa-1dc7-46f3-a995-310bc2c5f60b",
   "campaignIssueNumber": 1,
   "campaignShortname": "arrival-deadline-control",
-  "repository": "edburns/dd-3072973-cargotracker-control-01",
-  "baseBranch": "experiment/shepherd-control",
+  "repository": "edburns/dd-3072797-tricked-out-cargotracker-run-04",
+  "baseBranch": "edburns/dd-3016202-cargotracker-devoxx-be-2026-add-feature-control",
   "lessonPropagation": "off",
   "campaignMetadataDirectory": "1-arrival-deadline-control-remove-before-merge",
   "lessonsFile": "campaign-lessons.md",
@@ -12,5 +12,5 @@
     "shepherdTaskVersion": "1.0.4",
     "stageOutcomeProtocolVersion": 1
   },
-  "createdAt": "2026-10-03T00:37:37Z"
+  "createdAt": "2026-10-02T18:33:46Z"
 }
```

## Defect interpretation

See `defects.csv` for one row per deduplicated defect, including defect class, item count, local/CI location, timestamp source, ancestry-verified fix, and anomalies.

Style and static-analysis findings are detectable only where the corresponding gate exists; they are excluded from arm-comparison conclusions when either arm reports that gate as `not_present`.

## Post-mortem agent cost

- AIU: 232.93614
- Premium requests: 2
- Tokens: unavailable

## Reference reconciliation

No built-in acceptance profile applies to this campaign.

## Trust assessment

- **Trustworthy:** manifest timing, session counts, transcript durations, exact JSONL durations, nonzero exit counts, JSONL AIU/premium/model/tool counts, JSONL partial-output cross-checks, run invariants, and cumulative OTEL tokens.
- **Approximate:** command-to-head correlation when a transcript does not emit a full SHA, agent-action labels, rule-based defect deduplication, and CCA wait as a latency proxy.
- **Manual review:** all entries in `unclassified.md`, confirmed evidence gaps, and remote CCA/CCRA internal cost because those internals are absent.

## Experiment interpretation

- Detection stage should be presented per defect and descriptively; a small number of product defects per run does not support significance claims.
- Local AIU and tokens include Shepherd waiting/polling activity; CCA wait is reported separately because remote CCA internals are unavailable.
- Enabling tests in the treatment is a disclosed intervention, not evaluator-detected control-arm tampering.
- If the treatment raises the Java release level, disclose that it also removes the JDK-25/source-7 operational failure mode.
- Test-tampering metrics are comparable only within an arm where tests run by default; the control arm is `not_meaningful`, so this is not a between-arm tampering comparison.

## Remaining unclassified

- `event-0044`: The failing CI job was identified, but no failing step was captured.
- `event-0047`: The failing CI job was identified, but no failing step was captured.
- `event-0048`: No deterministic product, operational, or infrastructure rule matched.
- `event-0020`: No deterministic product, operational, or infrastructure rule matched.
- `event-0009`: Scope-like free text was present, but the stage-30 request had no recognized scope heading.
- `event-0010`: The failing CI job was identified, but no failing step was captured.
- `event-0013`: The failing CI job was identified, but no failing step was captured.
- `event-0027`: The failing CI job was identified, but no failing step was captured.
- `event-0018`: The failing CI job was identified, but no failing step was captured.
- `event-0037`: No deterministic product, operational, or infrastructure rule matched.
- `event-0038`: The failing CI job was identified, but no failing step was captured.
- `event-0002`: No deterministic product, operational, or infrastructure rule matched.
- `event-0005`: No deterministic product, operational, or infrastructure rule matched.
- `event-0006`: No deterministic product, operational, or infrastructure rule matched.
- `event-0007`: No deterministic product, operational, or infrastructure rule matched.
- `event-0008`: No deterministic product, operational, or infrastructure rule matched.
- `event-0031`: No deterministic product, operational, or infrastructure rule matched.
- `event-0049`: No deterministic product, operational, or infrastructure rule matched.
- `event-0052`: No deterministic product, operational, or infrastructure rule matched.
- `event-0053`: No deterministic product, operational, or infrastructure rule matched.
- `event-0054`: No deterministic product, operational, or infrastructure rule matched.
- `event-0055`: No deterministic product, operational, or infrastructure rule matched.
