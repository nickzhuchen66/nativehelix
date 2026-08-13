# Review / Approval Envelope

## 语义分离

- Review 判断质量、合同和证据。
- Approval 接受业务含义、风险、成本和责任。
- Reviewer 可以建议 route，不自动拥有 write/land/promote 权限。

## Review Envelope

- artifact/claim revision、review scope、reviewer role
- methods、fixtures、sources、findings、severity
- contract status、evidence gaps、residual risks
- recommendation：pass / conditional / fail / escalate

## Approval Reference

- approval_id、authorized owner、approved scope/version
- accepted risks、conditions、expiry
- permitted next state、cost/side-effect authorization
- rollback/takeover owner

## 不变量

Review 结果必须绑定特定 revision；产物变化后需要重审。Approval 不得笼统覆盖未来未知版本或扩大到未列明副作用。

## 来源与证据


