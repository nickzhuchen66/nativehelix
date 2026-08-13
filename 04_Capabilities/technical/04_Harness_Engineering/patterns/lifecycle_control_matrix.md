# Harness Lifecycle Control Matrix

## 目的

按控制方向、判定方式和生命周期位置布置 Harness，而不是把所有规则都塞进 Prompt 或所有检查都放在最终 PR Gate。

## 两个维度

| | Computational | Inferential |
|---|---|---|
| Feedforward | schema、codemod、typed tool、architecture generator | AGENTS、Skill、examples、review guidance |
| Feedback | lint、test、structural check、trace/state assertion | review agent、rubric、LLM judge、human review |

Feedforward 提高首次正确概率；Feedback 让 Agent 在交付人类前自我修正。Inferential control 必须披露模型、rubric、方差和失败语义。

## Lifecycle Placement

- **Pre-action:** 便宜、确定性的 schema/permission/scope/interface checks。
- **Inner loop:** lint、unit、targeted behavior、tool error remediation。
- **Pre-integration:** broader tests、security/static scan、focused review agent。
- **Post-integration:** mutation、architecture/system review、production-like replay。
- **Runtime:** logs、metrics、traces、user journey and business outcome sensors。
- **Evolution:** recurring failure 进入 Harness proposal，而不是只修当前 artifact。

每项控制记录 latency、cost、criticality、coverage、owner 和激活策略；昂贵控制不应无差别前置，便宜红线不应拖到发布后。

## Human Placement

Human 保持 why loop、任务价值与终局责任；Agent 运行 how loops。成熟类别从逐 artifact 修复转向“修改产生 artifact 的 Harness”，但自动改进仍受 protected surface、independent evaluation 和 promotion gate 约束。

## 来源与证据

由 Martin Fowler/Thoughtworks 的 feedforward vs feedback、computational vs inferential、shift-left lifecycle 与 humans-on-the-loop 图示模型提炼，并受现有 Human Sovereign Gate 和 Bounded Improvement 约束。

