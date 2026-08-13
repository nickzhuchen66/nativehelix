# Task-Class Trust Envelope

## 原则

Trust 不属于某个模型或 Agent 的全局属性，而属于“Agent × 任务类别 × 环境 × 权限面”的可撤销授权。

## 五个必要属性

1. **Earned:** 由该任务类别的可审计 track record 获得。
2. **Narrow:** 一个类别的成功不迁移到邻近类别。
3. **Conditional:** 模型、工具、permission set、代码结构或 verifier 改变时重新校准。
4. **Revocable:** 失败、漂移或边界变化可立即收回。
5. **Expiring:** 没有新鲜证据时随时间衰减。

## 权限面分离

分别授予 read、write/propose、commit/merge、deploy/production 和 external side effect。较低权限面的记录不得自动证明较高权限面。不可逆操作默认只允许提议，由具备授权的人类批准。

## 重置触发器

- 基础模型、提示、工具或编排层升级；
- 新增目录、数据域、外部 API 或 secret exposure；
- repository/architecture 大幅变化；
- 任务类别漂移、异常回滚或安全失败；
- 授权超过期限或缺少代表性新样本。

## 输出

授权记录必须包含 task class、environment fingerprint、allowed surfaces、evidence window、expiry、revocation condition、owner 和最近复核时间。

## 来源与证据等级


