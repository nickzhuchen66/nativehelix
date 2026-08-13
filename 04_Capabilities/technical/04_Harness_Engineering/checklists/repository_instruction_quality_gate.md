# Repository Instruction Quality Gate

## Scope 与来源

- [ ] canonical instruction source 唯一，nested scope 清晰
- [ ] 每条局部 override 可解释，冲突不靠文件顺序碰运气
- [ ] linked/include 文件在 workspace 内且有稳定来源
- [ ] Host projection 可重建并带 canonical hash

## 可执行性

- [ ] build/test/lint 命令包含正确 working directory 和适用条件
- [ ] destructive、deploy、publish、network、secret 与付费命令标注 authority
- [ ] 缺依赖、超时、平台差异和失败恢复有明确语义
- [ ] repository instruction 不能自行授权超出用户任务的动作

## 内容质量

- [ ] 描述当前 architecture、entry point、验证和禁止事项
- [ ] 规则短而具体，避免重复 README 或历史叙事
- [ ] 不含 secret、个人路径、短期 token 和未验证 claim
- [ ] owner、last reviewed、stale trigger 可追踪

## Host Conformance

- [ ] root 与 nested fixture 实际验证
- [ ] precedence、symlink/worktree、include 和 truncation 行为已记录
- [ ] unsupported semantics 显式提示，不 silent downgrade
- [ ] 至少一次真实任务确认 effective instructions 与预期一致

## 来源与证据等级

由 EXT-2026-07-12-016/017 的轻量约定及其缺少 schema/conformance 的边界提炼；为私有质量检查，不代表通用标准认证。

