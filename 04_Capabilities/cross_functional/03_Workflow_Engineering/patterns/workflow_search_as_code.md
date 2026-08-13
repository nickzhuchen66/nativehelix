# Workflow Search as Code

## 目的

把 Prompt、工具、子 Agent、内存和控制流表示为可版本化、可执行、可评价的工作流候选，使 Workflow 从手工编排扩展为受限搜索空间。

## 搜索闭环

```text
archive -> select parent -> propose code/graph delta -> interface check
        -> execute -> evaluate -> preserve result and trace -> archive
```

候选至少声明：输入输出、工具依赖、可变参数、固定边、预算、停止条件、版本和回滚目标。先做 schema/interface 检查，再消耗模型与工具预算运行。

## 接受原则

- 使用指标向量和硬红线，不以单一平均分决定。
- 保存 Pareto frontier，显式呈现质量、成本、延迟、复杂度之间的权衡。
- 新候选必须与固定 baseline、passing behaviors 和 held-out fixtures 比较。
- 同一 proposer 的自评不构成独立评价。

## 适用边界

任务必须具备快速、稳定、可自动计算的评价。慢反馈、模糊判断、强领域品味或不可逆高风险任务，不应直接进行自动工作流搜索。

## 来源与证据等级

由 EXT-2026-07-12-001 中 ADAS、AFlow、Meta-Harness 等机制综合提炼；为候选设计模式，不代表这些系统的结果已被本地复验。

