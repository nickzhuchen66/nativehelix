# Context Engineering

## 核心问题

在有限上下文中选择、组织、更新和恢复 Agent 真正需要的事实、决策、约束和未决项。

## 范围

- Context selection、assembly、compression、freshness
- Source precedence 和 conflict resolution
- Context Pack、Handoff、跨会话恢复
- Context pollution、陈旧事实和第二知识库风险

## 已吸收模式

- Handoff 是入口，不是事实源
- 决策、设计、待办和路线各有固定载体
- 正式项目文件在冲突时优先于归档和摘要
- 根指令文件是短路由器；细节按任务渐进披露
- 长期规则保留来源、适用条件和退出条件，避免指令只增不减
- ACE/MCE 候选：轨迹经 Reflector 生成 delta，由 Curator 确定性合并；静态 Context 与动态检索/组合算子分开演进

## 可复用资产

- [Repository Instruction Resolution](contracts/repository_instruction_resolution.md)：canonical source、nested scope、precedence、conflict、Host projection 与 freshness
- [Incremental Context Evolution](patterns/incremental_context_evolution.md)：增量上下文、delta schema、Curator 闸门和 Meta 层边界
- [Context Recovery Manifest](contracts/context_recovery_manifest.md)：恢复入口、正式载体优先级与 clock-in/clock-out
- [Agent-Legible Repository](contracts/agent_legible_repository.md)：短地图、版本化知识面、实际加载路径、hard/loaded/soft steering 与机械 freshness

## 当前缺口

缺统一 Context Pack schema、freshness validator 和跨项目恢复测试。
