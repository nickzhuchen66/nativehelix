# Convergence Preflight & Circuit-Breaker Checklist v0.1

Status: `DOCUMENTED_CAPABILITY_ONLY`  
Use: before architecture freeze, before each Governed Candidate, during its
single whole-surface review, and at stop/reset routing.

This checklist does not authorize implementation, candidate construction,
review, retry, exception, reset, or production.

## A. Necessity and simplification gate

- [ ] State one bounded success claim in one sentence.
- [ ] Map every proposed capability to at least one frozen current-gate row.
- [ ] Identify the smallest manual/static/evidence-only mechanism that can
  satisfy each row.
- [ ] Mark destructive, privileged, external, durable, irreversible, costly,
  or high-combinatoric capabilities.
- [ ] For each dangerous capability, prove it is necessary; otherwise route it
  to `DE_SCOPE` or `OPERATIONAL_HARDENING`.
- [ ] Record explicit non-goals and claim ceiling.
- [ ] Confirm no fourth in-scope P1 family is being designed around. If there
  is, stop and rebaseline rather than expanding the packet.

## B. Acceptance boundary freeze

- [ ] One versioned matrix exists before Candidate-01.
- [ ] Every row has stable ID, exact clause, owner, severity, proof method,
  current-gate blocking flag, successor gate, evidence source, oracle owner,
  reachability, and residual-risk route.
- [ ] Candidate, Harness, authority, evidence, operational-hardening, and
  governance-landing ownership are distinguishable.
- [ ] Row IDs have not changed meaning across versions.
- [ ] Threat model, authority, scope, artifacts, and success claim are frozen.
- [ ] All optional enhancements are labeled `PROPOSED_NEW_REQUIREMENT` and do
  not enter current P0/P1 counts.

## C. Development Lab exit

- [ ] Lab work has no governed candidate identity and no retry label.
- [ ] Exact acceptance and mutation inventories pass in the Lab.
- [ ] Subject, oracle, and observer are independently owned.
- [ ] Required effective path is reached, or zero execution is an explicit
  architecture/static contract.
- [ ] Preflight does not invoke the effective engine; an effective gate invokes
  it exactly once when the project contract requires an engine.
- [ ] Structured argv/cwd/env/runtime/module ownership is frozen.
- [ ] Helpers compile/import and callable/schema snapshots match production.
- [ ] Logical artifact ID, exact path, producer, phase, and non-self generation
  DAG are closed.
- [ ] Representation, ordering, wire bytes, semantic identity, and storage
  identity have separate oracles.
- [ ] Every registered branch has one positive and adjacent negative fixture.
- [ ] Tests/probes reach production callsites and derive assertions from
  observed results; labels and self-raised expected errors are insufficient.
- [ ] Failure terminalization, fallback, ownership, rollback, and manual
  takeover are exercised without governed mutation.
- [ ] No known current-gate P0/P1 remains.

## D. Governed Candidate entry

- [ ] Candidate number is `1` or `2`; cumulative count did not reset with a new
  path/version/root.
- [ ] Scope, preimages, postimages, protected surfaces, permissions, cost, and
  failure boundary are exact.
- [ ] Candidate bytes and independent oracle/evidence are frozen before review.
- [ ] Candidate does not rely on reviewer-created expected facts.
- [ ] Development Lab status and evidence are bound.
- [ ] Candidate review count and elapsed effort remain below limits.

## E. Whole-surface review

- [ ] Review inspects the full frozen surface once; it is not an interactive
  debugger.
- [ ] Execution still stops at first failure, but static/review analysis lists
  all observed blockers and high-probability adjacent variants.
- [ ] `reviewed_surfaces`, `unreviewed_surfaces`, and
  `remaining_uncertainty` are explicit.
- [ ] Every finding has exactly one bucket and one classification.
- [ ] Every in-scope blocker cites exact row, current reachability, concrete
  wrong outcome, and minimum bounded correction.
