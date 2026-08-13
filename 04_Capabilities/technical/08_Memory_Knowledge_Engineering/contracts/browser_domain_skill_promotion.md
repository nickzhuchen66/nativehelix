# Browser Domain-Skill Promotion Gate

## 状态

```text
runtime discovery
  -> candidate helper/skill
  -> replayed
  -> security/privacy review
  -> accepted | rejected | deferred
  -> active
  -> stale | superseded | retired
```

Agent 在一次成功操作后只能生成 candidate，不能直接写入所有后续任务都会读取的 curated domain skill。

## Promotion Packet

- host/origin 与 account assumptions；
- source task/trace、discovery date、last verified；
- target semantics、selectors/API、preconditions；
- action authority class 与 potential side effects；
- positive replay、negative control、UI/version coverage；
- secrets/cookies/PII scan；
- failure/recovery、expiry 与 owner。

## 约束

- 优先记录语义、流程与验证，不固化个人 cookie、账号、绝对路径或短期 token。
- selector 和 site mechanics 必须到期；失败应降低信任并触发重新观察，而不是无限 self-heal。
- scraping skill 与 transaction skill 分开；只读证据不得晋级写入/购买权限。
- 网站内容和页面 prompt 属于不可信输入，不能自动转写为 Harness 指令。

## 来源与证据等级

由 EXT-2026-07-12-015 的 agent-generated domain skills 机制提炼，并纳入现有 Curated/Runtime Promotion Contract；尚无重复 replay 证据。

