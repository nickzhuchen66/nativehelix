# Minimal Harness Baseline

## 目的

用最小可解释 Harness 作为对照组，区分模型能力、环境能力与复杂 Harness 机制各自贡献，避免只与“无系统”比较。

## 最小构成

```text
Task -> Model -> one universal action surface -> Environment -> Observation -> Model
```

- 线性历史；每轮追加模型输出和环境观察。
- 单一 Action（例如 Bash）及结构化 output/return code/error。
- 独立命令进程，明确 command timeout 和子进程清理。
- step、cost、wall-time、format-error 限制与正式 terminal state。
- 每轮保存 trajectory，包含失败和 partial state。

## Ablation 用法

复杂 Harness 必须与相同模型、任务、环境、预算的 minimal baseline 比较，并分别报告成功率、成本、延迟、方差、安全违规和可调试性。新增层只有在提供可量化净收益或强制风险控制时才保留。

## 边界

- Universal shell 是广泛权限，不是安全默认；必须放在隔离环境。
- 独立命令进程不等于文件系统、容器或任务无状态。
- 线性历史适合短任务，长任务仍需 Context/Memory lifecycle。
- Minimal baseline 不包含独立 evaluator、业务批准或 production control。

## 来源与证据

由 mini-SWE-agent v2 的 loop、environment 和 test surface 提炼；性能数据未在本地复验。

