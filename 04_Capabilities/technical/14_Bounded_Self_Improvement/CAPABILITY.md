# Bounded Self-Improvement

## 核心问题

如何允许系统提出和评价 Harness 改进，同时阻止其修改自己的裁判、权限和安全边界。

## 范围

- baseline、weakness mining、bounded proposal
- editable / protected surfaces
- held-in / rotating held-out
- passing behavior preservation、metric vector、complexity cost
- keep / discard / reject / crash / rollback
- independent evaluator、human promotion

## 当前状态

Public Core 仅包含设计合同与检查清单；automatic proposal/evaluation/promotion loop 未运行。

## 已吸收候选模式

- [Bounded Harness Improvement Loop](patterns/bounded_harness_improvement_loop.md)：weakness mining、受限候选、独立 held-in/out 评价、reject 保留与人工晋级
- [Self-Improvement Safety Audit](checklists/self_improvement_safety_audit.md)：机械 editable surface、独立 evaluator、candidate isolation、human promotion 与 activation safety

## 升格条件

第二个结构不同项目、accepted+rejected candidate、机械保护、held-out、独立 evaluator、rollback 和人类 promotion 全部具证据。
