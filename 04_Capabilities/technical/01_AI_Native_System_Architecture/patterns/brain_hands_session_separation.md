# Brain–Hands–Session Separation

## 目的

把推理 Harness、执行环境和耐久会话拆成可独立失败、替换和扩缩容的接口，避免一个容器同时成为认知、数据、凭据和恢复的“宠物服务器”。

## 三个接口

| Component | Responsibility | Durable? | Must not own |
|---|---|---:|---|
| Brain | model + harness loop、context selection、tool routing | stateless preferred | production credentials、唯一 session copy |
| Hands | sandbox/tool/MCP execution、files/process/network | disposable | canonical conversation history、raw vault tokens |
| Session | append-only events、IDs、artifacts、approval and checkpoint state | yes | model-specific compaction policy、tool execution |

## Runtime Flow

```text
pending events -> Brain selects/reconstructs context
              -> execute(hand_id, typed input)
              -> credential proxy injects authority outside sandbox
              -> append result/event to Session
              -> checkpoint / continue / recover
```

## 不变量

- Session log 与 Context Window 分离；compaction/trimming 可逆到原始 event/artifact。
- Hands 按需创建、可销毁；失败不丢 session，恢复不要求修复原容器。
- Credential 位于 vault/proxy，Brain 和 generated code 不接触原 token。
- 每个 Hand 有 environment/capability fingerprint；切换 Hand 时重新协商权限和外部状态。
- Event schema、ordering、idempotency 和 retention 有版本；append-only 不等于无限保留敏感数据。
- Session recovery 重放决策状态，不盲目重放外部副作用。

## Component Expiry

每个 Harness 组件记录它补偿的模型/环境缺陷、复验基线和 removal condition。模型升级后重跑 ablation；已无价值或产生负担的组件退休，而非永久堆叠。

## 来源与证据

由 Anthropic Managed Agents 的 brain/hands/session、credential proxy、durable event log 和按需 sandbox 架构提炼；其延迟改善是特定托管实现数据，本模式只吸收接口与失败隔离原则。

