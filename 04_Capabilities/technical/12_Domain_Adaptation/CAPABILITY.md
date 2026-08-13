# Domain Adaptation

## 核心问题

如何把通用能力映射到具体领域，同时防止宿主字段、角色实例和业务结论污染通用 Core。

## 范围

- Core / Host Adapter
- Domain ontology、identity、permission、business state
- 项目能力差距评估
- Existing-system AI-Native transformation
- adoption roadmap、migration、build-vs-buy

## 已吸收模式

- Capability Core 只拥有语义、不变量和接口要求
- Host 拥有业务实体、工具、数据、验证器和责任人
- 项目实现不能反向锁死通用定义
- 项目适配先评估 context pressure、promptability、exploration convergence、state entanglement、implicit knowledge、verification cost
- Capsuleability 与 Harnessability 同时包含技术边界和团队文化/授权边界

## 当前缺口

Public Core 不包含私有项目 profile。当前仍缺跨项目公开验证和可执行 Host Adapter conformance test。
