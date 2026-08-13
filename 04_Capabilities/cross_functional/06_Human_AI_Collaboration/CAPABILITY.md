# Human–AI Collaboration

## 核心问题

人、多个 AI 和领域专家如何在信息与判断均不完备时协作，同时保持接地、挑战能力和责任清晰。

## 范围

- Functional Role Schema
- Vision Owner、Architect、Builder、Evaluator、Domain Expert
- Decision-before-Delegation
- Review Loop Closure、Context Handoff
- Human takeover、唯一终局责任
- 同职能多角色冲突

## 已吸收模式

- AI 可提议、执行、评审和挑战，但不夺取终局决策
- 角色按职能定义，具体人和模型是 Host Profile
- 多模型同意不等于独立验证
- 信任属于 Agent × task class × environment × authority surface，必须可撤销并到期
- human approval 是有限容量；Gate、Rate、Budget 必须一起设计

## 可复用资产

- [Human Sovereign Gate](contracts/human_sovereign_gate.md)：终局责任、权限、付费和 promotion 的人类闸门
- [Functional Role Schema](contracts/functional_role_schema.md)：职能角色与 Host Binding 分离
- [Decision Before Delegation](contracts/decision_before_delegation.md)：先决策、后委派
- [Delegation / Task Packet](contracts/delegation_task_packet.md)：自包含任务与证据回收合同
- [Review / Approval Envelope](contracts/review_approval_envelope.md)：Review 与业务 Approval 分离
- [Conflict Preservation and Arbitration](contracts/conflict_preservation_arbitration.md)：保留分歧、独立证据和仲裁路径
- [Task-Class Trust Envelope](contracts/task_class_trust_envelope.md)：earned、narrow、conditional、revocable、expiring 的授权
- [Approval Capacity Gate](contracts/approval_capacity_gate.md)：审批入口、通过率、审阅预算与饱和处置
- [Adaptive Oversight Envelope](contracts/adaptive_oversight_envelope.md)：按任务证据从逐动作批准演进到 monitor-and-interrupt，并保留澄清、接管、撤销与到期

## 当前缺口

同职能多角色冲突协议和机器可读 Delegation/Review Envelope 尚未验证。
