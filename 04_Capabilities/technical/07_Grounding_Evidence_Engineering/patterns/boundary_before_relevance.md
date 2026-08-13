# Boundary Before Relevance

## 目的

先判断输入是否有资格进入业务判断链，再做匹配、路由和展示，避免高相关度掩盖越界、污染或证据不足。

```text
input -> eligibility/scope -> match -> route -> surface -> promotion
```

## 分态要求

- `eligibility`：内容是否属于允许范围，是否满足最低来源/权限条件。
- `match`：与目标实体、主题或规则的相关程度。
- `route`：进入 active、candidate、review、quarantine 或 discard。
- `surface`：哪些内容允许进入用户主面，哪些仅保留诊断。
- `promotion`：是否可进入 canonical/curated；必须是后置独立决策。

## 不变量

- Out-of-scope 即使高匹配也不能进入 active surface。
- Match 结果可用于诊断，但不能覆盖人工 policy ceiling。
- 排除项需要原因和统计，避免“看不见的过滤”。
- 领域词典、阈值和路由枚举属于 Host Adapter，不进入通用 Core。

## 来源与证据


