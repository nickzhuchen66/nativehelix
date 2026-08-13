# Baseline Then Gate

## 目的

先收集正常运行范围和当前债务，再逐步启用阻断阈值，避免初次引入评价工具就因噪声导致弃用，或因宽松 baseline 永久掩盖风险。

## 阶段

```text
report-only -> review/tune -> versioned baseline -> warn on delta
            -> block on proven hard redlines -> periodically rebase with approval
```

## Baseline 比较维度

- 质量/正确性、duration、token、estimated/actual cost
- failure families、tool failure rate、loop/retry waste
- 新工具、新文件面、新 authority category 和高权限动作
- static finding fingerprints 与新增 findings

## 控制要求

- Baseline 绑定 evaluator/scanner/report schema version；不兼容时拒绝比较。
- 阈值来自项目数据和风险，不复制工具默认值。
- 新高权限能力与 hard redline 不因历史 baseline 被抑制。
- Rebase 需要 owner、理由、差异和退出条件。
- 健康分、成本估计和 heuristic anomaly 只用于 triage，不能替代业务验收。

## 来源与证据

由 AgentTrace 的 report-first CI/baseline delta 与 Lurkr 的 new-finding baseline 共同提炼。

