# Delegation / Task Packet

## 最小字段

- `task_id`、goal、why、owner、role binding
- decision references、context references、source precedence
- scope、allowed paths/tools、forbidden actions
- inputs、expected artifacts、acceptance contract
- dependencies、parallel-safety、budget、deadline
- validation commands、evidence-return contract
- failure/retry/escalation/takeover policy

## 自包含要求

接收者不应依赖隐含聊天历史才能判断任务目标和边界。Context 引用可渐进披露，但决策、禁改范围、验收和授权必须在 Packet 中明确。

## 完成语义

`work_reported` 不等于 `accepted`。Builder 返回改动、证据、未决项和残余风险；Reviewer/Owner 依据 Acceptance Contract 决定 accept、rework、partial 或 reject。

## 来源与证据


