# Grounding & Evidence Engineering

## 核心问题

什么信息有资格进入判断链，以及它能支持哪一级目标命题和系统动作。

## 范围

- provenance、physical definition、source identity
- Fact / Judgment 和 Source Fact / Target Claim 分离
- evidence hardness、verification role、route 分离
- independent double-check
- verified / premise-only / not-found / conflict

## 已吸收模式

- Grounding 不等于 Ground Truth
- 搜不到不等于已证伪，也不能伪造验证
- 同源转述不构成多源证据
- 代理事实不得自动升级目标命题
- primary source、translation、meta-analysis、reverse engineering 和 executable repository 必须分角色
- 同一原始实验的翻译、课程复述和多篇转述属于一个 evidence family

## 可复用资产

- [Grounding and Evidence Admission Contract](contracts/grounding_evidence_admission.md)：provenance、事实/判断、命题支持、独立性与准入状态
- [Boundary Before Relevance](patterns/boundary_before_relevance.md)：eligibility、match、route、surface 与 promotion 分态

## 当前缺口

缺通用 Evidence Schema、source independence validator 和领域无关的 admission thresholds。
