# Skill Evaluation Protocol

## 目的

证明 Skill 在该触发时触发、不该触发时保持沉默，并改善任务结果而不引入过程、安全、风格或效率回归。

## Paired Dataset

- explicit trigger、implicit natural trigger、paraphrase/boundary cases
- `should_trigger=false` 的邻近任务与冲突 Skill
- with-skill 与 baseline/no-skill 使用相同 task、environment、model/config 和 budget
- 每个 task 保留 matched pair；确认 Skill 实际触发/加载/调用，未调用时不得把 ambient model 能力归因给 Skill
- historical failures、pollution/adversarial input、Host projection variants
- common functional 与 edge/failure-handling tasks 分层；task manifest 要有 objective、expected outcome、pass criteria

## Four Goal Classes

1. **Outcome:** 任务/验证是否完成，产物是否可用。
2. **Process:** 是否选择正确 Skill、调用必要工具、遵循关键顺序和权限。
3. **Style:** 输出/实现是否符合明确 convention。
4. **Efficiency:** turns、tool calls、tokens、latency、cost、thrash 和残留文件。

## Evaluation Order

```text
trigger classifier
-> deterministic trace/artifact checks
-> behavior/integration verifier
-> read-only structured rubric evaluator
-> repeated trial comparison
-> promotion decision
```

JSONL/normalized trajectory 是过程证据；最终文本不能替代 command、file、permission 和 cleanup 检查。Rubric 仅评价无法确定性表达的性质，使用固定 schema、独立上下文和明确 unknown。

Utility 与 Security 使用不同证据通道。Utility 比较 baseline/with-skill 的 outcome 和成本；Security 使用独立 adversarial probes。不得把两者压成一个总分，也不得用安全平均分抵消 credential leak、越权、任意代码执行等 critical failure。

单次 paired run 只用于 smoke test。晋级必须重复试验并报告 variance；任何阈值、效率映射和权重都要作为可校准 policy 而非自然常数。若关键 Security probe 失败，结论是 reject/quarantine，而不是 Caution 分数。

## Output

- trigger precision/recall、false positive/negative
- outcome/process/style/efficiency vector，不压成单一分数
- baseline delta、trial variance、cost、regressions 和 failure taxonomy
- invocation attribution、critical security veto、probe coverage 与未覆盖 threat family
- Skill/revision/model/Host/environment locks、raw trace/artifact manifest
- accept/reject/retire decision 与下一次复验触发

## 来源与证据

由 OpenAI Testing Agent Skills Systematically with Evals 的 success-first、正/负触发、JSONL deterministic graders 与只读 structured rubric 流程提炼；结合 SkillTester 的 matched no-skill、invocation attribution 和独立 security probe 思路，纠正其单次任务、未校准 scalar threshold 与安全平均分风险。尚无私有 Skill Eval runner。
