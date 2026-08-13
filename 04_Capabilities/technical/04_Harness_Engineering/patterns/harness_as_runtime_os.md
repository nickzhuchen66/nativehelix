# Harness as Runtime OS

## 定义

Harness 不是 Prompt 集合，而是模型外部的运行时：负责装配上下文、调度工具和子任务、持久化状态、执行验证、限制权限并暴露可观测轨迹。

## 最小分层

| Plane | 职责 | 是否允许自修改 |
|---|---|---|
| Cognition | 计划、推理、候选生成 | 仅受限候选 |
| Execution | 工具调用、作业、文件和环境操作 | editable surface 内 |
| Evaluation | fixtures、verifier、指标、回归 | 否 |
| Control | 权限、预算、取消、回滚、promotion | 否 |
| Persistence | trace、artifact、candidate、decision | append-only 优先 |

## Editable / Protected Surface

- 可编辑：Prompt、上下文算子、工作流边、允许的工具组合、局部 Harness 实现。
- 受保护：权限边界、secret policy、evaluator、held-out 数据、预算上限、人类闸门、审计记录。
- 每次候选必须提供 diff、影响面、兼容性声明、复验要求和 rollback target。

## 运行要求

- 工具结果和失败状态必须回流下一轮，而不是只返回最终文本。
- 长任务和子 Agent 以可检查作业存在，支持 launch/inspect/cancel/wait/merge。
- 轨迹与工件落到 Context Window 外，可按需检索。
- interface check、deterministic validator 和权限检查先于昂贵执行。

## 来源与证据等级

由 EXT-2026-07-12-001 的文章主张和配图提炼，并受本地 protected-surface 原则约束；不构成本地运行证据。

