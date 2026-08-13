# Harness Candidate Interface — Candidate Contract

## 目的

为不同 proposer、runner 和 evaluator 提供最小互操作边界，使 Harness 搜索可以先校验接口，再运行昂贵评价。

## Candidate

- `candidate_id`、`parent_version`、`proposer_revision`
- `editable_surface`、`patch_or_artifact`
- `input_schema_version`、`output_schema_version`
- `tool_dependencies`、`permission_request`、`budget_request`
- `hypothesis`、`expected_tradeoffs`、`rollback_target`

## Evaluation Packet

- `baseline_version`、`evaluator_revision`、`fixture_set_revision`
- `held_in_metrics`、`held_out_metrics`、`passing_behavior_regressions`
- `cost`、`latency`、`variance`、`complexity_delta`
- `redline_violations`、`decision`、`decision_reason`
- `artifacts`、`traces`、`human_approval`

## Conformance 顺序

```text
schema -> interface -> protected surface -> permission/budget
       -> smoke -> held-in -> held-out -> rollback drill -> promotion
```

## 稳定性边界

这是从外部模式提炼的 candidate contract，不是稳定 SDK。只有在两个异质 Host 实现并通过 conformance checks 后，才可冻结字段、版本和兼容政策。

## 来源与证据等级

由 EXT-2026-07-12-001 的 Meta-Harness interface validation、candidate history 和 Pareto evaluation 提炼，并按本地 Promotion Policy 增加版本、权限与人类闸门。

