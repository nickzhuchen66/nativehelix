---
name: design-ai-native-architecture
description: Design or reshape an AI-native system architecture with explicit human authority, Agent and workflow boundaries, context, tools, memory, evaluation, operational controls, and an adoption roadmap. Use for new AI projects, Agent product architecture, existing-system AI-native transformation, reference architecture work, architecture reviews that include redesign, or decisions about how Harness, Workflow, Loop, and domain adapters should fit together.
---

# Design AI-Native Architecture

Produce an evidence-calibrated architecture blueprint. Keep project facts, proposed design, and future evolution visibly separate.

## Workflow

1. Confirm the CPO/Project CPO has frozen mission, users, value, scope, non-goals, acceptance intent and decision owner. If these inputs are absent, return a product handoff request rather than inventing them.
2. Identify the product mode: copilot, assistant, agent, multi-agent workflow, or bounded autonomous system.
3. Run the Workflow Necessity Gate before detailed architecture when the work is multi-stage, stateful, cross-role, recoverable or side-effecting.
4. Separate AI-Native Core from domain-owned Host Adapter responsibilities.
5. Define the planes: authority, collaboration, workflow, context/tool/model, harness/policy, state/memory, evaluation/audit/recovery, and learning loop.
6. Define deterministic and probabilistic boundaries, contracts, states, artifacts, side effects, and source precedence.
7. Place human gates around irreversible, paid, external-write, promotion, and high-risk decisions.
8. Define evaluation before automation. Prefer local manual or shadow operation before production connection.
9. Describe failure, partial completion, quarantine, recovery, takeover, observability, cost, and secret handling.
10. Produce alternatives, ADR candidates, phased adoption and explicit evidence required to advance each gate.

## Required Output

- Context calibration and assumptions
- Goals and non-goals
- Current-state facts versus target design
- Component and responsibility map
- Core / Host Adapter boundary
- Contracts, state, artifacts, and human gates
- Evaluation and operational controls
- Risks, trade-offs, ADR candidates
- Stage-by-stage adoption roadmap

## Resources

- Read `references/design-gates.md` before finalizing the design.
- Read relevant domains under `04_Capabilities/technical` and explicitly required `cross_functional` assets; do not load all domains by default.
- Use `assets/architecture-blueprint-template.md` for substantial architecture deliverables.
