# Conflict Preservation and Arbitration

## 目的

当多个 Agent、证据或角色给出冲突结论时，保留分歧结构并交给具备权限的机制处理，而不是用多数票或摘要抹平。

## Conflict Record

- conflict_id、question、affected decision/artifact
- positions[]：actor/role、claim、evidence、assumptions、confidence
- shared facts、disputed facts、missing evidence
- consequence of each option、reversibility、time pressure
- arbitration owner、decision deadline、temporary safe state

## 仲裁顺序

1. 检查是否为版本、定义或来源优先级问题。
2. 请求独立证据或针对性实验，而非更多同源复述。
3. 可逆且低风险时允许 bounded experiment。
4. 涉及方向、责任、付费或不可逆影响时进入 Human Sovereign Gate。
5. 记录决定、被拒方案和触发重新打开冲突的条件。

## 来源与证据


