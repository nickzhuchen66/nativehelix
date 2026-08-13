# Skill Catalog

| Skill | Namespace | Primary owner | Purpose | Status | Primary capability domains |
|---|---|---|---|---|---|
| `architect/ingest-project-capabilities` | architect | AI-Native Architect | 从项目、仓库和文章中抽取并归档技术能力 | package checked | 全域，重点 12/15 |
| `architect/design-ai-native-architecture` | architect | AI-Native Architect | 设计 AI-Native 技术蓝图和演进路线 | package checked | 01/02/04/05/10/12 |
| `cross_functional/design-agent-workflow` | cross-functional | AI-Native Architect | 将冻结产品目标转为任务、状态、闸门、恢复和停止合同 | package checked | 03/06/09/10/13 |
| `architect/review-agent-harness` | architect | AI-Native Architect | 审查执行边界、评价、成本和技术生产就绪度 | package checked | 04/05/07/10 |

`cpo/` 当前没有已发布 Skill。项目初始化、产品 brief、Agent 产品 Review、product acceptance 与 capability portfolio 等候选不因目录创建自动成为 Skill。

## Status meaning

- `package checked`: Skill 结构、metadata、引用资源和随包脚本语法已做本地检查，尚未真实 forward-test。
- `forward_tested`: 已在新任务中独立验证。
- `active`: 触发边界与输出稳定，可考虑受控安装。

这些是可选择安装的 Skill 源码包；请参阅 [安装说明](../docs/SKILL_INSTALLATION.md)。它们不是插件，也不会在 clone 后自动获得工具或权限。
