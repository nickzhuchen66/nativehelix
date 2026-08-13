# Adaptive Oversight Envelope

## 目的

让监督方式随“Agent × task class × environment × user/team experience × risk”调整，从逐动作审批演进为可监控、可中断、会主动澄清的监督，而非简单打开全局 auto-approve。

## Oversight Modes

```text
approve-each -> checkpoint-gated -> monitor-and-interrupt -> exception-only
```

模式按 task class 授予，分别声明 read/write/commit/deploy/external-side-effect；高不可逆风险可永久保留 action gate。

## Entry Evidence

- 代表性任务成功率、negative/adversarial/recovery 记录
- user/team interrupt quality、takeover latency、approval capacity
- Agent clarification precision：该问时问、不该问时不制造阻塞
- observability completeness、rollback time、permission/secret enforcement
- 当前 model/tool/prompt/environment fingerprint 与 expiry

## Runtime Controls

- 始终展示可理解的 plan/state/current action 和 cancel/takeover。
- 复杂任务允许 Agent 因缺信息、凭据、歧义和高风险主动停下。
- Interrupt 是一等事件：记录原因、所处状态、已发生副作用和恢复路径。
- 用户少点 approve 不代表监督消失；监控覆盖、干预能力和责任记录必须增强。

## Calibration

定期比较 auto-approve、interrupt、clarification、failure/rollback 和 rubber-stamp 指标。经验增长可以扩大运行连续性，但不能把熟悉度当安全证明。任何 model/Harness/permission/risk change 按 Task-Class Trust Envelope 重置或降级。

## 来源与证据

由 Anthropic 对数百万 Claude Code/API 交互的隐私保护分析提炼：经验用户同时表现出更高 auto-approve 与更高 interrupt，复杂任务中 Agent 澄清增长更快。来源也明确披露分类由模型生成、API tool-call 抽样偏差和无法观察下游人工 Gate，因此只支持监督模式假设，不支持普遍放权结论。

