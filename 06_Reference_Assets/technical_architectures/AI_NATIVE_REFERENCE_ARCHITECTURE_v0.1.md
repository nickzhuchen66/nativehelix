# AI-Native Reference Architecture v0.1

**Status:** skeleton / not reference-ready

```text
Human Authority Plane
        |
Collaboration + Decision Protocols
        |
Agent Product / Workflow Plane
        |
Context + Tool + Model Plane
        |
Harness + Contract + Policy Plane
        |
State + Artifact + Memory Plane
        |
Evaluation + Audit + Recovery Plane
        |
Learning Loop / Human Promotion
```

## 不变量

1. AI 输出不得直接等于终局业务决定。
2. Eligibility、match、route、surface 和 promotion 分离。
3. Raw、canonical 和 effective 输出分离。
4. Review、write、landing、verification、approval 和 promotion 分态。
5. Runtime state 与 curated knowledge 分离。
6. 付费、不可逆、外部写入和权限扩大由人批准。
7. Improvement generator 不得修改 evaluator、permission 或 acceptance criteria。

## 已提炼但未冻结的构件

| Plane | Candidate assets |
|---|---|
| Human Authority | Human Sovereign Gate；Review / Approval Envelope |
| Collaboration | Functional Role Schema；Decision Before Delegation；Delegation / Task Packet；Conflict Preservation |
| Context / Grounding | Context Recovery Manifest；Grounding and Evidence Admission；Boundary Before Relevance |
| Workflow | Spec Artifact Chain；Durable Workflow Run |
| Harness | Harness as Runtime OS；External Model Review Firewall；Local Manual Run Pack；Minimal Harness Baseline |
| State / Memory | Governed Config Compiler；Curated / Runtime Promotion |
| Evaluation | Two-Sided Evaluation Harness；Self-Improvement Evaluation Gate；Evaluation Trial Protocol；Baseline Then Gate |
| Operations | Evidence Admission State Model；Execution Audit Envelope；Lifecycle Cost Gate；Recovery and Human Takeover；Execution Runtime Port；Normalized Agent Trajectory |
| Learning | Human-Gated Learning Loop；Bounded Harness Improvement Loop |
| Safety / Conformance | Static Capability Risk Gate；Environment Capability Contract |

这些构件已经可用于项目设计与审查，但尚未形成稳定 schema/SDK。Host 必须绑定领域实体、权限、工具、状态、验证器和责任人。

## 待补

- 统一实体与事件 schema
- Host Adapter contract
- conformance suite
- 第二个结构不同的公开运行实现
- production incident 和 recovery evidence
