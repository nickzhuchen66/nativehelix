# Harness Migration Safety Gate

## 目的

在 Claude Code、Codex 或其他 Agent Host 之间迁移 Harness 时保持语义、权限、secret 和回滚能力；文件复制成功不等于迁移成功。

## Migration Packet

- source/target Host 与版本、项目根、scope tree
- source inventory：instructions、hooks、MCP、skills/plugins、agents、settings、memory/state
- semantic mapping：`preserved | transformed | advisory | unsupported | dropped`
- secret/path/env/wrapper 依赖与处理策略
- dry-run diff、冲突策略、approval、rollback snapshot
- target conformance tests 与人工复核记录

## Gate sequence

1. **Freeze:** 迁移审计完成前，目标 Agent 不编辑业务源码。
2. **Inventory:** 解析嵌套 instruction scope，不只搜索文件名。
3. **Map:** 对每个行为说明目标 Host 的真实 enforcement；不把 hook 文本等同为阻断。
4. **Sanitize:** Secret 不进入报告、远程 MCP、模型上下文或版本库；路径/wrapper/env 引用可解析。
5. **Plan:** 先产出 dry-run diff；覆盖、合并、跳过与删除分别列出。
6. **Approve:** 用户批准变更范围；购买、安装、登录、网络上传另行授权。
7. **Apply:** 原子写入并保留 pre-migration snapshot；失败可回滚。
8. **Verify:** lint/resolve instructions、MCP handshake、skill discovery、hook/approval negative test。
9. **Release:** 只有验证通过后解除目标侧 source-edit freeze。

## 不可接受的证据替代

- 公共 endpoint 在线 ≠ 本地迁移正确。
- `curl | sh` 成功 ≠ installer 安全或版本可重现。
- 文件存在/symlink 正确 ≠ 两个 Host 语义等价。
- “no-data” 声明 ≠ 远程实现经审计；敏感迁移默认 local-only。

## 来源与证据

由 Bring Your AI MCP 公共迁移审计材料提炼；其核心 CLI 为闭源、仓库 all-rights-reserved，故仅采用独立表达的安全 Gate，不采用实现或 schema。

