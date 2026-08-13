# Bounded Harness Improvement Loop

## 目的

允许系统从真实运行失败中提出 Harness 改进，同时把裁判、权限和晋级权留在循环之外。

## 三阶段

### 1. Weakness Mining

从富轨迹、verifier failure、人工接管和成本异常中聚类失败模式；区分模型能力、上下文、工作流、工具、Harness 和 evaluator 问题。

### 2. Bounded Proposal

候选输入包括当前 Harness、editable surface、失败模式、passing behaviors 和历史 accepted/rejected attempts。输出必须是有限 diff、预期机制、影响面和 rollback target。

Editable surface 必须由外部控制面机械 enforcement；registry 中的 `evolvable: false`、prompt 指示或 proposer 自律都不构成边界。candidate shell、工具和子 Agent 也必须无法绕过该范围。

### 3. Independent Evaluation

先做 interface/protected-surface 检查，再运行 held-in 与 held-out。比较指标向量、回归、方差和复杂度成本。Accept 更新 active Harness；Reject/Crash 只记录，不修改 baseline。

准确语义应为：evaluation 通过只产生 `promotion_candidate`；独立授权人批准后才更新 active Harness。missing tests、zero held-out、timeout、dependency unavailable 或 evaluator unknown 均为 reject/blocked，不得按 pass/skip 处理。

## 受保护对象

Constitution、permission、secret policy、evaluator、held-out、预算上限、human promotion 和 audit history 不可由 proposal loop 修改。

受保护对象的 diff 必须在 merge 前机器检查，并由循环外 controller 执行。候选不得携带生产 secret；worktree 隔离不是 secret、network 或 process sandbox。

## 输出包

- candidate lineage 与 diff
- weakness evidence 与 source traces
- held-in/out evaluation packet
- accept/reject/crash 理由
- active version 与 rollback target
- human promotion record
- 每个组件的 `exists_because`、model/environment assumptions、ablation result 和 `remove_when`

## 适用边界

仅适合可自动评价、可回滚、影响可控的 Harness 表面。模糊 evaluator、慢反馈、强品味或高不可逆风险领域保持人工闭环。模型升级后先验证旧组件是否成为 dead weight；自改循环也必须能提出 retirement，而不是只会新增 Harness。

## 来源与证据等级

由 EXT-2026-07-12-001 的 Self-Harness、Meta-Harness、STOP 与 evolutionary search 综合提炼；EXT-2026-07-12-014 作为 executable adverse evidence，暴露 advisory freeze、可跳过测试和 auto-merge 的不足并促成机械控制补强；Anthropic long-running/managed-agent 经验补充 model-dependent component expiry。当前仍是 design-only candidate，不构成自动自改能力已实现。
