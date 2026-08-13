# Harness Review Checklist

## Authority

- Is one human final decision owner defined?
- Can the Agent expand scope, cost, permission, or promotion?

## Context and evidence

- Are source precedence, freshness, provenance, and evidence role explicit?
- Can untrusted content alter instructions or policy?

## Tools and models

- Are tools allowlisted and side effects bounded?
- Are raw, canonical, and effective model outputs separated?
- Do malformed outputs fail without silent repair?

## State and artifacts

- Are duplicate, conflict, version, invalidation, partial, and quarantine states explicit?
- Are review, write, landing, verification, approval, and promotion distinct?

## Evaluation

- Are positive and negative controls present?
- Is the evaluator independent of the generator where risk requires it?
- Are technical and business success separated?

## Operations

- Are attempts, retries, errors, costs, secrets, side effects, and checksums auditable?
- Are actual costs observed or explicitly unknown?
- Can execution pause, recover, roll back, and hand over to a human?

## Production

- Has local manual or shadow evidence been collected?
- Are production writes, scheduler, notifications, and promotion separately gated?

## Reference patterns to inspect against

- `Harness as Runtime OS`
- `External Model Review Firewall`
- `Local Manual Run Pack`
- `Two-Sided Evaluation Harness`
- `Evidence Admission State Model`
- `Execution Audit Envelope`
- `Lifecycle Cost Gate`
- `Recovery and Human Takeover`
- `Protected Self-Modification Control Plane` when self-editing is claimed
- `Minimal Harness Baseline` for ablation against added complexity
- `Evaluation Trial Protocol` and `Environment Capability Contract`
- `Normalized Agent Trajectory` and `Baseline Then Gate`
- `Static Capability Risk Gate` before deployment or authority expansion

Use the source map to distinguish a reusable design pattern from project-local tested evidence.
