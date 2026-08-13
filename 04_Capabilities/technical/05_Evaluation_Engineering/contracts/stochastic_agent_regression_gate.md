# Stochastic Agent Regression Gate

## 目的

对模型、prompt、tool、context、workflow 或 Harness 变更执行多次试验，以 PASS / FAIL / INCONCLUSIVE 表达证据，而不是用单次成功或失败决定发布。

## Locked Comparison

- baseline revision 与 candidate revision
- task/scenario sample、environment、model/provider version、reasoning/sampling config
- tool schemas、permissions、budget、timeout、evaluator revision
- randomized/interleaved trial order、cache treatment、time window

## Verdict

每个 release-critical outcome 先定义：基线概率、允许退化 `delta`、Type-I/II 风险和最大试验预算。

```text
enough evidence candidate >= threshold     -> PASS
enough evidence candidate < threshold      -> FAIL
confidence interval crosses decision bound -> INCONCLUSIVE
```

INCONCLUSIVE 不得静默映射为 PASS；可增加样本、降级发布或要求人工决策。

## Evidence Stack

1. deterministic artifact/contract checks
2. repeated outcome trials and effect size
3. trace/process regressions：tool path、state transition、boundary、cost、latency
4. behavioral fingerprint 或 metamorphic/mutation checks 作为诊断与敏感度证据
5. production trace reuse 作为历史覆盖/contract evidence

行为分布发生变化不自动等于质量回归；必须连接到 outcome、contract、risk 或 operational budget。旧 production trace 不能证明尚未产生的 candidate 行为。

## Sequential Budgeting

- 只有在 outcome、independence/stationarity 假设和停止边界已声明时，才使用 SPRT/自适应试验数。
- provider caching、rate limit、时间漂移或共享状态破坏 i.i.d. 时，标为 assumption violation 并切换到保守方案。
- calibration trials、historical baseline 和 candidate trials 分开计数，不能把已支付成本表述为零证据成本。
- 高风险发布保留固定样本或最低样本地板，不能因早停而跳过稀有失败。

## Evaluator Gate

- deterministic evaluator 优先。
- LLM judge 必须独立锁版、重复/校准并报告自身不确定性。
- mutation 只证明测试能发现该类人为变化；不证明真实缺陷覆盖完备。
- critical safety failure 使用 hard veto，不参与平均分抵消。

## Output

- PASS / FAIL / INCONCLUSIVE per critical contract
- effect size、interval、trial count、stopping reason
- assumptions passed/violated、raw trace manifest
- outcome/process/cost 分开，附 residual risk 与下一复验触发

## 来源与边界

由 AgentAssay 的三值语义、顺序试验、trace-first 与行为指纹概念选择性提炼。论文的 7,605 次试验主要是短小合成场景；完整 regression-injection 实验仍称在准备中，图表对 detection power 有 79/86/98 与表格 86/94 等不一致，公开仓库也未包含论文声称的完整原始结果。因此不吸收 78%-100% 节省或形式保证为私有事实。
