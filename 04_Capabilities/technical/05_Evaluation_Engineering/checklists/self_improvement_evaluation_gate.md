# Self-Improvement Evaluation Gate

用于 Harness、Workflow 或 Context 自改候选进入 active baseline 前的评价闸门。

## 数据隔离

- [ ] 固定 baseline 与 revision 已锁定。
- [ ] held-in 用于定位弱点和开发候选。
- [ ] held-out 对 proposer 不可见，且按策略轮换。
- [ ] passing behaviors、negative controls 和历史失败均进入回归集。

## 评价完整性

- [ ] 先通过 schema、interface、permission 和 secret-safe 检查。
- [ ] 使用质量、正确性、成本、延迟、复杂度、稳定性组成的指标向量。
- [ ] 报告重复运行、方差和 crash/reject，不只报告最好一次。
- [ ] 评价者与候选生成器逻辑隔离；同一模型自评需独立校验。
- [ ] 保存失败和负结果，避免反复探索已知坏路径。

## 抗投机

- [ ] 检查 reward hacking、evaluator overfitting 和训练/测试污染。
- [ ] 检查多样性坍塌以及只优化短期任务分数的系统健康退化。
- [ ] 确认候选未修改 evaluator、权限、held-out、预算或 promotion gate。

## 决策

- [ ] 输出 `accept | reject | discard | crash | human_review`。
- [ ] Accept 具有明确 rollback target；Reject 仍保留候选、原因和 trace。
- [ ] 外部文章或仓库的自报结果标记为 source claim，不替代本地复验。

## 来源与证据等级

由 EXT-2026-07-12-001 的 held-in/out、负结果、Pareto、reward hacking 和长期系统健康问题提炼；清单本身尚待项目验证。

