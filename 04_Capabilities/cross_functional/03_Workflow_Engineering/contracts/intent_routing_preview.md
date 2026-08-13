# Intent Routing Preview

## 目的

在执行前选择“足够且最轻”的工作流，并让用户能看到为什么不是更重或更轻的路径。

## 路由阶梯

```text
deterministic pattern
  -> active durable state
  -> known keyword / capability mapping
  -> bounded semantic classifier
```

低成本、确定性规则先行；只有前级无法决定时才使用模型分类。分类结果只能选择已登记的 workflow，不可临时扩大工具、网络或 merge 权限。

若没有已登记 workflow 能覆盖需求，必须先运行 [Workflow Necessity Gate](workflow_necessity_gate.md)。结果为 `WORKFLOW_REQUIRED` 或 `WORKFLOW_RECOMMENDED` 时，route 进入 `WORKFLOW_DECISION_REQUIRED`，向人类展示触发事实、推荐 identity、边界、成本和选项；在人类决定前不得由 CPO/Builder 临时拼接一个隐形 workflow 或直接进入 implementation/candidate。

## Preview 输出

- normalized intent 与已知作用域；
- selected route 与备选路径；
- route proportionality 理由；
- 将触及的状态、文件和外部系统；
- 当前能否运行、需要的 approval；
- verifier、review artifact 和 recovery path。
- workflow necessity 结果、触发事实、existing workflow match 与 human decision 状态。

## 升级条件

只有任务存在多阶段持久状态、真正独立的并行范围或明确跨会话恢复需求时，才从 direct/skill 升级到 campaign/fleet。单文件、同一子系统、merge path 不清或 read-only 请求不得因“重要”而升级。

## 失败语义

无法分类、dirty worktree、缺少 verifier、权限不明、当前状态冲突，或 `WORKFLOW_DECISION_REQUIRED` 尚无 owner 决定时，preview 停止并返回原因；不得默认选择最重工作流，也不得默认降级成 direct task。

## 来源与证据等级

由 EXT-2026-07-12-012 的四级 `/do` routing 和 preview contract 提炼；上游有当前跨平台结构验证，但私有实现尚未落地。
