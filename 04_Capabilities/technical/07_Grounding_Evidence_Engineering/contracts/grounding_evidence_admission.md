# Grounding and Evidence Admission Contract

## 目的

明确“信息来自哪里、是什么、能支持什么命题、允许触发什么动作”，避免接地、事实、验证和批准混成一个标签。

## Evidence Record

- source_id、source_type、origin、revision/time、provenance
- physical definition、observed fact、judgment/inference
- source fact、target claim、support relation
- evidence hardness、evidence role、independence family
- verification status：verified / premise_only / not_found / conflict
- allowed route、expiry/freshness、reviewer

## 不变量

- Grounding 不等于 Ground Truth；来源存在不等于命题为真。
- Source Fact 不自动升级 Target Claim。
- `not_found` 不等于反证；`conflict` 不得被摘要为一致。
- 翻译、转述和同一实验的复述属于同一 evidence family。
- 代理事实、模型判断和领域专家判断保持标签，不伪装成 primary fact。

## 来源与证据


