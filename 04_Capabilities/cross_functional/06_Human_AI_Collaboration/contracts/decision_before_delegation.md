# Decision Before Delegation

## 目的

把改变方向、范围、成本或验收标准的决定放在执行指令之前，防止 Builder 在不完整信息下替人做产品或治理决策。

## Decision Packet

- decision_id、question、context、options
- accepted option 与 rejected alternatives
- rationale、evidence、assumptions、risks
- scope/forbidden scope、authority owner
- downstream changes、superseded decision、effective_at

## 委派规则

- 已决事项才能变成命令；未决事项以 `decision_required` 返回。
- 执行中出现新方向选择时暂停相关分支，保留安全的独立工作。
- Delegation 只能在 Decision Packet 范围内细化实现，不能改变目标和 redline。
- 决策变化生成新 revision，不静默重写旧任务的含义。

## 来源与证据


