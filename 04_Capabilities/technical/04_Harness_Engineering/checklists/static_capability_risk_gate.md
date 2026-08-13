# Static Capability Risk Gate

用于 Agent/Harness 仓库进入运行、部署或权限扩大前的静态能力面审查。

## 扫描面

- [ ] Shell/subprocess/dynamic execution
- [ ] 文件写入、删除和越界路径
- [ ] 网络、外部 MCP/工具和 package install
- [ ] Secret/credential 进入代码、日志或模型上下文
- [ ] Git write、release、publish、deploy
- [ ] Manifest 声明能力与代码注册能力的差异
- [ ] Approval/permission 是否在真实对象和调用点生效
- [ ] 多工具/session 路径是否组合出 private-data + untrusted-content + external-communication/code-execution

## Rule Contract

- [ ] rule_id、风险能力、适用语言/框架和明确 AST/manifest shape
- [ ] invariant 与安全设计原则
- [ ] bypass/FN fixture 和 safe/FP fixture
- [ ] remediation、severity、已知 false positive/negative
- [ ] 不打印 secret 原文；不跟随 symlink；限制文件大小/解析复杂度

## 决策语义

- Finding = review item，不等于 incident、exploit 或自动 block。
- No finding = 当前有界规则未发现，不等于安全证明。
- Baseline 只支持渐进采用；已知高风险仍需 owner、理由和退出条件。
- Static gate 不替代 runtime permission、sandbox、SAST、secret history scan 或 human approval。
- Tool annotation/manifest 是声明证据；必须与 provider trust、observed behavior 和 [Composed Capability & Taint Gate](../../10_Operational_Control_Engineering/contracts/composed_capability_taint_gate.md) 联合判断。

## 来源与证据

由 Lurkr 的 capability-risk framing、bounded analysis、baseline 和 labeled validation 提炼；MCP Tool Annotations 补强 session-level capability composition 与 hint-not-contract 语义。规则覆盖面不直接复制。
