# Normalized Agent Trajectory Contract

## 目的

把不同 Agent 的日志转换为可比较、可追溯的运行证据，同时保留 parser/version 和缺失字段，避免错误标准化制造虚假精度。

## 核心字段

- schema/parser version、trajectory_id、run/context/session identities
- agent/model/provider/version
- ordered steps：source/role、timestamp、message/reasoning/redaction
- tool call：id、name、arguments、timeout/retry/tool version
- observation：source_call_id、content/error/exit、subagent trajectory ref
- metrics：input/output/cache tokens、estimated/actual cost、latency
- continuation/subagent refs、final metrics、notes/extra

## 归一化纪律

- Partial extraction 优于错误推断；未知字段保持 unknown/null。
- Parser detection 保守，并用 synthetic/malformed fixtures 验证。
- Estimated cost 与 actual cost 分字段，不用零替代不可观察。
- Tool authority 分类是 heuristic evidence，不授予或撤销权限。
- 导出报告视为敏感工件，默认保留本地并执行 redaction/share review。

## 标识语义

`session_id` 可用于短期人类定位；`context/run_id` 连接一次逻辑运行；`trajectory_id` 唯一标识具体轨迹文档。Subagent/continuation 引用必须由 ID 或路径解析，不能只靠显示名称。

## 来源与证据

由 Harbor ATIF 和 AgentTrace normalized Event/parser discipline 综合提炼；未冻结为私有 schema。

