# Loop Engineering

## 核心问题

如何让执行、观察、评价、决策和更新形成有预算、有停止条件、可恢复的闭环。

## 范围

- Plan -> Execute -> Observe -> Evaluate -> Decide -> Update
- feedback capture、error attribution、replan、repair、retry
- stop、budget、plateau、oscillation、human intervention
- 经验回流 Workflow、Harness、Prompt、Knowledge

## 已吸收模式

- 反复违规应回到 validator 或边界，不只改最终文本
- 技术失败不得伪造业务结果
- 人工晋级是当前学习闭环的正式边界
- 最小 Goal Loop = goal + verification + stop condition
- Goal、Timer、Maker/Checker 是由弱到强的三类循环；跨轮状态必须外置
- 循环同时放大 verification debt、comprehension rot、cognitive surrender 和 token cost
- 搜索/改进循环必须显式处理 budget、plateau、oscillation、safety 与 human stop；停止是合法输出

## 可复用资产

- [Budgeted Search Loop](patterns/budgeted_search_loop.md)：搜索状态、停止策略、失败回流和 editable-surface 约束
- [Human-Gated Learning Loop](patterns/human_gated_learning_loop.md)：反馈归因、候选、人工决定、Replay 和 Promotion
- [Inspectable Loop Contract](contracts/inspectable_loop_contract.md)：trigger、scope、permission、budget、verifier、统一终态和 recovery

## 当前缺口

缺第二个项目的完整 loop、统一 stop policy 和通用 runner。
