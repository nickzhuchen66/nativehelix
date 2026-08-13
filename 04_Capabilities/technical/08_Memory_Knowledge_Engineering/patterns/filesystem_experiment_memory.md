# Filesystem Experiment Memory

## 目的

用 Agent 原生可操作的文件系统保存超出 Context Window 的长期执行状态，同时保持运行记忆与精选知识的边界。

## 工件分区

- `runs/`：输入、轨迹、日志、错误和运行元数据。
- `candidates/`：Harness/Workflow/Context 候选、diff 和父版本。
- `evaluations/`：指标、held-in/out 结果、评价 revision。
- `decisions/`：accept/reject、理由、审批者和 rollback target。
- `knowledge/`：经人工晋级的规则、模式和案例。

## 读取与写入原则

- 运行时可以追加 runs/candidates，不可直接写 Curated Knowledge。
- 检索按任务、失败模式、版本和时间选择，不把整个历史塞入上下文。
- 每个结论链接原始 trace；摘要不是事实源。
- Rejected、crashed 和负结果保留，允许 logical invalidation，不静默删除。
- 设 retention、compression、supersession 和 freshness 规则，避免仓库随时间退化。

## 来源与证据等级

由 EXT-2026-07-12-001 的 filesystem memory、working directory 和历史搜索机制提炼，并适配本项目 Curated/Runtime 双相模型；尚无跨项目验证。

