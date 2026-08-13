---
name: design-agent-workflow
description: Design an executable Agent or human–AI workflow with goals, task decomposition, dependencies, state transitions, decision gates, context and artifact contracts, tool boundaries, evaluation, failure recovery, and stopping conditions. Use when creating or revising single-Agent, multi-Agent, event-driven, long-running, approval-heavy, or human-in-the-loop workflows.
---

# Design Agent Workflow

Design the smallest workflow that satisfies the goal. Do not introduce agents where deterministic code or a simpler state machine is sufficient.

Primary owner: AI-Native Architect. Product goals, priority, scope and acceptance intent must come from AI-Native CPO or Project CPO; this Skill does not invent them or approve Workflow activation.

## Workflow

1. Confirm the product owner has frozen Goal, desired outcome, constraints, exclusions and acceptance intent.
2. Run the Workflow Necessity Gate and bind the human decision. If required/recommended remains pending, stop before constructing or activating the Workflow.
3. Identify decisions that must precede delegation.
4. Split deterministic transformations, model judgments, human judgments, and external side effects.
5. Create tasks with inputs, outputs, context, dependencies, assignees, autonomy, redlines, and acceptance checks.
6. Choose serial, parallel, branch, event, or loop structures based on real dependencies.
7. Define task and artifact states, including partial, failed, quarantined, deferred, superseded and cancelled.
8. Define tool scope, cost, retries, idempotency, timeout, checkpoint, recovery and human takeover.
9. Define independent review, observability and audit events. Do not let the generator self-certify critical work.
10. Add stop conditions and explain why the workflow terminates.

## Required Output

- Goal and responsibility
- Role and autonomy map
- Workflow graph or ordered sequence
- Task Packet table
- State machine
- Contracts and artifacts
- Human gates and side-effect policy
- Evaluation, recovery, audit, and stop conditions

## Resources

- Read `references/workflow-rules.md` for design constraints.
- Use `assets/workflow-design-template.md` for substantial workflow specifications.
