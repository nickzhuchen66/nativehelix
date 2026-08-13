# Harness Engineering

## 核心问题

如何把 Agent 放进受控执行环境，使其权限、输入、输出、成本、验证、失败和人工接管可治理。

## 范围

- Constitution、protected/editable surfaces
- Tool allowlist、scope、permission、cost、redline
- Structured input/output contracts
- deterministic validators、quarantine、timeout、budget
- Generator / Evaluator separation
- Run Pack、audit、replay、pause/takeover

## 已吸收模式

- Local Manual Before Automation
- External Model Review Firewall
- Two-sided Evaluation
- Legal Stop Is a Successful Outcome
- 最小仓库 Harness 可用 Instructions / State / Verification / Scope / Lifecycle 五面审查
- 完成状态由外部可执行证据驱动，失败信息应包含 WHAT / WHY / FIX
- Harness 组件必须有引入证据、兼容对象、复验触发和退出条件，接受持续 Gardening
- 控制除前馈/反馈、确定性/推理性外，还要声明 always-on / per-change / conditional / human-invoked 激活策略
- 外部 Harness 必须披露技术、宿主、语言、流程和工程文化假设
- Harness 作为 Runtime OS 分离 cognition、execution、evaluation、control 与 persistence；自改只发生在声明的 editable surface
- Harness 可按 middleware 组合 planning、skills、filesystem、subagent、summarization、memory 与 human interrupt；层次顺序和不可排除核心层都是合同
- Architecture convergence 必须先冻结 acceptance boundary，再分离 Development Lab、Governed Candidate 与 Independent Review；相邻发现不得无 row/reachability/wrong-outcome/minimum-delta 映射而移动验收终点
- Candidate/review/P1-family/time 采用累计 circuit breaker；证据缺口优先 external addendum，非必要危险能力优先 de-scope，identity/version 变化不重置计数

## 外部实现镜子

- `walkinglabs/learn-harness-engineering` 提供 scaffold、结构评分、自检和宽表审计；已验证脚本能端到端运行，但尚未验证真实 Agent 成功率提升。

## 可复用资产

- [Harness as Runtime OS](patterns/harness_as_runtime_os.md)：运行时分层、editable/protected surface 与作业控制
- [Minimal Harness Baseline](patterns/minimal_harness_baseline.md)：用最小线性 Bash Harness 做复杂机制的 ablation 对照
- [Static Capability Risk Gate](checklists/static_capability_risk_gate.md)：部署前扫描 Agent 的 shell、文件、网络、secret、publish 与未声明能力面
- [Composable Middleware Harness](patterns/composable_middleware_harness.md)：核心层次、custom insertion、child 同构 Harness 和最终工具排除
- [Agent-Editable Browser Harness](patterns/agent_editable_browser_harness.md)：受保护浏览器原语、可编辑 helper、session broker 与 runtime profile
- [Repository Instruction Quality Gate](checklists/repository_instruction_quality_gate.md)：scope、命令安全、freshness 与跨 Host conformance
- [Typed Harness Program](contracts/typed_harness_program.md)：解析期 intent/capability/budget/check 完整性、taint quarantine 与 guarantee report
- [Skill Supply-Chain Admission](checklists/skill_supply_chain_admission.md)：外部 Skill 的 immutable source、权限、投影、验证、撤销与更新准入
- [Harness Lifecycle Control Matrix](patterns/lifecycle_control_matrix.md)：feedforward/feedback、computational/inferential 与 pre-action 到 runtime/evolution 的控制布置
- [Composed Capability & Taint Gate](../10_Operational_Control_Engineering/contracts/composed_capability_taint_gate.md)：跨工具路径的 private/untrusted/exfiltration 组合风险与 taint enforcement
- [Natural-Language Harness Policy](contracts/natural_language_harness_policy.md)：自然语言策略、共享 runtime charter 与确定性 enforcement 的分层及 conformance
- [Harness Membership and Scope Test](checklists/harness_membership_boundary.md)：loop、环境动作、task-aware context、独立 control 的组件边界与产品 scope 修正
- [Convergence Preflight & Circuit-Breaker Checklist](checklists/convergence_preflight_and_circuit_breaker_v0.1.md)：从 pre-design、Lab exit 到 whole-surface review、correction log 和 stop route 的一次性检查表

## 当前边界

Public Core 中的资产保留各自设计边界，但不携带私有运行证据。通用 Harness SDK 尚未形成。
