# Memory & Knowledge Engineering

## 核心问题

如何让系统保留可复用知识，又避免运行噪声、陈旧信息和未经批准的输出污染精选资产。

## 范围

- Working、episodic、semantic、procedural memory
- Curated / Runtime 双相知识
- provenance、freshness、supersession、decay
- promotion gate、Case Library、Pattern Registry
- 人审视图与机器记录分离

## 已吸收模式

- 机器写 Runtime，人工单向晋级 Curated
- append-only + logical invalidation
- Run Record、Build Log、Case Library 各有不同职责
- 权威 Register 与派生摘要/缓存分离；机械一致性检查不替代语义和事实验证
- 代码/文档状态与在飞工作状态可分别由 Repo 和 Task Tracker 承载，但都须对 Agent 可见
- 文件系统可作为 Context Window 外的实验记忆，但 run、candidate、evaluation、decision 与 curated knowledge 必须分区

## 可复用资产

- [Browser Domain-Skill Promotion Gate](contracts/browser_domain_skill_promotion.md)：运行发现、replay、安全/隐私审查、expiry 与 curated promotion
- [Filesystem Experiment Memory](patterns/filesystem_experiment_memory.md)：工件分区、选择性检索、负结果保留和知识晋级边界
- [Curated / Runtime Knowledge Promotion](contracts/curated_runtime_promotion.md)：双相知识、promotion packet、supersession 与 logical invalidation

## 当前缺口

缺自动 freshness/decay、统一 artifact registry 和跨项目知识晋级验证。
