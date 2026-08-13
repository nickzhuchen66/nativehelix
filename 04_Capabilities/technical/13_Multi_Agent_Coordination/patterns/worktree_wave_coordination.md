# Worktree Wave Coordination

## 适用条件

仅当工作可拆成多个文件范围独立、依赖明确、各自可验证且 merge owner 已知的 stream 时使用。

## Wave 协议

1. 为每个任务声明 scope、依赖、owner、branch、verifier 和 evidence artifact。
2. 同 wave 的写范围不得重叠；每个执行者使用独立 worktree/branch。
3. 收集完整 handoff，并压缩为 discovery brief；brief 链接原始证据而不替代它。
4. 下一 wave 只读取已接受的发现与当前世界状态，避免把前一轮猜测固化为事实。
5. 按依赖顺序验证和合并；受保护范围必须经过 human/policy gate。

## Shared-state 规则

- discovery、brief、telemetry：append-only；
- session/campaign DAG：single coordinator lock-on-write；
- per-agent claim：owner-only；
- readiness report：不可被执行者自我覆盖；
- speculative loser：保留 lineage，不进入 active baseline。

## Fail-closed 规则

超时、validator 缺席、readiness unknown、scope overlap 或合并验证失败均阻止自动推进。不得以“避免阻塞”为理由把 timeout 计为同意。

## 来源与证据等级

由 EXT-2026-07-12-012 的 Fleet/worktree/state 实现提炼；其 Quick Mode auto-merge 与 timeout-proceed 语义明确排除。

