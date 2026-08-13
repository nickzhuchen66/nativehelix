# Multi-Agent Coordination

## 核心问题

多个不同职能或同职能 Agent 如何分工、委派、冲突、回收和共同接受结果。

## 范围

- role binding、delegation、message envelope
- planner / builder / evaluator separation
- ordered triangulation、challenge、escalation
- conflict preservation、arbitration、human decision
- shared state 与 isolated context
- planned / emergent placement、commons governance、worktree waves

## 已吸收候选定义

`Subagent = child session + selected context projection + scoped resource inheritance + evidence-return contract`。共享资源不等于共享 transcript；父 Agent 还必须验证并合并 child 的世界状态。

## 可复用资产

- [Subagent Job Protocol](contracts/subagent_job_protocol.md)：提交包、作业状态、证据回收、验证与合并责任
- [Planned / Emergent Placement](patterns/planned_emergent_placement.md)：按可逆性、可读性和耦合度决定协调模式
- [Governed Agent Commons](contracts/governed_agent_commons.md)：共享状态治理、所有权、衰减、冲突与 merge strategy
- [Worktree Wave Coordination](patterns/worktree_wave_coordination.md)：独立范围、wave、discovery relay、readiness 和 fail-closed merge

## 当前证据

Architect/Builder/Reviewer 分离已有真实实践；同职能多 Agent 冲突尚无充分案例。

## 当前边界

本能力保持 candidate，不宣称已有通用 multi-agent orchestration platform。
