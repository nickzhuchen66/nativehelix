# Operational Control Engineering

## 核心问题

如何统一管理状态、观测、审计、成本、秘密、失败恢复和生产边界。

## 范围

- run metadata、trace、attempt、retry、circuit、error stage
- review/write/land/verify/approve/promote 分态
- cost estimate / budget / actual-or-unknown
- secret-safe scanning、checksum、process-boundary violations
- partial、failed、quarantined、deferred、takeover、replay

## 已吸收模式

- Legal stop 是成功控制结果
- `actual_cost=null` 不等于零成本
- review passed 不授予写入或 promotion
- secret 文件内容不得因审计而读取
- 会话结束必须满足 build、test、progress、artifact hygiene 和 restart path 的 clean-state predicate
- runtime trace 与 acceptance/process trace 分开记录，再通过 task/feature identity 关联
- permission、evaluator、held-out、预算上限、promotion 和 rollback 必须位于自改循环之外

## 可复用资产

- [Protected Self-Modification Control Plane](contracts/protected_self_modification_control_plane.md)：控制不变量、作业接口和合法失败语义
- [Evidence Admission State Model](contracts/evidence_admission_state_model.md)：review/write/land/verify/approve/promote 分态
- [Execution Audit Envelope](contracts/execution_audit_envelope.md)：运行、尝试、成本、错误、route、secret、checksum 和恢复字段
- [Lifecycle Cost Gate](contracts/lifecycle_cost_gate.md)：调用前授权、运行中 ceiling 与执行后 actual-or-unknown
- [Recovery and Human Takeover](contracts/recovery_takeover.md)：partial/failure/quarantine、有限重试、接管和 rollback
- [Execution Runtime Port](contracts/execution_runtime_port.md)：Deployment/Runtime/Session 分离、provider capability 与 fail-closed negotiation
- [Normalized Agent Trajectory](contracts/normalized_agent_trajectory.md)：跨 Agent step/tool/observation/metric 归一化和敏感报告边界
- [Browser Session Authority Envelope](contracts/browser_session_authority_envelope.md)：浏览器 profile、origin/account、动作权限、隐私、成本与 teardown
- [Composed Capability & Taint Gate](contracts/composed_capability_taint_gate.md)：工具声明信任、session taint、组合能力风险、egress/credential enforcement

## 当前缺口

缺统一事件模型、telemetry backend、通用 recovery controller 和 production incident evidence。
