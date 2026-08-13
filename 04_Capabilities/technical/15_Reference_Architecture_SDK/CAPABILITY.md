# Reference Architecture & SDK

## 核心问题

何时把跨项目验证过的能力固化成稳定接口、参考实现、SDK 和 conformance suite。

## 范围

- entity、contract、event、state schema
- Host Adapter interface
- provider-neutral model/tool adapters
- reference implementation
- conformance and compatibility tests
- versioning、deprecation、migration

## 当前状态

已建立 Reference Architecture skeleton，尚无可称为稳定 SDK 的跨项目运行实现。

## 已吸收候选模式

- Spec as Product：规范描述语义、边界和不变量，Host 自主选择实现。
- 用多个异质 Host 实现的解释差异发现规范歧义，再通过 conformance test 收敛。
- [Harness Candidate Interface](contracts/harness_candidate_interface.md)：候选、评价包和 conformance 顺序；当前仅为 candidate contract
- [Backend Permission Boundary](contracts/backend_permission_boundary.md)：filesystem、execute、sandbox 与 child permission 的独立控制面
- [Cross-Host Instruction Adapter](contracts/cross_host_instruction_adapter.md)：canonical instruction model、Host projection、explain/lint 与 conformance fixtures
- [Harness Migration Safety Gate](contracts/harness_migration_safety_gate.md)：跨 Host inventory、语义映射、secret/path 检查、dry-run、验证与 rollback
- [Typed Skill Execution Graph](contracts/typed_skill_execution_graph.md)：typed node/edge、script/judgment 分工、编译 provenance、运行时图约束与 node-level repair

## 红线

在第二个异质宿主和 conformance evidence 出现前，不冻结通用 SDK 接口。
