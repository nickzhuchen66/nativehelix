# Convergence Ledger & Project Adapter Template v0.1

Status: `TEMPLATE / NO_AUTHORITY`  
Capability: Architecture Convergence & Circuit Breaker

Complete one adapter per adopting project and one append-only ledger per task
family. Do not use this template as a project Decision or execution authority.

## Part A — Project Adapter

### A1. Identity and authority

| Field | Project value |
|---|---|
| project_id | `<stable project identifier>` |
| adapter_version | `<version>` |
| capability_package_manifest_sha256 | `<sha256>` |
| final_human_authority | `<local role/Decision source>` |
| capability_governance_owner | `AI-Native Architect capability governance` |
| local_resume_authority | `<local human authority>` |
| formal_state_source | `<project path/record>` |
| adoption_status | `PROPOSED / ACTIVE / PAUSED / RETIRED` |
| adopted_at | `<timestamp or NOT_ADOPTED>` |

### A2. Local boundaries

| Surface | Local binding |
|---|---|
| business authority | `<project-owned source>` |
| gate/acceptance matrix | `<path + version + hash>` |
| candidate identity | `<project contract>` |
| evidence authority | `<project contract>` |
| host/data/filesystem | `<project boundary>` |
| runtime/production | `<project boundary>` |
| protected surfaces | `<inventory>` |
| success claim ceiling | `<exact statement>` |

### A3. Local numeric controls

The project may be stricter than the common defaults. It may not silently be
looser.

| Control | Common default | Local limit |
|---|---:|---:|
| governed candidates per gate | 2 | |
| independent reviews per gate | 2 | |
| independent review per candidate | 1 | |
| in-scope P1 families per review | 3 | |
| evidence-only addendum | 1 | |
| status review | 2 engineer-hours | |
| automatic pause | 4 engineer-hours | |
| hard stop | 10 engineer-hours | |

### A4. Dangerous-capability threshold

List operations requiring explicit current-row necessity and separate local
authority.

| Capability | Danger | Required current row | Default route if non-essential |
|---|---|---|---|
| `<operation>` | `destructive / privileged / external / durable / costly` | `<row or NONE>` | `DE_SCOPE / HARDENING` |

### A5. Local routing

| Route | Local owner | Required artifact |
|---|---|---|
| evidence-only addendum | | |
| de-scope | | |
| reduced-assurance exception | | |
| architecture reset | | |
| lineage stop | | |
| resume after pause | | |
| governance landing | | |

### A6. PROJECT ADAPTER EXAMPLE

This is illustrative only.

```yaml
project_id: EXAMPLE_PROJECT_A
final_human_authority: Project Owner
formal_state_source: governance/current_state.json
business_authority: project-owned durable store
dangerous_capabilities:
  - automatic evidence deletion
local_limit_overrides:
  governed_candidates_per_gate: 1
  automatic_pause_engineer_hours: 3
success_claim_ceiling: manual single-project qualification only
```

The example's store, authority names, and limits are not Generic Capability
Core defaults.

## Part B — Append-only Convergence Ledger

### B1. Task-family header

| Field | Value |
|---|---|
| task_family_id | |
| current_gate | |
| matrix_version/hash | |
| started_at | |
| current_status | `LAB / CANDIDATE_01 / CANDIDATE_02 / PAUSED / STOPPED / ACCEPTED / DEFERRED` |
| circuit_breaker_state | `CLEAR / WATCH / TRIPPED` |
| no_work_resumed | `true / false` |

### B2. Cumulative counters — never reset by identity/version changes

| Counter | Cumulative value |
|---|---:|
| Development Lab iterations | 0 |
| governed candidates | 0 |
| independent reviews | 0 |
| evidence addenda | 0 |
| in-scope P1 families in current review | 0 |
| elapsed engineer-hours | 0 |
| active human minutes | 0 |
| agent runtime minutes | 0 |
| test runtime minutes | 0 |
| review turnaround minutes | 0 |
| external calls | 0 |
| paid cost USD | 0 |

### B3. Gate/candidate events

Append; do not overwrite.

| Event ID | Time | Stage | Candidate/review | First failed row | Failure family | Repeated? | Technical verdict | Evidence verdict | Governance verdict | Next route |
|---|---|---|---|---|---|---|---|---|---|---|
| | | | | | | | | | | |

### B4. Findings

Use
[`ANA_CONVERGENCE_REVIEW_RECORD_v0.1`](../contracts/convergence_review_record_v0.1.schema.json).

| Finding ID | Bucket | Classification | Severity | Frozen row | Current reachability | Wrong outcome | Minimum correction | Successor gate |
|---|---|---|---|---|---|---|---|---|
| | | | | | | | | |

### B5. Reviewer correction log

| Correction ID | Time | Kind | Prior assumption/finding | Correction | Checklist impact |
|---|---|---|---|---|---|
| | | | | | |

Kinds: `FALSE_POSITIVE`, `FALSE_NEGATIVE`,
`RETIRED_ORACLE_ASSUMPTION`, `CHECKLIST_ROW_ADDED`,
`MOVED_TO_HARDENING`, `REPEATED_FAILURE_FAMILY`, `ERRATUM`.

### B6. Circuit-breaker decision

| Question | Result |
|---|---|
| Candidate-02 still has P0/P1? | |
| fourth/new P1 family? | |
| criteria/authority/scope growth after freeze? | |
| elapsed 4h/10h threshold? | |
| effective entry not reached? | |
| subject/oracle/observer dependence? | |
| engine/ownership/rollback ambiguity? | |
| checklist family repeated? | |
| coverage incomplete? | |

Decision: `CLEAR / WATCH / TRIPPED`  
Exact route: `ACCEPT / ADDENDUM / DE_SCOPE / EXCEPTION_DECISION_REQUIRED /
ARCHITECTURE_RESET_REQUIRED / CANDIDATE_LINEAGE_STOP / DEFER / CANCEL_SCOPE`

### B7. Automation-trigger telemetry

After each new adoption or gate, update the adopting project's own register
with adoption/gate/schema-stability/manual-effort/error observations and
`last_evaluated_at`. A true trigger requests a human decision only.

## Part C — Completion statement

- current fact sources: `<paths/hashes>`
- inference: `<bounded explanation>`
- generic rules applied: `<rule IDs/sections>`
- project-specific fields: `<adapter sections>`
- deferred automation: `<register evaluation>`
- authorized actions: `<explicit local Decision only>`
- prohibited actions: `<list>`
