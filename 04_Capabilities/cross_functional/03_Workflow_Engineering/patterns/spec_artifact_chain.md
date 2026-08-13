# Spec Artifact Chain

## 目的

把意图、需求、技术方案、任务和实现验证分成有来源关系的正式工件，降低一次 Prompt 直接生成代码带来的方向漂移。

```text
Constitution
  -> Specification (what/why + scenarios + outcomes)
  -> Clarification
  -> Plan (how + contracts + constitution check)
  -> Tasks (dependencies + independent slices)
  -> Analyze (cross-artifact consistency)
  -> Implement
  -> Converge (implementation against all upstream artifacts)
```

## 工件责任

- Constitution：长期治理原则和不可违反约束；变更需版本与影响报告。
- Specification：用户场景、边界、功能要求和可衡量结果，不抢先锁定实现。
- Plan：技术上下文、架构、数据/接口合同、复杂度例外。
- Tasks：精确路径、依赖、并行安全、独立验收和交付切片。
- Convergence Report：实现与 spec/plan/tasks 的未满足项，不能只读取任务勾选状态。

## 不变量

- 下游工件必须引用上游 revision；上游改变触发影响分析。
- Specification 和 Code 都不是单独的唯一事实源；当前行为由 spec、accepted decisions、code 和 tests 共同裁决。
- Constitution 属于 protected surface，Agent 可提出修订但不能自行批准。
- 高风险项目的测试、安全、审计义务由治理政策强制，不因模板“可选”而消失。

## 来源与证据

由 GitHub Spec Kit 的 SDD 工件链提炼，并按本地 Human Sovereign Gate 和 source-precedence 规则收紧。

