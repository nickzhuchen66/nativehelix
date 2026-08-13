# Capability Domains

| # | Domain | Class | Primary owner | Consulted role | Current emphasis |
|---:|---|---|---|---|---|
| 01 | AI-Native System Architecture | technical | AI-Native Architect | AI-Native CPO | 整体分层、边界和迁移路线 |
| 02 | Context Engineering | technical | AI-Native Architect | AI-Native CPO | Context Pack、source precedence、freshness |
| 03 | Workflow Engineering | cross-functional | AI-Native Architect | AI-Native CPO | 状态、依赖、闸门、恢复与项目发现责任 |
| 04 | Harness Engineering | technical | AI-Native Architect | AI-Native CPO | 执行控制、合同、权限和人工接管 |
| 05 | Evaluation Engineering | technical | AI-Native Architect | AI-Native CPO | 双侧评价、负控和技术证据 |
| 06 | Human–AI Collaboration | cross-functional | AI-Native CPO | AI-Native Architect | 角色、授权、委派、Review 和责任 |
| 07 | Grounding & Evidence | technical | AI-Native Architect | AI-Native CPO | 来源、命题、证据和准入 |
| 08 | Memory & Knowledge | technical | AI-Native Architect | AI-Native CPO | Curated/Runtime、晋级和失效 |
| 09 | Loop Engineering | technical | AI-Native Architect | AI-Native CPO | 反馈、重试、学习、预算和停止条件 |
| 10 | Operational Control | technical | AI-Native Architect | AI-Native CPO | State、Audit、Cost、Secret、Recovery |
| 11 | Agent Product Architecture | product | AI-Native CPO | AI-Native Architect | 用户价值、Agent UX、自治和接管体验 |
| 12 | Domain Adaptation | technical | AI-Native Architect | AI-Native CPO | Core/Host Adapter 和项目迁移 |
| 13 | Multi-Agent Coordination | technical | AI-Native Architect | AI-Native CPO | 分工、冲突和协同状态 |
| 14 | Bounded Self-Improvement | technical | AI-Native Architect | AI-Native CPO | 受限改进、held-out 和 rollback |
| 15 | Reference Architecture & SDK | technical | AI-Native Architect | AI-Native CPO | 稳定接口、参考实现和 conformance |

目录分区：

- `product/`：AI-Native CPO 主责的产品能力；
- `technical/`：AI-Native Architect 主责的技术能力；
- `cross_functional/`：必须消费双方输入的能力，但每项仍声明单一 primary owner。

每个 capability 以 `CAPABILITY.md` 说明边界。Public Core 不携带 AI-Native 私有项目的成熟度、来源或证据登记表；采用者应在自己的项目中单独记录来源、成熟度和运行证据。技术成熟度与产品有效性应分别验证，引用某项能力不会自动证明它已经成熟。
