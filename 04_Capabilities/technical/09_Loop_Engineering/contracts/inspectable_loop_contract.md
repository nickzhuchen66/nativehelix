# Inspectable Loop Contract

## 定义

Loop 不是“持续 prompt 直到成功”，而是一个可检查、有限、可停止和可恢复的运行合同。

## 必填字段

`id`、`type`、`trigger`、`input`、`scope`、`permissions`、`budget`、`verifier`、`retry`、`stop_conditions`、`state_path`、`review_artifact`、`recovery`。

## 统一终态

- `done` / `verifier_passed`
- `verifier_failed`
- `blocked`
- `budget_exhausted` / `attempt_limit`
- `needs_human_review`
- `unsafe_to_continue`
- `no_active_work`
- `stopped`

Timeout、validator unavailable 和 missing evidence 默认进入非成功终态；不得把“无法验证”折算为 proceed。

## 运行要求

- 有界 retry 与 backoff，不允许递归扩大作用域。
- 每轮写入 durable state 和 evidence，而非只保留对话摘要。
- verifier 决定成功；Agent 自报完成不是终态证据。
- 中断后能从 state/review artifact 恢复或显式 rollback。
- 新增任何定时、daemon、watcher 或自修复流程时，必须先登记合同。

## 来源与证据等级

由 EXT-2026-07-12-012 的 Loop Contract 实现提炼，并将其 fail-open Fleet timeout 反转为私有 fail-closed 不变量。

