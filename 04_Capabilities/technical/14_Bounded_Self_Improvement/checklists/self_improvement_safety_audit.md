# Self-Improvement Safety Audit

任何候选一项为 `fail` 或 `unknown`，都不得自动进入 active baseline。

## 1. Editable Surface

- [ ] editable paths/types 由循环外部配置并机械 enforcement
- [ ] permission、secret policy、evaluator、held-out、预算、promotion、audit 不可写
- [ ] proposer tool list 和 shell 无法绕过路径规则
- [ ] resource registry 不只是 advisory 标签

## 2. Evaluation Independence

- [ ] proposer 只看 train/held-in 失败，不看 held-out 输入与答案
- [ ] evaluator/rubric/version 在 iteration 前冻结并位于外部控制面
- [ ] code verifier 与 LLM judge 分离，记录 judge identity 和 variance
- [ ] missing tests、missing dependency、zero examples、timeout 均 fail closed
- [ ] reward gaming、leakage 和 evaluator mutation 有 adversarial checks

## 3. Candidate Isolation

- [ ] candidate 在可销毁 sandbox/worktree 运行
- [ ] candidate 不复制生产 secrets；使用最小、短期、只读凭据
- [ ] network 与 external side effects 独立限制
- [ ] candidate lineage、diff、artifact 和成本可审计

## 4. Promotion

- [ ] 比较 baseline、candidate、回归、方差、成本和复杂度
- [ ] protected-surface diff 在 merge 前机器检查
- [ ] winner 只成为 `promotion_candidate`，不自动 merge/deploy
- [ ] 授权人审阅 evaluation packet 并签署 promotion
- [ ] rollback target 已验证且不依赖 candidate 自身

## 5. Activation Safety

- [ ] 插件/hook 启动不会静默安装或升级依赖
- [ ] 依赖与模型版本固定，可验证来源和完整性
- [ ] setup、evolve、merge、deploy 是分离的显式动作

## 来源与证据等级

以 EXT-2026-07-12-014 为 executable adverse evidence，对 EXT-2026-07-12-001 的保护面和现有 Bounded Harness Improvement Loop 做机械化补强。该 checklist 不证明自改能力已经安全实现。

