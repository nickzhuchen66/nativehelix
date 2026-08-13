# Incremental Context Evolution

## 目的

让上下文从执行轨迹中逐项演进，避免反复重写一个大 Prompt 导致规则丢失、过度压缩和来源不可追踪。

## 机制

```text
Generator -> Trajectory -> Reflector -> Delta Items -> Curator -> Context Playbook
```

- `Generator` 执行任务并保留成功、失败和工具轨迹。
- `Reflector` 从轨迹中提取可复用洞见，不直接修改正式上下文。
- `Curator` 对 delta 做去重、冲突检查、适用范围和来源校验，再确定性合并。
- Context 由静态组件（知识、规则、示例）与动态算子（检索、过滤、组合）共同生成。

## Delta 最小字段

- `id`、`source_trace`、`observation`
- `proposed_change`、`applies_when`、`does_not_apply_when`
- `conflicts_with`、`supersedes`
- `validation_result`、`status: proposed|accepted|rejected|retired`

## 设计约束

- 运行轨迹、反思结论和 Curated Context 分层保存。
- 失败经验必须保留；不得只学习成功路径。
- Train 可生成候选，held-out/validation 决定是否接受。
- Meta 层可优化“如何选择和组合上下文”，但不得绕过来源优先级和人工晋级。

## 适用边界

适合长周期、重复任务和可积累轨迹的 Agent。一次性任务、证据稀薄或规则高度受监管时，应优先人工维护，不启动自动上下文演进。

## 来源与证据等级

由 EXT-2026-07-12-001 中 ACE/MCE 提炼，为外部设计模式；尚无本地项目行为验证，不改变成熟度。

