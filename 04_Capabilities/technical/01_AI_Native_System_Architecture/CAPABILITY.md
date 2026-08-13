# AI-Native System Architecture

## 核心问题

如何把确定性软件、概率性模型、人类授权和持续学习组织成可治理、可替换、可演进的系统。

## 范围

- Cognition / Execution、Control / Data Plane 分层
- Agent、Workflow、Context、Tool、Memory、Evaluation 的整体边界
- Human authority、Host Adapter 和部署阶段
- 当前事实、目标架构与迁移路线分离

## 基础资产

- `06_Reference_Assets/technical_architectures/AI_NATIVE_REFERENCE_ARCHITECTURE_v0.1.md`
- `05_Skills/architect/design-ai-native-architecture/`
- [Governed Config Compiler](patterns/governed_config_compiler.md)：人工治理源到薄 Runtime Config 的单向生成与 lineage
- [Brain–Hands–Session Separation](patterns/brain_hands_session_separation.md)：无状态推理 Harness、可丢弃执行环境与耐久事件会话的失败隔离
- [Architectural Decision Evidence Record](contracts/architectural_decision_evidence_record.md)：冻结版本、覆盖声明、五类决策、source evidence、推断置信度与复核记录

## 当前边界

Public Core 提供设计资产与候选合同，但不携带私有项目工程证据。跨项目 Reference Architecture 尚未完成 conformance 验证。
