# AI-Native Architecture Design Gates

## Context gate

- Distinguish repository facts, historical claims, user decisions, and inference.
- Identify the one human authority for final decisions.

## Product gate

- State user value and why an Agent is needed.
- Avoid multi-agent design when a deterministic workflow or single Agent is sufficient.

## Boundary gate

- Separate Core semantics from Host domain data and rules.
- Separate eligibility, matching, route, presentation, landing, and promotion.

## Harness gate

- Define tool access, protected surfaces, contracts, validators, costs, stop conditions, and takeover.

## Evaluation gate

- Include positive and negative controls.
- Keep technical contract success separate from business effectiveness.

## Production gate

- Start with local manual or shadow mode where uncertainty is material.
- Require explicit evidence for scheduler, external writes, automated delivery, and promotion.

## Cost gate

- Compare existing, self-hosted/open, and paid options.
- Provide 12-month TCO and 36-month view when lock-in matters.
- Unknown or unapproved cost means no integration.

## Reusable asset routing

Select only assets relevant to the project risk:

- Authority/collaboration: `Human Sovereign Gate`, `Functional Role Schema`, `Review / Approval Envelope`.
- Core/Host boundary: `Governed Config Compiler`, `Boundary Before Relevance`.
- External models: `External Model Review Firewall`.
- State/control: `Evidence Admission State Model`, `Execution Audit Envelope`, `Lifecycle Cost Gate`.
- Memory/learning: `Curated / Runtime Promotion`, `Human-Gated Learning Loop`.
- Recovery: `Context Recovery Manifest`, `Recovery and Human Takeover`.
- Evaluation/runtime: `Evaluation Trial Protocol`, `Execution Runtime Port`, `Environment Capability Contract`.
- Evidence operations: `Normalized Agent Trajectory`, `Baseline Then Gate`, `Static Capability Risk Gate`.

Resolve exact files through `04_Capabilities/CAPABILITY_SOURCE_MAP.yaml`; do not copy project-specific fields into the Core.
