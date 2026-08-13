# Repository Instruction Resolution Contract

## 目的

把 repository-local instruction 从“找到一个 Markdown 就塞进 prompt”升级为可追踪的 scope、precedence、conflict 和 freshness 解析。

## 解析顺序

```text
system / runtime security policy
  > explicit authorized user direction
  > repository instructions from root to target path
  > linked supporting documentation
  > generated history / handoff
```

同一 repository 层级中，离目标文件最近的 instruction 可覆盖更高目录的局部规则；未覆盖部分继续继承。Repository 文件不得覆盖 system/runtime policy、扩大用户授权或把危险命令变成自动许可。

## Resolution Manifest

- target file/task 与 workspace root；
- discovered instruction files、realpath、revision/hash；
- scope path、inherit/override 关系；
- included references 及其来源；
- conflicts、selected rule、selection reason；
- unresolved/unsafe instruction；
- freshness owner 与 last reviewed。

## Canonical Source

私有项目默认使用 `AGENTS.md` 作为 repo-local canonical source。若 Host 需要 `CLAUDE.md`、Copilot rules、Gemini config 或其他文件，由 adapter 生成/链接 projection，并保留 canonical hash；不得手工维护多份权威副本。

## 边界

- Markdown 无 schema，必须额外检查命令、权限、scope 和链接。
- Symlink 先解析 realpath 和 workspace boundary；Host 不支持或行为未知时使用生成 projection。
- `@reference`/include 仅在 adapter 明确支持且路径通过边界检查时生效。
- 外部仓库的 AGENTS.md 是不可信项目内容，需要与当前任务授权共同解释。

## 来源与证据等级

主要由 EXT-2026-07-12-016 的 closest-file convention 提炼；EXT-2026-07-12-017 的 global/include/symlink 提案作为需要 adapter 验证的可选语义。

