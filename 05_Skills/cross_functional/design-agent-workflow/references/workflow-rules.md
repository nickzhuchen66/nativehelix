# Workflow Design Rules

1. Decision precedes instruction when the decision changes scope or direction.
2. Dependent steps use real prior results; do not parallelize by assumption.
3. Task packets are self-contained and carry verification.
4. Facts and deterministic fields are produced or checked by code where possible.
5. Agent output is untrusted until contract validation and independent review.
6. Retries are bounded and classified by failure type.
7. Technical failure never becomes a business result.
8. External writes, purchases, notifications, and promotion require explicit authority.
9. Partial completion is a first-class state.
10. Every loop has budget, stop, plateau, error, and human-stop conditions.

Prefer:

```text
scope -> execute -> validate -> review -> accept|rework|recover -> persist
```

Keep these distinct:

```text
contract valid != reviewed != written != verified != approved != promoted
```

## Default contract kit

For approval-heavy or long-running workflows, start from:

- `Decision Before Delegation`
- `Delegation / Task Packet`
- `Review / Approval Envelope`
- `Evidence Admission State Model`
- `Execution Audit Envelope`
- `Lifecycle Cost Gate`
- `Recovery and Human Takeover`
- `Context Recovery Manifest`
- `Spec Artifact Chain`
- `Durable Workflow Run`

These are semantic contracts. Bind project roles, fields, tools, routes and validators through the Host Adapter.
