---
name: review-agent-harness
description: Review an implemented or designed Agent harness for execution boundaries, context and source integrity, tool and model contracts, permissions, protected surfaces, state and artifact safety, evaluation quality, observability, cost, secrets, failure recovery, human authority, and production readiness. Use for Agent system audits, Harness Engineering reviews, production-readiness assessments, autonomy expansion decisions, or diagnosing why an Agent workflow is unreliable or unsafe.
---

# Review Agent Harness

Inspect evidence before rating maturity. Review does not authorize changes, production connection, external calls, or promotion.

This Skill provides an architecture/conformance review. If the current Architect designed the subject oracle or frozen technical contract, the result must not be labeled independent acceptance; route independent acceptance to a separate Reviewer.

## Workflow

1. Establish source scope, current runtime mode, human authority, and claimed maturity.
2. Trace one real execution path from input through context, tools, model, state, output, review, and side effects.
3. Audit source precedence, grounding, context freshness, and prompt-injection boundaries.
4. Audit tool allowlists, permissions, protected surfaces, redlines, external writes, and cost authorization.
5. Audit model contracts: identity, structured output, raw/canonical/effective separation, no-repair policy, route ceiling, retries, and circuit behavior.
6. Audit state and artifacts: idempotency, duplicates, conflicts, versioning, partial states, quarantine, and landing semantics.
7. Audit evaluation: positive, negative, adversarial, pollution, regression, independent evaluator, and business-effectiveness boundaries.
8. Audit observability, actual-or-unknown cost, secret-safe inspection, errors, attempts, side effects, and replay.
9. Audit recovery, rollback, pause, takeover, incident behavior, and stop conditions.
10. Rate each claim by evidence and assign readiness with blockers and required gate evidence.

## Readiness Levels

- `not_ready`
- `local_manual`
- `shadow`
- `limited_production`
- `production_with_caveats`
- `production_ready`

Do not award a higher level because a design is detailed or tests are numerous. Match the level to current operating evidence and remaining side-effect risk.

## Resources

- Read `references/harness-review-checklist.md` during the audit.
- Use `assets/harness-review-template.md` for the final report.
