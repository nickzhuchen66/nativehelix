# Backend Permission Boundary

## 原则

Filesystem permission rules、tool approval 与 execution sandbox 是三个不同控制面。只实现其中一个，不得宣称完整隔离。

## 必要声明

每个 backend/adapter 必须声明：

- virtual path root 与 host path mapping；
- read/write/delete 的 allow、deny、interrupt 语义与默认值；
- shell/execute 是否受同一规则覆盖；
- network、process、secret、upload/download 和 timeout 能力；
- path traversal、symlink escape 与 recursive delete 处理；
- child Agent 的继承或替换规则；
- 无法执行策略时是 reject、interrupt 还是 silent downgrade。
- tool provenance（built-in shell、MCP、plugin、remote service）及每类工具由谁真正执行 sandbox/guardrail。

## Fail-closed negotiation

若任务要求 filesystem deny/interrupt，而 backend 的 `execute` 可绕过该规则，adapter 必须拒绝组合或把 shell 放入独立外层 sandbox。不得仅因文件工具受控就把本地 shell 标记为受控。

空规则集、缺失 capability 或未知 provider 行为必须显式呈现。高风险环境默认 deny/interrupt，而不是隐式 allow。

同一 Prompt 中出现的工具不共享隐含 sandbox。Host 对 built-in shell 的限制不得推断为 MCP/外部工具受控；每个 provider 必须独立证明 effective enforcement。

## 子 Agent

child 可以收窄权限；任何 replacement 都先计算 `effective_permissions` 并与 parent envelope 比较。扩大权限必须单独批准，不能通过 child spec 隐式发生。

## 来源与证据等级

由 EXT-2026-07-12-013 的 backend protocol 与 filesystem permission 实现提炼，并记录其 execute 权限未实现这一实际边界；OpenAI Codex Agent Loop 的 prompt/tool 说明进一步证明 built-in shell sandbox 不自动覆盖 MCP 工具。
