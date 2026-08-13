# Durable Agent Network Run Contract

## 目的

把多 Agent 路由循环变成可恢复、可限额、可审计的运行单元；持续性来自事件、状态和幂等合同，而不是长会话本身。

## 必需状态

- `run_id`、`thread_id`、tenant/actor、workflow/network version
- canonical `message_id`、输入摘要/敏感级别、当前 router/agent/step
- typed shared state、append-only events、result checkpoints
- iteration/tool/token/time/cost budgets 与当前消耗
- approval waits、deadline、correlation key、resume reason
- side-effect idempotency key、compensation/rollback state

## 执行顺序

1. 鉴权并创建/确认 thread；先持久化用户意图和 canonical message id。
2. 恢复历史时重新校验 tenant、权限、版本和外部世界状态。
3. 优先使用 deterministic router；LLM router 只在声明的不确定区间使用。
4. 每次 Agent/Tool 前检查正数上限与权限；每次完成后立即 checkpoint。
5. Human wait 必须有事件类型、对象关联、超时和超时后的失败/升级语义。
6. 只有满足成功 predicate 才标记 completed；失败保留最后安全 checkpoint。

## 强制不变量

- `max_iterations > 0`；`0/unset = unlimited` 不得进入生产。
- Retry 不重复外部副作用；写操作具备幂等键或补偿路径。
- 用户消息、Agent 结果和流事件共享可关联 ID，数据库有唯一性约束。
- Client-authoritative history 与 server storage 不可静默混合；冲突必须显式解决。
- 多租户容量控制不等于数据授权；读写都校验 tenant/object ownership。
- Durable runtime 不等于 sandbox；工具权限仍经过独立 authority gate。

## 证据

由 Inngest AgentKit 的 Network、History Adapter、durable step、retry 与 `waitForEvent` 机制提炼；私有合同补强了其默认无限循环和成功后批量保存的边界。尚无跨项目运行证据。

