# Contributing

NativeHelix welcomes improvements to Skills, Capability contracts, patterns, checklists, examples, and documentation.

## Before proposing a change

1. State the user problem and the exact artifact being changed.
2. Identify one primary owner for the proposal.
3. Separate current evidence from recommendation.
4. Explain the applicable and non-applicable contexts.
5. Preserve failure modes and claim limits.

## Skill contributions

A Skill should have a stable trigger, bounded inputs and outputs, and a repeatable atomic practice. Put its instructions in `SKILL.md`; keep optional resources in `references/`, `assets/`, `scripts/`, or `agents/`. Do not include credentials, private paths, personal data, or project-specific business facts.

## Capability contributions

A Capability should explain a reusable principle, contract, pattern, checklist, or architecture boundary. It must state evidence scope and must not inherit maturity from a different project.

## Pull-request expectations

- Keep changes narrowly scoped.
- Make relative links resolve.
- Describe validation performed and limitations remaining.
- Do not claim production readiness from document completeness alone.
- Do not add external side effects or permissions without explicit human review.
