# Protected Self-Modification Control Plane

## 不变量

自改循环不得拥有定义或扩大自身操作边界的权限。下列能力必须处于循环之外：

- tool/文件/网络权限与 secret policy；
- evaluator、held-out 数据和接受阈值；
- token、时间、并发和费用预算上限；
- promotion、deployment、rollback 和 human takeover；
- append-only audit 与 candidate lineage。

## 控制接口

| Operation | 必要输入 | 必要输出 |
|---|---|---|
| `launch` | candidate、scope、budget、baseline | run_id、effective limits |
| `inspect` | run_id | state、metrics、logs、budget_used |
| `cancel` | run_id、reason、authority | terminal state、partial artifacts |
| `wait` | run_id、timeout | terminal/timeout state |
| `rollback` | active_version、target_version、authority | restored version、verification |
| `promote` | candidate、evaluation packet、human approval | active version、decision record |

## 失败语义

权限拒绝、预算停止、全候选 reject 和人工接管都是合法终态。任何候选即使质量更高，只要触发 protected-surface 变更也必须 reject。

`tests missing`、`test dependency unavailable`、`held-out empty`、`validator timeout` 和 `evaluator unknown` 不得被归为 pass/skip。Worktree、resource registry 或 rollback tag 只提供隔离、可见性或恢复线索，不替代 protected-surface enforcement 与 promotion authorization。

Controller 必须在候选之外执行 protected diff、evaluation selection 和 promotion。候选只可提交 `promotion_candidate`；不得自行 merge active branch、修改 evaluator 或复制生产 secrets。

## 来源与证据等级

由 EXT-2026-07-12-001 关于“permission/security 留在 self-editing loop 外”和后台作业控制的要求提炼；EXT-2026-07-12-014 的自动合并、advisory registry 与可跳过测试作为反例验证了机械隔离的必要性。接口为本地规范化建议，尚未冻结为 SDK。
