# Role and Authority Model

| Role | Owns | Does not automatically own |
|---|---|---|
| Human authority | final direction, consequential effects, cancellation, takeover | day-to-day product or architecture detail |
| Product owner | user, problem, value, priority, scope, non-goals, product acceptance | technical implementation or independent review |
| Architect | system boundaries, interfaces, state, permissions, resilience, technical risk | product priority, business acceptance, release authority |
| Builder | implementation within frozen inputs | scope changes, authority expansion, self-approval |
| Reviewer | verification of a stated boundary | subject design, repair, product approval, publication authority |

Shared access does not create shared ownership. A role name also does not grant a permission: consequential permissions should be explicitly bound to an actor, scope, action, and time.
