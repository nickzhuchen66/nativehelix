# Agent-Editable Browser Harness

## 目的

让 Agent 能在不膨胀核心浏览器驱动的前提下补充任务 helper，同时把协议连接、授权、验证、记忆与可编辑代码分层。

## 分层

```text
Task Script
  -> Protected Browser Primitives
  -> Editable Task Helpers
  -> IPC / Session Broker
  -> Browser Runtime Adapter
  -> local dedicated | shared real profile | isolated remote
```

- **Protected primitives:** navigate、AX/DOM inspect、input、screenshot、network wait、tab/session。
- **Editable helpers:** 只允许写入声明的 workspace；每个 helper 有来源任务、适用域、输入输出与验证。
- **Session broker:** 持有 CDP/browser connection、目标 tab 和事件缓冲，调用端不直接管理长连接。
- **Runtime adapter:** 明确 browser profile、network、cookie、download/upload、billing 与 teardown 能力。

## 操作闭环

1. Observe：优先 AX/semantic state，必要时 DOM；视觉问题使用 screenshot。
2. Select：记录目标 role/name/backend id 或可复核 selector。
3. Act：执行最小动作，不把多步不可逆行为隐藏在一个 helper。
4. Verify：读取动作后的独立状态；“调用成功”不等于页面目标完成。
5. Learn：新 helper/domain rule 先进入 runtime candidate，不直接进入 curated skill。

## 不变量

- editable helper 不得扩大 browser/session authority；权限由外层 envelope 决定。
- shared signed-in profile 不等于 sandbox，raw CDP 可访问 cookies、站点数据和所有 tab。
- telemetry、screenshots、DOM、helper args 和 downloads 默认按敏感数据处理。
- purchase、send、publish、delete、consent、profile sync 和持续计费必须有显式 gate。

## 来源与证据等级

由 EXT-2026-07-12-015 的 CLI/daemon/helper/workspace 实现提炼；上游仅有静态分析检查，尚无私有行为验证。

