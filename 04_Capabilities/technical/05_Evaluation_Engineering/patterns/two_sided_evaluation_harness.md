# Two-Sided Evaluation Harness

## 核心原则

评价必须同时证明系统“应该做的能做”和“不应该做的没有做”。只有正例通过，不能证明 Harness 安全或边界正确。

## Fixture 组合

- Positive：合法输入、目标能力和期望输出。
- Negative：越权、缺字段、错误来源、错误 route、malformed output。
- Pollution：看似相关但应被隔离或排除的内容。
- Historical：真实回归与曾发生的失败。
- Quasi-real：人工构造、保留现实复杂性的准真实样本。
- Passing behaviors：当前必须持续保留的既有行为。

## 评价分层

```text
static/schema -> behavior -> integration -> replay/E2E -> clean state
```

每层区分 deterministic validator、model evaluator 和 human review。机械全绿只证明相对于当前 oracle 的一致性，不证明 oracle、需求或业务判断正确。

## 输出

输出每类 fixture 的通过率、硬红线、失败归因、回归、方差、成本和残余风险；不得只给单一总分。

## Rule / Evaluator 自身的双侧验证

- 每条安全或准入规则至少有一个 bypass/false-negative fixture。
- 同时提供一个合法 safe/false-positive control，防止通过扩大匹配获得虚假 recall。
- Labeled corpus 分别报告 precision、recall、未覆盖 rule 和 forbidden firing。
- Unit test 证明局部逻辑；labeled validation 证明规则在已标注样本上的行为，二者不能互相替代。

## 来源与证据

