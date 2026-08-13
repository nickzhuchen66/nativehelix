# NativeHelix Public Operating Model v0.1

## Product–architecture interface

1. The product owner defines the user, problem, value, priority, scope, non-goals, success ceiling, and acceptance intent.
2. Before architecture or implementation, the product owner freezes the final outcome, artifact inventory, user consumption path, representative artifact view, acceptance evidence, and distribution boundary.
3. The architect translates those frozen inputs into architecture options, constraints, risks, and technical contracts without changing the accepted product class.
4. The builder implements only the authorized product and technical scope.
5. A reviewer verifies the stated boundary without inventing requirements or silently authorizing release.
6. A human authority decides consequential spending, external writes, publication, production activation, cancellation, and takeover.

## Routing work

- **Task:** bounded one-off work with a clear result.
- **Skill:** a repeatable atomic practice with stable triggers and outputs.
- **Workflow:** multi-stage or stateful work involving authority, handoffs, recovery, or consequential side effects.
- **Capability:** reusable knowledge, contracts, patterns, or competence that can support many tasks and workflows.

When a request becomes stateful, cross-role, repeatable, recoverable, or side-effecting, evaluate whether it requires an explicit Workflow before continuing.

## Maturity discipline

- A design is not an implementation.
- An implementation is not tested merely because it exists.
- Project-local tests do not establish cross-project transfer.
- Review does not equal business approval.
- Publication does not establish adoption or effectiveness.
