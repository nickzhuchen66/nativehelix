# Browser Action Evidence Contract

## 目的

证明浏览器任务的页面状态和业务副作用，而不把工具调用返回、截图观感或 Agent 自述当成完成证据。

## Action Record

- `action_id`、task/step、session/profile identity；
- before-state：URL/origin、tab、target semantic identity、relevant value；
- action：helper/CDP method、bounded parameters、authority class；
- after-state：独立读取的 DOM/AX/network/download/business state；
- visual artifact：仅在布局、图像或 canvas 有关时必需；
- side-effect status：none、drafted、submitted、externally-confirmed、unknown；
- verifier、timestamp、error/recovery。

## Evidence Ladder

```text
helper returned
  < DOM/AX state changed
  < expected request/response observed
  < durable application state confirmed
  < external/business outcome independently confirmed
```

任务按所需层级接受。点击按钮或看到 toast 不能证明邮件已发送、订单已创建、付款完成或数据已删除。

## 负向验证

- 目标元素不存在、重复、被遮挡或跨 origin 时必须显式失败。
- 动作后验证旧状态仍存在时不得自动重试不可逆动作。
- 页面跳转、弹窗、下载、后台 tab 和 network idle 都需要 session-aware 归属。
- 高风险动作必须验证未发生重复提交和越权 side effect。

## 来源与证据等级

由 EXT-2026-07-12-015 的 AX-first、coordinate click、targeted verification 与 CDP session 实现提炼，并按现有技术/业务证据分层补强。

