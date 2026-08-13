# Architectural Decision Evidence Record

## 目的

用可审计记录比较 Agent/Harness 架构决策，保留实现证据、推断、置信度和覆盖范围，不把框架特性表误当成架构质量排名。

## Minimum Record

```yaml
system: ""
revision_or_date: ""
evidence_mode: source | official_public_material | partial
coverage_statement: []
decisions:
  subagent_architecture: {}
  context_and_persistence: {}
  tool_system: {}
  safety_and_isolation: {}
  orchestration: {}
evidence:
  - claim: ""
    artifact: "path/url/trace"
    observation_or_inference: observation | inference
    confidence: high | medium | low
unknowns: []
reviewer: ""
```

五个 decision family 是比较视图，不是完整 ontology；应继续关联私有 15 能力域、产品边界、业务约束和生命周期。

## Collection Protocol

1. 固定 revision/corpus date 和纳入/排除规则。
2. 先做纵向 source-first 阅读，再做同维度横向比较。
3. 大仓库允许 sampled inspection，但必须写 coverage statement。
4. 事实与推断分栏；边界案例保留 unknown/confidence。
5. 编码前定义类别，抽样进行第二人复核并记录 disagreement。
6. 对外发布 corpus、codebook、编码矩阵或明确说明哪些材料未公开。

## Interpretation Gate

- count/percentage 只描述该冻结样本，不能外推为市场事实。
- support/confidence/lift 只表示共现，不能推出因果或演化顺序。
- archetype 是解释性 center of gravity，不是成熟度等级。
- 缺少公开编码矩阵时，不能声称第三方可完整复算共现结果。
- 架构选型必须回到项目 task、authority、failure、cost 与 governance 约束。

## 来源与边界

由 Architectural Design Decisions in AI Agent Harnesses 的 protocol-guided、source-grounded 研究流程提炼。论文覆盖 70 个系统并提供 corpus/codebook 摘要，但完整项目记录和编码矩阵仅称保留为内部审计材料；15 项目抽样复核报告 94% 初始字段一致率，未提供全矩阵 chance-corrected agreement。因此只吸收记录法和决策维度，不把比例、共现或五类模式升级为私有事实。
