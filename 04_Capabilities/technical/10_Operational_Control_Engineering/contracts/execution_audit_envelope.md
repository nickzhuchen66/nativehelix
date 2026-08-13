# Execution Audit Envelope

## 目的

让每次 Agent、工具或外部模型执行都可定位、复核、重放和追责，而不读取 secret 内容本身。

## 最小字段

- identity：run_id、task_id、attempt、parent_run、actor、revision
- scope：tool/model、permission、input/output locations、side-effect class
- timing：started_at、ended_at、duration、timeout
- result：status、error_stage、error_code、partial artifacts
- route：pre-route、post-route、quarantine/withholding reason
- cost：estimate、approved ceiling、usage、actual-or-unknown
- integrity：artifact checksum、schema version、validator/evaluator revision
- security：secret_content_read、redaction、policy violations
- recovery：retry/circuit/takeover/rollback state

## 不变量

- `actual_cost = null` 表示不可观察，不表示零。
- Secret 审计记录是否访问和违反政策，不读取或散列 secret 内容。
- Retry 每次有独立 attempt；不得覆盖先前失败。
- Runtime trace 与 acceptance/promotion trace 分开，通过 task/artifact identity 关联。

## 来源与证据


