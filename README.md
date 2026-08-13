# NativeHelix Public Core

> AI-Native Skills and Capabilities Toolkit — public candidate v0.1.

NativeHelix packages a working set of AI-native product and architecture practices into reusable Skills, Capability contracts, patterns, checklists, templates, and adoption guidance.

This repository is for product leaders, architects, and builders who need to design agent systems with explicit user value, technical boundaries, evidence, permissions, failure recovery, and human authority.

## What you can use

- **4 Codex Skill packages** for capability ingestion, AI-native architecture design, agent workflow design, and agent-harness review.
- **15 Capability domains** covering product architecture, context, workflows, harnesses, evaluation, evidence, memory, loops, operational control, adaptation, multi-agent coordination, bounded improvement, and reference architecture.
- **Public governance guidance** that separates product, architecture, implementation, review, and final human authority.
- **A reference architecture** and a synthetic worked example.

## Start here

1. Read [Getting started](docs/GETTING_STARTED.md).
2. Browse the [Capability index](04_Capabilities/INDEX.md).
3. Choose a Skill from the [Skill catalog](05_Skills/SKILL_CATALOG.md).
4. Install only the Skills you need by following [Skill installation](docs/SKILL_INSTALLATION.md).
5. Review the [public dependencies](docs/PUBLIC_DEPENDENCIES.md).
6. Walk through the [weekly project update agent example](examples/weekly-project-update-agent/README.md).

## Repository map

```text
00_Governance/       Public operating model and role boundaries
04_Capabilities/     Reusable capability domains, contracts, patterns and checklists
05_Skills/           Installable Skill packages
06_Reference_Assets/ Public reference architecture
docs/                Getting-started, installation and adoption guidance
examples/            Synthetic examples with no private project dependency
```

## Included Skills

| Skill | Use it when you need to |
|---|---|
| `design-ai-native-architecture` | design or reshape an AI-native system architecture |
| `ingest-project-capabilities` | extract reusable capabilities from a repository or document set |
| `review-agent-harness` | review an agent harness and calibrate readiness |
| `design-agent-workflow` | design a bounded agent or human–AI workflow |

Each Skill is self-contained within its directory and may include `references/`, `assets/`, `agents/`, or `scripts/` resources.

## Language

The repository entry documentation and Skill instructions are in English. Some
Capability contracts and patterns retain Chinese or bilingual terminology in
v0.1. A fully English Capability edition is a possible later release, not a
claim of this candidate.

## What NativeHelix is not

Public Core v0.1 is not an SDK, runtime, hosted service, certification, security control, compliance method, or production-ready reference implementation. Detailed design and passing tests do not prove product value or production readiness. Apply the assets proportionately and validate them in your own environment.

## Public-core boundary

This distribution intentionally excludes private project profiles, source snapshots, project adapters, management control planes, handoff history, review history, and private evidence. See [Public Core boundary](docs/PUBLIC_CORE_BOUNDARY.md).

## License

Unless a file states otherwise, this public candidate is provided under [CC BY 4.0](LICENSE). Attribution: CZ / NativeHelix.

## Status

This directory is a local publication candidate for human review. It has not yet replaced the content in the public GitHub repository.

The bounded structural checks performed for this candidate are recorded in
[Candidate verification](docs/CANDIDATE_VERIFICATION.md). They are not a
security, privacy, legal, or production-readiness certification.
