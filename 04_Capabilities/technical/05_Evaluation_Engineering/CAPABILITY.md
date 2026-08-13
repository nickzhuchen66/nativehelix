# Evaluation Engineering

## 核心问题

如何证明 Agent 的行为、合同、安全性和业务效果，而不是只判断输出是否看起来合理。

## 范围

- deterministic、model、human evaluation 分工
- positive、negative、adversarial、historical、quasi-real fixtures
- pollution redlines、passing behaviors、regression
- metric vector、acceptance、promotion gate
- 技术成功与业务有效性分离

## 已吸收模式

- 测正例也测负控
- malformed output 严格失败，不自动修复
- test passed 不等于 business verified
- 结构完整性评分与行为效果评估必须分开报告
- 验证按 static/build -> behavior/integration -> E2E/runtime -> clean state 逐层收敛
- 行为正确性是认识论边界：错误需求或 oracle 可让所有机械检查同时为绿
- 自治级别应先按需求清晰度、可验证性、影响和可逆性分类
- 自改候选必须隔离 held-in/held-out，保留负结果和 passing behaviors，并检查 reward hacking、评价器过拟合与多样性坍塌

## 可复用资产

- [Self-Improvement Evaluation Gate](checklists/self_improvement_evaluation_gate.md)：数据隔离、指标向量、抗投机和晋级决策清单
- [Two-Sided Evaluation Harness](patterns/two_sided_evaluation_harness.md)：正例、负控、污染、历史、准真实与 passing behavior 组合
- [Evaluation Trial Protocol](contracts/evaluation_trial_protocol.md)：Task、Agent、Environment、Verifier、Trial、Job 与 artifact/trajectory lineage
- [Baseline Then Gate](patterns/baseline_then_gate.md)：先 report-only 建立常态，再对增量风险和稳定阈值启用 Gate
- [Browser Action Evidence](contracts/browser_action_evidence.md)：before/action/after、session identity、side-effect 状态与业务证据阶梯
- [Skill Evaluation Protocol](contracts/skill_evaluation_protocol.md)：正负触发、paired baseline、JSONL trace、确定性评分、只读 rubric 与多次试验
- [Stochastic Agent Regression Gate](contracts/stochastic_agent_regression_gate.md)：锁定对照、PASS/FAIL/INCONCLUSIVE、顺序试验假设、trace 诊断与 critical veto

## 当前缺口

缺跨项目 golden set、统一指标定义和可执行 Skill Eval runner。
