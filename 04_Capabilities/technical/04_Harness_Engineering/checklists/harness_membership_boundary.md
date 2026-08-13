# Harness Membership and Scope Test

## 目的

判断一个运行组件是否构成 Agent Harness，并把“组件成员资格”与“产品架构范围”分开，避免把 SDK、固定 Workflow、Eval Harness 或完整 Agent 产品混成同一层。

## 四项运行时检查

候选组件必须同时满足：

1. **Adaptive loop**：单个任务内存在 observation 改变下一动作的 reason/action/observe loop。
2. **Environment action**：模型通过受控工具实际感知并改变外部环境，而非只生成建议。
3. **Task-aware context**：根据任务内容/当前观察选择、压缩、检索或恢复 context；仅按长度截断不够。
4. **Independent control**：至少一个不依赖模型自愿服从的 limit、validator、approval、sandbox 或 deterministic handler。

任一项缺失时，记录它更接近的组件类型；不要为了命名完整而补写不存在的行为。

## 邻接边界

| 候选 | 默认判断 | 何时包含 Harness |
|---|---|---|
| Agent SDK | building blocks | 已组装并运行完整 loop/context/control |
| Framework | agent composition | 每个 agent 或共享 runtime 嵌入四项能力 |
| Fixed Workflow | 预定义步骤图 | 某节点内部运行 adaptive agent loop |
| Eval Harness | task runner + grader | 同时承载被测 agent 的运行时控制时需拆成两个角色 |
| IDE assistant | suggestion surface | 能修改环境、闭环验证并受运行时控制 |
| Agent Product | 用户体验与业务系统 | 其 runtime subsystem 可通过四项测试 |

## Scope Rule

- 四项测试用于识别 **runtime Harness component**，不用于缩小完整产品的架构范围。
- 产品级 Harness 可以包含 fixed Workflow、UI、memory、multi-agent、eval 和 governance；这些外围能力不必都成为成员资格条件。
- “是/否”回答成员资格；成熟度另看隔离、可观测、恢复、预算、权限和项目证据。
- guardrail 是 Harness 的 control 部分，不是 Harness 全体。

## 证据

- 入口/loop 代码或 trace
- tool authority 与环境改变证据
- context selection/compaction/recovery 记录
- 不依赖模型合作的 control test
- 组合系统必须标明哪一层通过测试，不能只给产品名打标签

## 来源与边界

由 What Makes a Harness a Harness 的 T1-T4 判定法提炼，并修正其对固定 orchestrator 与产品级系统可能过窄的边界。原论文是单作者概念分析，六个正例是预先选择的 Harness；因此本清单用于术语和组件边界，不作为效果或成熟度证据。
