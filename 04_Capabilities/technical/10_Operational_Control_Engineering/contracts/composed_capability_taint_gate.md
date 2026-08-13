# Composed Capability & Taint Gate

## 目的

在 session/path 级判断工具组合风险。单个工具看似安全，不代表“私有数据 + 不可信内容 + 外部通信/代码执行”的组合安全。

## Capability Vocabulary

- `reads_private_data`
- `sees_untrusted_content`
- `writes_or_deletes`
- `executes_code_or_shell`
- `communicates_external`
- `open_world`
- `destructive`、`idempotent`

Tool annotation/manifest 只作为声明证据，并带 `source_trust: trusted|untrusted|unknown`；未知或不可信声明不能降低风险。

## Session State

```text
clean -> exposed_to_untrusted -> tainted
private_data_accessed + tainted + exfiltration_capable -> block|explicit_approval
```

Risk engine 评估实际路径、参数、数据 provenance、credential scope、network policy 和工具组合，而非只看 tool name。Shell/Code Execution 默认同时具备读本地数据和外部通信潜力，除非 sandbox/network enforcement 证明相反。

## Enforcement

- 组合出现 lethal-trifecta 条件时 fail closed 或进入对象明确的人工 Gate。
- Approval 说明将读取什么私有数据、接触何种不可信输入、发送到哪里；笼统“允许工具”无效。
- Host 在运行后传播 taint；静态 metadata 不能让模型抵抗 prompt injection。
- 需要保证时使用 sandbox、network egress、credential proxy、DLP 和 object-level auth；annotation 不能替代。
- 工具服务器可撒谎；对声明做 conformance probes，保留 observed vs declared 差异。

## 来源与证据

由 MCP 官方 Tool Annotations 风险词汇和 lethal-trifecta session composition 分析提炼；现有 readOnly/destructive/idempotent/openWorld 字段在规范中是 untrusted hints，不是 enforcement。

