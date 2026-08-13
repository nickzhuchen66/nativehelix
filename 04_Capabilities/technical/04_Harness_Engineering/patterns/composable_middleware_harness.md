# Composable Middleware Harness

## 目的

把 Agent 的规划、文件系统、skills、子 Agent、摘要、memory、human interrupt 与模型适配拆成可组合层，而不是堆进单个 system prompt。

## 推荐层次

```text
caller intent / project policy
  -> planning and task state
  -> skill/context loading
  -> filesystem + backend tools
  -> subagent boundary
  -> summarization / overflow control
  -> model profile / prompt cache
  -> memory update
  -> human interrupt and final tool exclusion
```

顺序是合同：会改变 system prompt 的 memory 放在缓存边界之后；最终 tool exclusion 必须在 custom middleware 之后，避免后插层重新暴露被禁工具。

## 组合约束

- 必要 scaffolding 不得被 profile 或 custom middleware 排除。
- custom middleware 只能在登记 slot 插入，不可冒充或替换受保护核心层。
- 主 Agent 与子 Agent 使用同构核心层，但 child 只获得显式 context projection 和 effective permission envelope。
- state-private 字段、todo 与完整 transcript 默认不跨子 Agent 边界。
- compiled/custom child 必须声明哪些 core guarantees 不会自动继承。

## 来源与证据等级

由 EXT-2026-07-12-013 的 `create_deep_agent` 代码结构提炼；上游实现与测试丰富，但尚未在私有项目验证。

