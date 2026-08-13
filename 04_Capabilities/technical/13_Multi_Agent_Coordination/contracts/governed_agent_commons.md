# Governed Agent Commons

## 适用对象

代码库、共享 memory、evaluation harness、artifact store、部署管线、任务队列与信号字段都是 Agent Commons：多个 actor 读取、写入并可能通过过度使用或污染使其退化。

## 最小治理合同

- 每个 producer 有可归属身份，每个 consumer 有声明用途。
- 资源、作用域和变更频率匹配本地规则；高频信号需要更快衰减，高后果信号需要更强证据。
- 受规则影响的团队能提出修改，但不能绕过受保护边界。
- 监控者对使用者负责；违规有分级处置与可恢复路径。
- 冲突有低成本显式通道，不允许通过静默覆盖“解决”。
- 子域拥有有限自治；跨域覆盖需要更高授权。
- 大型 commons 由嵌套作用域组成，每层有自己的 owner 和 merge strategy。

## 并发写入策略

| 资源类型 | 默认策略 |
|---|---|
| discovery / event / telemetry | append-only + stable identity |
| campaign / fleet session | single owner、lock-on-write |
| candidate artifact | immutable/versioned |
| derived index | rebuildable、不得覆盖 source record |
| protected policy | human-controlled promotion |

## 健康信号

观测 stale ratio、collision/overwrite、orphan rate、signal-to-outcome correlation、retirement rate、WIP accumulation 与 hidden conflict。共享状态变多而清理率不变，是 commons degradation，不是更多 memory。

## 来源与证据等级

治理原则来自 EXT-2026-07-12-011；并发写入策略由 EXT-2026-07-12-012 的 Fleet 实现补强。尚未形成跨两个项目的通用实现证据。

