# Functional Role Schema

## 原则

Role 描述职责、权限、输入输出和冲突关系；人名、模型品牌与具体工具只是 Host Binding。

## 核心角色

| Role | 主要责任 | 不得默认拥有 |
|---|---|---|
| Vision/Decision Owner | 方向、取舍、终局责任 | 技术事实免审权 |
| Architect | 边界、合同、设计与任务化 | 自动业务批准 |
| Builder | 按任务包实现并提供证据 | 扩大 scope、改验收标准 |
| Evaluator/Reviewer | 独立检查、挑战与报告 | 自动写入和 promotion |
| Domain Expert | 提供领域证据与例外判断 | 全局调度或终局权，除非显式绑定 |

## Role Binding

每个项目声明 actor、role、authority、tool access、data access、cost scope、escalation target 和有效期。一个 actor 可绑定多个角色，但必须声明何时切换，并保留 generator/evaluator 独立性要求。

## 来源与证据


