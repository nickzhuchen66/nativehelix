# Natural-Language Harness Policy Contract

## 目的

把 Harness 的可变运行策略表达为可读、可比较、可消融的自然语言对象，同时把精确执行、安全和判定留在确定性代码中。

## 分层

| 层 | 适合承载 | 不得仅靠该层保证 |
|---|---|---|
| Base runtime | model/tool loop、事件流、timeout、history、run state | task-family policy |
| Runtime charter | 如何解释策略、child/context/artifact/completion 语义 | 外部工具自身权限 |
| NL policy | role、stage、handoff、evidence、retry、recovery、stop policy | sandbox、parser、schema、budget enforcement |
| Code hooks | tool、validator、parser、benchmark adapter、artifact check | 开放式判断策略 |

## Policy 必填

- task contract：输入、允许动作、输出、完成与合法停止条件
- named stages：每阶段 owner、输入、输出、下一阶段 gate
- state/evidence：权威载体、恢复路径、claim provenance
- context boundary：继承、fresh context、压缩前保存和重载规则
- retry/recovery：触发信号、变化轴、尝试上限、不可恢复状态
- permission/budget reference：指向实际 enforcement，不把文字声明当控制
- module boundary：模块的输入输出及可独立关闭的 ablation surface

## Compile / Execute Gate

运行时先把 Policy 解析为显式 execution plan：

```text
policy revision
-> roles/stages/edges
-> required artifacts and deterministic hooks
-> permission + budget bindings
-> runnable completeness check
-> execution trace
-> policy-conformance report
```

若 Policy 不完整，只能合成被 Host 明示允许的最小基线；必须记录补全内容，不能静默发明权限、验证器或成功条件。

## Enforcement Boundary

- “要求验证”不等于验证发生；必须有 validator event 与 artifact。
- “不得访问网络”不等于网络被禁止；必须绑定 sandbox/policy enforcement。
- “按图执行”不等于实际路径符合；必须比较计划边与 trace 边。
- final text、角色自报和 Markdown 状态不能替代 tool、permission、budget、cleanup 证据。
- model、Host、runtime charter 与 Policy revision 必须锁定；跨模型迁移要重跑 completion/tool/handoff 测试。

## Promotion Evidence

- policy-vs-prompt、policy-vs-code paired trials
- outcome 与 mechanism-conformance 分开报告
- handoff recall、contract compliance、failed-tool recovery、cost/latency
- 模块 ablation 使用相同 runtime、model/config、task sample 和 budget
- 至少一个私有项目的失败/恢复证据；只读 Policy 或 Schema 不算执行证据

## 来源与边界

由 Natural-Language Agent Harnesses 的 NLAH/IHR 分工提炼。论文证明自然语言策略可以驱动原型运行时，但 handoff recall 较弱、成本更高，且自然语言存在解释不确定性；公开复现指南仍为 WIP。因此该资产是设计合同，不是自然语言 enforcement 的成熟证明。
