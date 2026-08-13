# Planned / Emergent Placement

## 目的

在选择单 Agent、多 Agent、集中编排或共享环境协调之前，先决定“决策应该在哪里发生”。Placement 是架构决策；Agent 拓扑只是其实现结果。

## 三个判定轴

| 轴 | Planned 倾向 | Emergent 倾向 |
|---|---|---|
| Reversibility | 撤销昂贵、影响不可收回 | 可廉价 revert、可隔离试错 |
| Legibility | 问题稳定、规则与验收可预先说明 | 问题探索性强、信息在行动中出现 |
| Coupling | 局部变化牵动多处、合规/安全相关 | 作用域松耦合、失败局部化 |

不可逆且探索性的工作属于 danger zone：先降低不可逆性，或先通过研究、原型和规范让问题变得可读，再允许 Agent 执行。

## 组合模式

- **Shell and core:** planned 边界包围 emergent 内部。
- **Scaffold and release:** 先建立约束与接口，再允许局部涌现。
- **Nested zones:** 不同风险区域使用不同协调模式。
- **Alternating breath:** 探索与收敛分阶段交替。
- **Zoning:** 按任务类别和风险分区，而非给整个系统一个自治等级。

## 决策记录

每个重要决策记录三个轴、所选模式、边界、外部 verifier、commit/revert 点和 human veto。未经 Placement 记录，不得仅因“可以并行”升级到多 Agent。

## 来源与证据等级

由 EXT-2026-07-12-011 提炼。Placement 是作者的 working design principle；底层可逆性和耦合原则证据较强，但具体矩阵尚无跨项目验证。

