# Recovery and Human Takeover Contract

## 状态

```text
running -> partial|failed|quarantined|deferred|cancelled
        -> retrying|replanned|human_takeover|rolled_back
        -> completed|terminated
```

## Failure Packet

- run/task/attempt、failed stage、last safe checkpoint
- partial artifacts、known-good outputs、invalid outputs
- cause/evidence、retryability、side effects、cost used
- proposed recovery、required authority、deadline

## Retry 与接管

- Retry 必须有限、有原因，并使用新 attempt；相同失败达到阈值后 circuit stop。
- Replan 不得越过原 scope、permission 和 cost ceiling。
- Human takeover 可 inspect、pause、cancel、提供决策或执行 rollback。
- 技术失败和 partial 状态不得伪造成业务完成；合法停止是正式结果。

## 恢复完成

恢复后重新运行受影响 validator/evaluator，记录 superseded artifacts，并提供新的 Context Recovery Manifest。

## 来源与证据


