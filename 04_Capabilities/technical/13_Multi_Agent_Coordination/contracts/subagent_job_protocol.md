# Subagent Job Protocol

## 父任务提交包

- `job_id`、`objective`、`acceptance_contract`
- 选择后的 context projection 与 source precedence
- tool/resource scope、预算、deadline、cancel policy
- output artifact path、evidence-return contract
- 允许并行的独立性声明与 merge owner

## Context 与权限投影

- 默认不传递完整 transcript、父任务 todo、structured response 和 middleware-private state。
- child 只获得完成任务所需的 source slices、工具、skills 和 durable-state references。
- `effective_permissions` 必须在 launch 前物化。继承可保持或收窄；replacement 若扩大 parent envelope，必须单独批准。
- 文件工具受控不代表 shell/execute 受控。backend 无法对 execute 执行同一策略时，必须拒绝组合或使用外层 sandbox。
- 预编译/custom child 必须声明未继承的 state schema、middleware、interrupt 和 verifier 保证。

## 生命周期

```text
created -> running -> waiting|completed|failed|cancelled -> inspected -> merged|rejected
```

父 Agent 必须能 launch、inspect、cancel、wait 和 merge。子 Agent 的重要结果写入持久工件；聊天摘要只作为通知，不作为唯一证据。

## 回收与合并

- 返回结论、证据定位、改动范围、未决项、验证和失败状态。
- 父 Agent 重新验证世界状态，处理重叠写入和冲突，不直接相信“已完成”。
- 多 Agent 的同源复述不构成独立证据。
- 涉及责任、权限或业务取舍时，冲突保留给具备授权的人类或仲裁角色。

## 来源与证据等级

