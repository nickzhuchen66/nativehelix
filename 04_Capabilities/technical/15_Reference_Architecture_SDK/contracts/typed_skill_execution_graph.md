# Typed Skill Execution Graph Contract

## 目的

把复杂 Skill 表达为可寻址的执行图：确定性步骤脚本化，判断步骤保留自然语言，并用 typed input/output edge、Schema 和运行时证据约束组合与修复。

## Package

```text
skill/
  SKILL.md                 # graph + trigger + purpose
  scripts/                 # deterministic nodes
  references/              # judgment-node evidence
  source/
    original-SKILL.md      # provenance
    procedure.schema.json
```

每个 node 必须声明：稳定 ID、purpose、input/output type、owner（script/judgment/human）、side effects、permission、timeout、validator、failure edge。

## Compile Gate

- 保留原 Skill、source revision、compiler/model revision 和 transformation diff。
- Schema validation 只证明结构；生成脚本必须单独 static review、sandbox test 和 task verifier。
- graph 必须检查 unreachable node、missing edge、type mismatch、cycle/budget、approval/validation 缺失。
- compilation failure 或不确定语义不得以猜测填充为成功。

## Runtime Conformance

- Host 必须实际遍历图或生成可核验 node/edge trace；把整个 YAML 放入 context 并依赖模型服从不算 enforcement。
- script node 只能在声明权限内执行；judgment node 的输出要经 type/contract validation。
- retry、fallback、human approval 与 legal stop 是显式 edge。
- node-level repair 后重跑局部测试与 held-out regression；不得仅重编译后宣布修复。

## Evaluation

- human/free-form baseline 与 typed-graph candidate 使用相同 task/model/environment/budget。
- 单独设置 plain-Markdown-with-same-scripts 对照，区分“图结构收益”与“编译器改写脚本收益”。
- 报告 mean reward、ties/floors、trial variance、wall time/tool cost，不把未显著的速度差写成提升。
- 至少跨第二模型与第二任务族验证后，才能主张 portable representation。

## Governance

允许按 node/edge 查询 missing approval、shared procedure、authority 和 validation coverage；查询结果仍要回到实际 runtime trace。自动 edit-evaluate loop 必须经过 Protected Self-Modification Control Plane。

## 来源与边界

由 AIP 图表示的 typed edge、script-backed node、provenance 和 node-level repair 提炼。论文在 27 个任务、单一 Sonnet solver、每 cell 5 次试验中报告 reward 提升，但存在 format-author confound、12-13 个 ties、all-or-nothing verifier、三个旧协议任务和无强制 graph traversal。公开数据集存在，结论仍只支持候选设计模式。
