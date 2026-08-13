# Workflow Necessity Gate

## 目的

在 architecture proposal、implementation proposal 或 candidate preparation 之前，判断一个需求是否需要建立或复用标准 Workflow。发现需要 Workflow 时，Architect、CPO 和 Builder 都不得静默按一次性步骤继续，也不得自行创建 Workflow；必须向最终人类决策者发出明确提醒并取得选择。

本 Gate 决定“是否需要 Workflow 及下一条治理路线”，不自动设计、实现、注册或激活 Workflow。

## 触发时点

以下时点必须运行一次：

1. architecture scope 与 success claim 初步形成后；
2. acceptance matrix 冻结前；
3. implementation/candidate 工作拆分前；
4. 执行过程中首次发现原先未披露的跨角色、持久状态、恢复或重复运行需求时。

同一需求的 identity、版本、packet 或执行者变化不得绕过已触发的 Gate。

## 检测规则

### Hard triggers

出现任意一项即判定 `WORKFLOW_REQUIRED`：

- 需要跨会话保存状态、checkpoint、resume、cancel、rollback 或 compensation；
- 存在两个或更多角色/Agent 的正式 authority handoff、审批或 evidence handoff；
- 预期重复执行，且每次必须保持相同步骤、闸门、证据与失败语义；
- 存在外部调用、付费、host/production、DB/state、canonical write 或其他受控副作用，需要先后顺序和人工闸门；
- 成功声明依赖多个阶段的联合结果，不能由一个原子任务独立证明；
- 失败后需要确定性恢复、人工接管或从中间状态继续。

### Soft triggers

以下项目满足两项或以上时，判定 `WORKFLOW_RECOMMENDED`：

- 三个或更多有依赖的步骤；
- 条件分支、循环、并行或等待外部事件；
- 多个 artifact 之间有明确 source→projection→review→landing 链；
- 同类需求已出现第二次，或预计会跨项目复用；
- 需要统一输入、输出、owner、SLA、成本或审计格式；
- Builder 需要自行记忆步骤顺序才能避免漏项。

未命中 hard trigger 且 soft trigger 少于两项时，可判定 `DIRECT_TASK_SUFFICIENT`，但必须说明理由。

## 必须向人类发出的提醒

当结果为 `WORKFLOW_REQUIRED` 或 `WORKFLOW_RECOMMENDED`，Architect/CPO 必须在继续设计前显示：

```text
WORKFLOW_DECISION_REQUIRED
需求/目标：
触发事实：
推荐结论：WORKFLOW_REQUIRED | WORKFLOW_RECOMMENDED
建议 workflow identity：
建议边界：起点 / 终点 / owner / human gates / evidence / failure recovery
不建立的具体风险：
预计建立成本与复用收益：
需要你的决定：
  A. ESTABLISH_STANDARD_WORKFLOW
  B. REUSE_OR_EXTEND_EXISTING_WORKFLOW
  C. DEFER_WITH_BOUNDED_EXCEPTION
  D. KEEP_AS_ONE_OFF_DIRECT_TASK
  E. DE_SCOPE_OR_CANCEL
```

提醒必须给出推荐项，但不得替人类选择。

## 人类决策语义

### `ESTABLISH_STANDARD_WORKFLOW`

先建立 versioned Workflow contract，至少冻结 identity/version、entry/exit、steps、owners、inputs/outputs、human gates、state、evidence、failure/recovery、permissions、cost 和 acceptance。完成独立准入后，原需求才可进入 implementation/candidate。

### `REUSE_OR_EXTEND_EXISTING_WORKFLOW`

必须指出 registry identity、适配差异和是否改变既有 contract。语义变化需要 versioned revision；不得用同一 ID 静默扩权。

### `DEFER_WITH_BOUNDED_EXCEPTION`

只适用于没有 hard trigger 的情况。必须记录 owner、单次适用范围、到期条件、风险、补偿控制和再次触发条件。相同需求第二次出现时 exception 自动失效并重新进入 Gate。

### `KEEP_AS_ONE_OFF_DIRECT_TASK`

只适用于 `DIRECT_TASK_SUFFICIENT` 或没有 hard trigger 的 `WORKFLOW_RECOMMENDED`。必须记录为何不可复用、为何不需要状态/恢复/正式 handoff，以及一次性边界。

### `DE_SCOPE_OR_CANCEL`

移除导致 Workflow 必要性的能力，或停止当前 scope。不得保留副作用路径却声称已 de-scope。

## 角色责任与停点

- **Architect**：识别触发器，提出最小 Workflow 边界和推荐，不替人类批准。
- **CPO**：保证 Decision/acceptance 中包含 Gate 结果、人类选择和 successor gate；不得省略以加速交付。
- **Builder**：若检测到 hard trigger 或收到 `WORKFLOW_DECISION_REQUIRED` 且没有最终决定，必须返回 `BLOCKED_PENDING_WORKFLOW_DECISION`；不得静默编排、临时注册或直接执行。
- **Reviewer**：检查 Gate 是否运行、触发事实是否诚实、选择是否由正确 owner 作出；不得把个人偏好的 Workflow 升级为新 blocker。
- **Human authority**：选择是否建立、复用、例外、de-scope 或取消，并拥有 Workflow activation authority。

## 架构产物中的最小记录

每个 architecture proposal 必须包含或显式引用：

```yaml
workflow_necessity_gate:
  evaluated: true
  result: DIRECT_TASK_SUFFICIENT | WORKFLOW_RECOMMENDED | WORKFLOW_REQUIRED
  trigger_facts: []
  existing_workflow_match: null
  recommended_workflow_id: null
  human_decision: PENDING | ESTABLISH_STANDARD_WORKFLOW | REUSE_OR_EXTEND_EXISTING_WORKFLOW | DEFER_WITH_BOUNDED_EXCEPTION | KEEP_AS_ONE_OFF_DIRECT_TASK | DE_SCOPE_OR_CANCEL
  decision_owner: null
  decision_evidence: null
  exception_expiry: null
```

`result` 为 `WORKFLOW_REQUIRED` 且 `human_decision=PENDING` 时，architecture readiness 最高只能是 `BLOCKED_PENDING_WORKFLOW_DECISION`。`WORKFLOW_RECOMMENDED` 未决时可以完成只读分析，但不得进入 implementation/candidate authorization。

## 禁止旁路

- 不得因任务“先做一次看看”而跳过 hard trigger；
- 不得把 checklist、prompt、脚本或聊天记录冒充已登记 Workflow；
- 不得由 Builder 的临时步骤反向成为 Workflow authority；
- 不得把“已有 Agent 能做”视为 Workflow 已存在；
- 不得自动创建 Workflow 后再让人类追认；
- 不得因版本、路径、项目或执行者变化重置重复次数。

