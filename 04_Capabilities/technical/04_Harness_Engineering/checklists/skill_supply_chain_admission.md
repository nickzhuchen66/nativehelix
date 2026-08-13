# Skill Supply-Chain Admission Gate

用于外部 Skill 被安装、更新、投影到多个 Agent Host 或晋级为私有能力前。

## 1. Source lock

- [ ] 记录 canonical URL、immutable commit/tag、skill subpath、内容哈希和获取时间。
- [ ] 许可证允许当前使用/改写/再分发；缺失或冲突即 quarantine。
- [ ] Fork/mirror、维护者、发布包和仓库身份一致；不以 install count 代替可信度。
- [ ] 更新先生成 diff，不直接跟随 mutable branch 覆盖已批准版本。

## 2. Static review

- [ ] 完整读取 `SKILL.md`、scripts、assets、references 和 manifest。
- [ ] 扫描 shell/subprocess、网络、文件写删、secret、publish/deploy、动态下载与自修改。
- [ ] 验证路径、压缩包、symlink/hardlink、文件大小和可执行位边界。
- [ ] 遥测、外部审计请求、catalog 查询和模型调用默认关闭或明确披露。

## 3. Authority contract

- [ ] 声明 read/write/network/credential/external-side-effect 权限与作用域。
- [ ] 区分 Skill 指令与真实 runtime enforcement；Host 全权限不得被文字 allowlist 掩盖。
- [ ] 高风险动作有独立 approval，不允许 `--yes`/非交互模式绕过。
- [ ] 临时 `use` 与永久 install 采用同一准入标准；临时执行并不降低权限风险。

## 4. Projection and validation

- [ ] 私有 canonical skill 是唯一真相；各 Host 文件是可再生 projection。
- [ ] Symlink、copy 和 frontmatter 转换都有语义 conformance test。
- [ ] 安装摘要显示目标、覆盖、文件数、权限和风险；用户明确确认。
- [ ] 运行最小正例、拒绝例和卸载/回滚测试；保留证据。

## 5. Lifecycle

- [ ] lock schema 可迁移且失败不静默清空来源历史。
- [ ] 定义 owner、复验触发、expiry、revocation 和受影响项目清单。
- [ ] 上游变更、许可证变化、安全告警或 Host 语义变化触发重新准入。

## 来源与证据

由 `vercel-labs/skills` 的 canonical storage、host projection、路径保护、lock/update 和 advisory audit 机制提炼；补强 immutable revision、签名/审批、默认关闭遥测和不可绕过 Gate。未安装外部 CLI。

