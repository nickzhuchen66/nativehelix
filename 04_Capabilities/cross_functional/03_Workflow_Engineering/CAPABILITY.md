# Workflow Engineering

## 核心问题

如何把 Goal 转换成有依赖、状态、人工闸门、验收和恢复路径的可执行工作流。

## 范围

- Goal / Task / Step 分解
- 串行、并行、分支和依赖锁步
- 状态机、checkpoint、resume、cancel、compensation
- Decision Packet、Task Packet、Acceptance Contract
- Workflow 与 Agent 自主规划的边界

## 已吸收模式

- 决策前置、命令后置
- 有依赖的步骤基于真实结果逐步推进
- Task Packet 必须自包含
- Feature 以行为、验证、状态、证据和依赖组成；默认 WIP=1
- 会话以 clock-in / work / verify / clock-out 形成可恢复事务
- Workflow 可表示为代码/图并进行受限搜索，但必须以接口检查、预算、独立评价和停止条件包围

## 可复用资产

- [Workflow Search as Code](patterns/workflow_search_as_code.md)：候选归档、搜索闭环、Pareto 接受和不适用边界
- [Spec Artifact Chain](patterns/spec_artifact_chain.md)：Constitution、Spec、Plan、Tasks、Analyze、Implement 与 Converge 的来源链
- [Durable Workflow Run](contracts/durable_workflow_run.md)：持久状态、Gate、Resume、分支/循环/并行和副作用恢复
- [Durable Agent Network Run](contracts/durable_agent_network_run.md)：确定性优先路由、canonical message、逐步 checkpoint、事件等待与正数预算
- [Intent Routing Preview](contracts/intent_routing_preview.md)：最轻充分路径、备选解释、权限边界与执行前 verifier
- [Workflow Necessity Gate](contracts/workflow_necessity_gate.md)：在架构冻结前识别标准 Workflow 需求，强制提示人类决策，并阻止 CPO/Builder 静默绕过
- [Decision Before Delegation](../06_Human_AI_Collaboration/contracts/decision_before_delegation.md)：方向决策与执行委派分离
- [Delegation / Task Packet](../06_Human_AI_Collaboration/contracts/delegation_task_packet.md)：自包含任务、验收、依赖、权限和恢复字段

## 当前缺口

缺跨项目统一 Goal/Task schema 和可执行 workflow runtime。Workflow Necessity Gate 当前是 documented contract，不自动创建、注册或激活 Workflow。