- [ ] `technical_candidate_verdict`, `evidence_readiness_verdict`, and
  `governance_landing_verdict` are separate.
- [ ] `RUNTIME_PENDING` is not mislabeled P1 when runtime execution is the next
  authorized proof gate and static mechanism/probe is complete.
- [ ] Reviewer does not move the acceptance endpoint, authorize a retry, grant
  an exception, construct the subject, or supply the oracle.
- [ ] Coverage incomplete cannot be PASS.

## F. Closure route selection

- [ ] Technical/business rows passed and only manifest/terminal/narrative truth
  is missing: use at most one immutable external addendum; do not rerun the
  candidate.
- [ ] A dangerous capability is non-essential: remove/defer it and retain
  residual risk as hardening.
- [ ] Lower assurance is acceptable only through a human-approved, versioned
  exception with waived rows, risk, controls, expiry, and claim ceiling.
- [ ] Project state or governance landing occurs after, and separately from,
  technical/evidence readiness.

## G. Circuit-breaker evaluation

Record cumulative values before deciding:

| Counter | Value |
|---|---|
| Development Lab iterations | |
| Governed candidate count | |
| Independent review count | |
| Evidence addendum count | |
| In-scope P1 family count | |
| Elapsed engineer-hours | |
| Active human minutes | |
| Agent/test/review runtime | |
| Repeated failure family | `true / false` |
| Required effective entry reached | |

Trip immediately if any answer is true:

- [ ] Candidate-02 still has an in-scope P0/P1.
- [ ] A fourth P1 family or new root-cause family appeared.
- [ ] Contract, criteria, authority, threat model, artifact, or scope grew after
  freeze.
- [ ] Elapsed time reached 4 hours without a new human Decision, or 10 hours
  without a written rebaseline and budget.
- [ ] Required effective entry was not reached.
- [ ] Subject/oracle/observer independence failed.
- [ ] Engine-count, ownership, mutation, rollback, or authority is ambiguous.
- [ ] Coverage is incomplete but closure is being claimed.
- [ ] A checklist-covered failure family repeated.
- [ ] Reviewer discovery is the only mechanism finding the next basic branch.
- [ ] The team cannot explain in a short causal model why the candidate should
  pass.

If tripped, select exactly one:

- [ ] `ARCHITECTURE_RESET_REQUIRED`
- [ ] `CANDIDATE_LINEAGE_STOP`
- [ ] `DE_SCOPE`
- [ ] `REDUCED_ASSURANCE_DECISION_REQUIRED`
- [ ] `DEFER`
- [ ] `CANCEL_SCOPE`

Do not issue “one exact next retry” as a default route.

## H. Correction log and effort telemetry

- [ ] Append reviewer false positives and false negatives.
- [ ] Append retired oracle assumptions.
- [ ] Append repeated failure families and checklist rows added.
- [ ] Record findings moved to adjacent/hardening.
- [ ] Record start/stop, active human minutes, agent/test/review runtime,
  elapsed engineer-hours, first failed row, counts, external calls, paid cost,
  and estimated opportunity cost.
- [ ] Identity or version changes preserved cumulative counters.

## I. Automation-not-forgotten update

On every new project adoption or governed-gate use:

- [ ] Update `adoption_count` and distinct project IDs.
- [ ] Update `gate_count` and repeated mechanical check-set observations.
- [ ] Update schema/field-semantic stability.
- [ ] Update manual effort, missed detection, and inconsistency evidence.
- [ ] Update `last_evaluated_at`.
- [ ] Evaluate `REVIEW_DUE` and `BUILD_CANDIDATE_ELIGIBLE`.
- [ ] If a trigger first becomes true, request one human `BUILD / DEFER /
  REJECT` Decision; do not implement automatically.

Record these observations in the adopting project's own automation or capability
governance register. Public Core does not prescribe a private control-plane
location.
