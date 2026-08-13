# Typed Harness Program Contract

## 目的

让 LLM 工作在执行前就具备可解析的意图、能力、预算、输出和验证合同；缺字段是编译/解析失败，不是运行时提醒。

## 最小记录

- `program`：输入、全局预算、允许的 capability、最终 emit。
- `capability`：动作、对象范围、读/写/网络/状态效应与 runtime enforcement。
- `unit`：intent、grants、budget、retry、typed output。
- `check`：被验证字段、验证性质、deterministic/judge、失败处置。
- `emit`：允许离开 quarantine 的 sink、格式和接收方。

## 静态规则

- 每个 LLM unit 必须声明 intent、grants、budget、output 和至少一个 check。
- 未声明 capability 的 effectful operation 不可解析。
- 输入、HTTP、导入文件/状态默认 tainted；taint 随派生值传播。
- tainted 值不得进入写文件、写状态、外发或最终 emit。
- 计算 program/unit/retry 的最大调用与最大花费；无法上界则拒绝生产运行。

## 防止“有 Gate 即安全”

- Check 必须绑定 `source_field -> property -> sink`，不能由任意无关检查清除全部 taint。
- Judge 输出只是一项证据；关键安全性质需要 deterministic validator 或人工批准。
- 旧存储、外部数据库和跨系统导入不得因“read”自动可信，必须带 provenance/ingestion proof。
- Capability declaration 必须能链接到真实 sandbox/permission enforcement；metadata 不是强制执行。

## 输出

编译生成 human-readable guarantee report：已证明的不变量、仅声明未执行的约束、剩余 taint、最大成本、外部假设和无法证明项。

## 证据

由 HEAAL/AIL v0.6 的五类记录、capability、budget 和 taint quarantine 提炼；明确修补其 fake-purify 与 trusted-read 假设。AIL 本地 75 项测试通过，但此合同尚无私有项目运行证据。

