# Evidence Admission State Model

## 目的

阻止“审查通过”被误读为“已经写入、验证、批准或晋级”。

```text
contract_valid
  != review_passed
  != physical_written
  != canonical_landed
  != evidence_verified
  != business_approved
  != promoted
```

## 状态说明

- `contract_valid`：结构和必填字段正确。
- `review_passed`：Reviewer 未发现阻断问题。
- `physical_written`：工件已写到某个位置，不代表 canonical。
- `canonical_landed`：进入正式存储，但仍可能未验证或未启用。
- `evidence_verified`：声明获得对应证据支持。
- `business_approved`：授权人接受业务含义和风险。
- `promoted`：进入 active/curated/production，具备版本和回滚。

## 转移要求

每次转移记录 actor/authority、input revision、gate evidence、timestamp、side effect 和 rollback target。禁止由下游状态反推上游证据，也禁止跳级隐式授权。

## 来源与证据


