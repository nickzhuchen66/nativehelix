# Human-Gated Learning Loop

## 目的

把运行反馈转成改进候选，但不让反馈自动改写正式规则、Harness、知识或模型权重。

```text
run -> feedback -> validate/attribute -> candidate -> evaluate
    -> human decision -> implement -> replay -> promote or rollback
```

## 关键边界

- Feedback 是观察，不自动等于事实或正确标签。
- 失败先归因到数据、模型、上下文、工作流、Harness、工具或 evaluator。
- Candidate 明确修改面、预期机制、成本和 passing behaviors。
- 实现、正式落盘与 promotion 分开授权。
- Replay 失败或证据不足时保留候选但不改变 active baseline。

## 最小事件

`run_completed`、`feedback_recorded`、`candidate_created`、`evaluation_completed`、`human_decided`、`change_landed`、`replay_completed`、`promoted|rolled_back`。

## 来源与证据


