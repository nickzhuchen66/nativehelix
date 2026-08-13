# Contributing

NativeHelix welcomes improvements to Skills, Capability contracts, patterns, checklists, examples, and documentation.

## How to contribute

1. Search existing issues and pull requests for related work.
2. For a meaningful change, open a focused issue or proposal before investing heavily.
3. Fork the repository and create a narrowly scoped branch.
4. Make the change, validate it, and preserve evidence and limitations.
5. Open a pull request using the repository template.

External contributors do not need direct write access. Maintainers review pull requests before changes enter `main`.

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

## Good first contributions

Good starting points include fixing a broken relative link, clarifying a limitation, improving an example, adding a missing validation step, or tightening an artifact's ownership and evidence boundary. Look for issues labeled `good first issue` or `help wanted`.

## Review and acceptance

Maintainers may request changes when a proposal broadens authority, lacks evidence, hides a failure mode, or overstates maturity. A merged contribution means it fits the current public toolkit boundary; it does not certify production readiness or universal applicability.

Please follow the [Community Code of Conduct](CODE_OF_CONDUCT.md). Report sensitive security or disclosure concerns through [GitHub private vulnerability reporting](https://github.com/nickzhuchen66/nativehelix/security/advisories/new), not a public issue.
