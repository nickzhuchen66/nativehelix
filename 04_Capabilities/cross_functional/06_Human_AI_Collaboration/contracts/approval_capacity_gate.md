# Approval Capacity Gate

## 目的

把 human approval 当作有限控制资源，避免 Agent 产出超过人类可认真审阅的速率，最终退化为排队、rubber-stamping 或隐藏 WIP。

## 三个联动杠杆

- **Gate:** 哪些任务类别必须经过人工批准，哪些可在已获授权的 envelope 内自动执行。
- **Rate:** 进入 gate 的提议中被批准的比例，按 Agent 和任务类别跟踪。
- **Budget:** steward 在单位时间内可做的高质量审阅数量，而非理论在线时长。

必要条件：

```text
gated proposal inflow <= considered approval capacity × (1 - false-approval tolerance)
```

该式是容量约束，不是精确预测模型。

## 饱和处理

当队列增长、审阅延迟上升或批准率异常接近 100% 时，不要求 steward 加速。应当：

1. 对高通过率、低风险、可回滚类别，用新证据缩小 gate；或
2. 对低通过率类别收窄 autonomy envelope，把修复移到上游 terrain/harness；或
3. 降低 Agent 提议速率和并发。

不得用“更多 reviewer”掩盖 verifier 弱、任务分类差或提议噪声高。

## 来源与证据等级

由 EXT-2026-07-12-011 的 gate/rate/budget 模型提炼；作者将其列为 working design principle，尚未校准为通用运营公式。

