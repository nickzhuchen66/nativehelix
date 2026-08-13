# Governed Config Compiler

## 目的

把人工治理的知识/政策源与机器执行配置分开，防止运行时配置反向成为事实源。

```text
governed source -> schema validation -> generator -> runtime config -> consumer
                         |                    |
                    reject/error       generated header + source revision
```

## 不变量

- Governed Source 是 canonical；Runtime Config 是可重建生成物。
- Generator 只做确定性转换与校验，不偷偷补业务判断。
- Runtime 只保留执行需要的字段，不携带治理注释和敏感信息。
- 禁止手改生成物；发现漂移应回到 Source 或 Generator。
- 每个生成物记录 source revision、generator revision 和 checksum。

## 最小合同

- 输入：source schema、source artifact、generator version。
- 输出：runtime schema、runtime artifact、validation report、lineage。
- 失败：schema_invalid、reference_missing、conflict、generation_error。
- 复验：source、schema 或 generator 任一变化即重新生成并跑 conformance。

## 适用边界

适合规则、路由、知识索引和策略配置。需要实时协同编辑、事务或高并发写入时，文件生成链不是完整后端方案。

## 来源与证据


