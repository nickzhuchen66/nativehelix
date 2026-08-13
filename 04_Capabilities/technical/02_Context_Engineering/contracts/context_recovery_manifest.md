# Context Recovery Manifest

## 目的

让新会话或新 Agent 快速恢复“现在该做什么”，同时避免 Handoff 变成复制所有事实的第二知识库。

## 最小字段

- project、objective、current phase、active task
- last accepted decision 与 decision source
- active design/spec、roadmap/current-state、task/progress source
- constraints、forbidden actions、authority boundary
- completed、in flight、blocked、next action
- unresolved conflicts、stale-risk、freshness timestamp
- verification command / acceptance evidence

## 来源优先级

```text
current canonical decision/design/state
  > current code/test/runtime evidence
  > handoff summary
  > build log/history/archive
```

Handoff 只路由到权威载体；发生冲突时记录冲突并读取正式文件，不静默选择摘要。

## Clock-in / Clock-out

- Clock-in：校验路径、revision、当前状态、未决决策和权限。
- Clock-out：更新已完成、证据、残余风险、下一步和恢复命令。

## 来源与证据


