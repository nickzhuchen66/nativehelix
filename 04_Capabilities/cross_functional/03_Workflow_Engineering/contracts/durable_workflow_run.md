# Durable Workflow Run Contract

## 目的

让长流程在暂停、失败、人工 Gate 或进程中断后，从明确状态恢复，而不是依赖聊天记忆重放整个流程。

## Run State

- `run_id`、workflow_id/version、status、current_step_id/index
- resolved inputs、step results、created/updated time
- frozen workflow definition、append-only event log
- permission/cost scope、human gate decision、resume reason

## 状态与步骤

```text
created -> running -> paused|failed|aborted|completed
paused|failed -> resume(current step with revised inputs)
```

支持 serial、if/switch、bounded while/do-while、fan-out/fan-in。每个循环声明 `max_iterations`，每个 fan-out 声明并发上限和合并责任。

## 持久化要求

- state 采用原子写入；并发分支更新有锁或单写者。
- `run_id` 必须是安全路径组件，Run Directory 不得逃逸项目边界。
- Resume 重新校验输入、权限、依赖和外部世界状态，不假设失败时环境未变化。
- Shell/外部副作用步骤不能因状态恢复被隐式重复；必须声明 idempotency 或补偿策略。
- 长任务将目标与运行记忆拆成四类：冻结的 spec/deliverables、milestone/validation plan、execution runbook、append-only status/decision/audit log；不得让一个可变文件同时承担全部角色。
- Context compaction 不等于 durable recovery；原始 event/artifact 必须在 Context Window 外可检索，恢复时按需重建而非只信摘要。

## 安全边界

工作流引擎不自动等于能力沙箱。若 shell 继承用户权限，必须在执行前经过独立 permission gate；`requires`/metadata 不能伪装成实际 enforcement。

## 来源与证据

由 GitHub Spec Kit Workflow Engine 的 run state、resume、gate、control-flow 与安全说明提炼；OpenAI long-horizon Codex 实验和 Anthropic Managed Agents 补强四类持久工件及 session/context 分离。尚无本地项目运行验证。
