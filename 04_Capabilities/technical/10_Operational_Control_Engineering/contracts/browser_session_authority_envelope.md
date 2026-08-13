# Browser Session Authority Envelope

## 会话类别

| Profile | 默认用途 | 主要风险 |
|---|---|---|
| isolated ephemeral | 抓取、测试、未知站点 | 低持久身份；仍有网络/外部副作用 |
| dedicated local automation | 本地测试、可控登录 | profile 生命周期与凭据隔离 |
| shared real profile | 用户明确要求的已登录任务 | cookies、saved data、所有 tab 与真实账号完整暴露 |
| remote/cloud | 并行、隔离、反爬场景 | billing、provider trust、cookie sync、teardown |

## 启动前必填

- `session_id`、profile class、owner、browser/runtime provider；
- allowed origins/accounts、read/write action classes；
- cookie/storage/download/upload/network policy；
- irreversible actions 与 approval point；
- telemetry policy、artifact retention/redaction；
- cost ceiling、idle timeout、stop/teardown owner。

## 权限面

分别授权：navigate/read、form draft、authenticated read、download/upload、send/publish、purchase/payment、delete/destructive、cookie/profile transfer。低权限面成功不得自动解锁高权限面。

## 强制 Gate

密码、MFA、consent、账号选择、对外发送/发布、购买、付费订阅、删除、cookie/profile 同步和云端持续计费必须停在可见的人类批准点。SSO 已登录只解决身份认证，不授予业务动作权限。

## Privacy 默认值

- 私有项目 telemetry 默认关闭；禁止发送 task、output、URL、selector、DOM、cookie 或 helper 参数。
- 截图、下载和 trace 写入受控 artifact 目录并带 retention。
- shared profile 仅在 dedicated/isolated profile 无法满足且用户明确选择时使用。

## 来源与证据等级

由 EXT-2026-07-12-015 的 Chrome 权限视觉、CDP/cloud/profile-sync 和 telemetry 代码提炼；为本地安全合同。

