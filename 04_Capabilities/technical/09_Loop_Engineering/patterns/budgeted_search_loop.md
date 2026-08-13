# Budgeted Search Loop

## 状态机

```text
initialize -> select -> propose -> validate -> execute -> evaluate -> decide
     ^                                                        |
     +---------------- accept/reject and persist --------------+
```

每轮记录 `iteration`、`parent`、`candidate`、`budget_used`、`metrics`、`decision`、`stop_reason` 和 `next_action`。

## 停止条件

- 成功：达到验收阈值且无硬红线。
- 预算：token、模型调用、时间、并发或金钱触顶。
- Plateau：连续 N 轮没有超过最小有效改进。
- Oscillation：候选在等价状态间往返，或指标相互抵消。
- Safety：权限、secret、污染、不可逆性或 evaluator 完整性失败。
- Human：需要领域判断、扩大授权或接受 Pareto 权衡。

## 设计要求

- 停止是正式输出，不应被当作异常隐藏。
- Rejected candidate 和失败归因进入下一轮检索，但不得自动污染 Curated Knowledge。
- 更强递归不保证更好；当 proposer 能力不足或 evaluator 模糊时，应退出到人工设计。
- 运行中只允许修改声明过的 editable surface。

## 来源与证据等级

由 EXT-2026-07-12-001 的 Agent loop、AFlow、STOP 与 Self-Harness 提炼；参数 N 和阈值必须由具体项目校准。

