# Agent-Legible Repository Contract

## 目的

让 Agent 能在真实执行路径中找到目标、约束、架构、运行状态和反馈，而不是依赖人类脑内知识或一个不断膨胀的总说明文件。

## Knowledge Shape

- 根 `AGENTS.md` 是短地图，不是百科全书；指向 architecture、product、security、reliability、plans 和 runbooks。
- 规范、计划、决策、状态、债务和验证命令均 repository-local、versioned、可交叉链接。
- 小任务使用临时计划；长任务使用冻结 spec、milestone plan、execution runbook 和 append-only status/audit log。
- 生成文档标注生成源和 freshness；人工/Agent 都不能把摘要当作唯一事实源。

## Steering Placement

指导必须位于 Agent 实际加载或必经的控制面：

- **Hard steer:** schema、阻断错误、hook、validator、permission gate。
- **Loaded steer:** 当前 scope 的 instructions、Skill、tool help/error、明确引用的 runbook。
- **Soft hint:** 邻接文档、warning、依赖目录注释、未加载 changelog；只算候选信息，不算控制。

若一个规则连续被忽略，先证明它进入了 Agent 的 loaded context，再讨论模型遵循问题。不得用“文件存在”证明 Agent 可见。

## Mechanical Checks

- map target 存在、scope 可解析、owner/freshness 明确；无孤立或循环引用。
- 重要架构不变量由结构测试/自定义 lint 强制，错误消息包含下一步修复信息。
- 定期 doc-gardening 检查文档与代码差异，只提出修复，不静默重写 canonical decision。
- 每个新增知识面声明检索入口、验证方式、失效条件和删除/归档策略。

## 来源与证据

由 OpenAI Harness Engineering 的 repository-as-system-of-record、agent legibility 与 architecture lint 实践，以及 Stripe Agent Steering 实验中“已加载硬引导有效、外围软提示常被忽略”的观察提炼。OpenAI 为单团队生产案例；Stripe 为约十二项实验，均不自动证明跨项目效果。

