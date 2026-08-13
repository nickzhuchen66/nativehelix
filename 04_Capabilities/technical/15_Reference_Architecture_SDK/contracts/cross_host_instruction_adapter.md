# Cross-Host Instruction Adapter

## 目的

让一个 canonical repository instruction model 投影到 Codex、Claude Code、Gemini、Copilot、Cursor 等 Host，而不假定相同文件名代表相同行为。

## Canonical Model

- scope/path、priority、rule id、instruction text；
- applies/does-not-apply；
- command + working directory + side-effect class；
- required verification；
- authority requirement；
- source revision/hash、freshness、owner。

## Adapter 接口

| Operation | 输出 |
|---|---|
| `discover(host, root, target)` | Host 实际读取的文件与顺序 |
| `project(canonical, host)` | Host-specific instruction artifact/config |
| `explain(target)` | effective rules、source、override/conflict |
| `lint` | unsupported semantics、unsafe command、stale reference |
| `conformance` | fixture 中 Host 实际观察到的 rule set |

## Conformance 维度

- root/nested discovery 与 nearest-scope precedence；
- user/system/repository precedence；
- symlink、worktree、monorepo 和 workspace root；
- include/reference semantics；
- size/truncation、encoding、cache/freshness；
- command execution是否自动、需批准或仅作提示；
- unknown/unsupported 字段是否显式降级。

## 规则

兼容性必须由至少一组 fixture 证明，不能由 logo、文档链接或 symlink 存在推断。Projection 是可重建 artifact；canonical source 保持唯一，Host-specific 手工编辑视为 drift。

## 来源与证据等级

由 EXT-2026-07-12-016 的多工具约定与 EXT-2026-07-12-017 的迁移提案反向提炼；两者均无跨 Host conformance suite，因此当前为 candidate SDK contract。

