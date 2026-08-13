# Curated / Runtime Knowledge Promotion Contract

## 两相模型

- `Runtime`：机器可高频追加的观察、运行、候选、反馈和失败。
- `Curated`：经来源核验、人审、去重和适用边界确认后的精选知识。

数据只允许从 Runtime 经 promotion gate 单向进入 Curated；模型输出不得直接写 Curated。

## Promotion Packet

- candidate_id、source traces、provenance 和 evidence role
- proposed knowledge、applies/does-not-apply 条件
- duplicate/conflict/supersession 检查
- evaluator/reviewer、decision、reason、timestamp
- active version、rollback/supersede target

## 状态

```text
observed -> candidate -> reviewed -> accepted|rejected|deferred
accepted -> active -> superseded|invalidated|retired
```

Rejected 和 invalidated 记录仍保留；删除采用 logical invalidation。Runtime retention 与 Curated freshness 分别治理。

## 来源与证据


