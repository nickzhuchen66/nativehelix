# Lifecycle Cost Gate

## 目的

让成本决策覆盖推荐、选型、调用、重试和运行后审计，而不是只看单次 API 单价。

## 调用前

- 目标价值、免费/本地替代、模型/工具/surface
- 预计调用量、token/时间/并发、重试上限
- 一次性集成成本、持续维护成本和退出成本
- 授权人、scope、有效期和 hard ceiling

## 执行中

- 每个 attempt 的 usage 与累积预算
- bounded retry、circuit breaker 和 legal stop
- scope 扩大、模型升级或付费 surface 变化重新授权

## 执行后

- actual usage/cost；不可获得时明确 `unknown`
- retry、失败、部分结果和增量外部成本
- 产物价值、是否继续、降级或退出
- secret/content policy 是否被遵守

## 不变量

未知或未批准成本不购买、不调用、不集成；达到 ceiling 的停止是成功控制结果，不应被自动重试绕过。

## 来源与证据


