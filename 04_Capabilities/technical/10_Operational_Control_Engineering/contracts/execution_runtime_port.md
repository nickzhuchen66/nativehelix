# Execution Runtime Port

## 目的

把 Agent 决策逻辑与本地/容器/云执行基础设施分开，使 provider 可替换，同时不把接口一致误认为安全能力一致。

## Runtime Interface

- `is_alive`
- `execute(command, cwd, env, timeout, shell, check)`
- `create_session / run_in_session / interrupt / close_session`
- `read_file / write_file / upload`
- `close`

返回结构化 stdout/stderr/exit/failure/timeout，并为每个请求生成 durable request/attempt ID。

## Deployment Interface

- `start -> runtime`
- `inspect/is_alive`
- `stop(delete|retain)`
- provider hooks、resource identity 和 cleanup result

## Capability Contract

Provider 必须声明 isolation、network modes、dynamic policy、mounts、OS、resource enforcement、interactive sessions 和 cleanup guarantee。调用方请求不支持的能力时 fail closed。

## 安全要求

- Remote transport 显式 TLS/auth，不自动降级到明文。
- File/command scope、permission、secret 和 network policy 位于 Runtime Port 外层控制面。
- `close`/cleanup 不能只依赖 destructor；需要可重试的外部 resource reconciler。
- Stateful Session 与 one-off Command 分开，Resume 明确环境是否保留。

## 来源与证据

由 SWE-ReX 的 Deployment/LocalRuntime/RemoteRuntime/Session 接口和 Harbor environment capability negotiation 综合提炼；SWE-ReX 锁定 HEAD 的上游 test check 当前失败。

