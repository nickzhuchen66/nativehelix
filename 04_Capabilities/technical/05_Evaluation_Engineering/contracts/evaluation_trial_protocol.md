# Evaluation Trial Protocol

## 实体

- `TaskPackage`：instruction、environment、verifier、resources/timeouts、metadata、revision。
- `AgentAdapter`：name/version/model、setup、run、trajectory capability。
- `EnvironmentProvider`：start/stop、command/file operations、declared enforcement capabilities。
- `Verifier`：independent inputs、oracle revision、reward/metric vector、artifacts。
- `Trial`：一个 task × agent × attempt × effective config。
- `Job`：trial 集合、并发、retry、selection 和 aggregate results。

## Trial Packet

- durable trial/context ID 与 human-readable session ID 分离
- task/agent/environment/verifier revision 和 lock
- effective timeout/resource/network/permission configuration
- lifecycle timing、terminal state、exception stage
- result metrics、reward/oracle output、trajectory 和 artifact manifest
- cleanup/delete state、actual-or-unknown cost

## 不变量

- Agent 与 Verifier 默认隔离，Verifier 不消费可被 Agent 篡改的唯一证据。
- Environment 无法执行请求控制时 fail closed，不静默降级。
- Retry 生成新 attempt；结果保留全部失败，不只保存最好一次。
- Artifact 冲突不覆盖；manifest 记录成功、跳过和失败。
- Task oracle 的正确性与 Trial 执行成功分开评价。

## 来源与证据

由 Harbor 的 Task/Agent/Environment/Verifier/Trial/Job 模型提炼；尚未形成私有 runner。

