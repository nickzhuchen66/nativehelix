# NativeHelix

> An AI-Native Skills and Capabilities Toolkit for designing governed agents, workflows, harnesses, evaluation, and human authority.

[![Release](https://img.shields.io/github/v/release/nickzhuchen66/nativehelix)](https://github.com/nickzhuchen66/nativehelix/releases)
[![License: CC BY 4.0](https://img.shields.io/badge/License-CC_BY_4.0-lightgrey.svg)](LICENSE)

NativeHelix turns practical AI-native product and architecture methods into reusable Agent Skills, capability contracts, patterns, checklists, templates, and examples.

Use it when you need an agent system to do more than produce a plausible answer: it should pursue an explicit user outcome, operate inside technical and permission boundaries, preserve evidence, recover from failure, and keep final authority with humans.

## Start in five minutes

Clone the repository:

```bash
git clone https://github.com/nickzhuchen66/nativehelix.git
cd nativehelix
```

Choose one Skill and copy its complete package into your repository. For example:

```bash
mkdir -p .agents/skills
cp -R 05_Skills/cross_functional/design-agent-workflow .agents/skills/
```

Start a fresh agent task and ask for work that matches the Skill, for example:

```text
Design a bounded workflow for this product outcome, including owners,
permissions, evidence, failure recovery, human gates, and stop conditions.
```

Read the selected `SKILL.md` completely before use. See [Skill installation](docs/SKILL_INSTALLATION.md) for repository-local and personal installation options.

## Choose your entry point

| What you want to do | Start here |
|---|---|
| Design or reshape an AI-native product/system architecture | [`design-ai-native-architecture`](05_Skills/architect/design-ai-native-architecture/SKILL.md) |
| Turn a product outcome into a bounded multi-stage workflow | [`design-agent-workflow`](05_Skills/cross_functional/design-agent-workflow/SKILL.md) |
| Review an agent harness and calibrate technical readiness | [`review-agent-harness`](05_Skills/architect/review-agent-harness/SKILL.md) |
| Extract reusable capabilities from a repository or document set | [`ingest-project-capabilities`](05_Skills/architect/ingest-project-capabilities/SKILL.md) |
| Reuse an individual contract, pattern, checklist, or template | [Capability index](04_Capabilities/INDEX.md) |
| Learn through a complete fictional scenario | [Weekly project update agent](examples/weekly-project-update-agent/README.md) |

## What is included

### Four installable Agent Skills

Each Skill is a self-contained package with a `SKILL.md` entry point and any required `references/`, `assets/`, `agents/`, or `scripts/` resources.

| Skill | Primary purpose |
|---|---|
| [`design-ai-native-architecture`](05_Skills/architect/design-ai-native-architecture/SKILL.md) | Define system layers, boundaries, interfaces, permissions, evidence, recovery, and evolution |
| [`design-agent-workflow`](05_Skills/cross_functional/design-agent-workflow/SKILL.md) | Convert a frozen product outcome into tasks, states, gates, ownership, and stop conditions |
| [`review-agent-harness`](05_Skills/architect/review-agent-harness/SKILL.md) | Review execution control, evaluation, cost, safety boundaries, and production-readiness evidence |
| [`ingest-project-capabilities`](05_Skills/architect/ingest-project-capabilities/SKILL.md) | Extract reusable practices while preserving source, maturity, ownership, and evidence boundaries |

Browse package status and ownership in the [Skill catalog](05_Skills/SKILL_CATALOG.md).

### Fifteen capability domains

The capability library covers:

- product architecture and human–AI collaboration;
- AI-native system architecture and context engineering;
- workflow, harness, loop, and operational control engineering;
- evaluation, grounding, evidence, memory, and knowledge;
- domain adaptation and multi-agent coordination;
- bounded self-improvement and reference-architecture interfaces.

Every domain has a `CAPABILITY.md` boundary and links to reusable contracts, patterns, checklists, or templates. Browse all domains in the [Capability index](04_Capabilities/INDEX.md).

### Governance, architecture, and examples

- [Public operating model](00_Governance/PUBLIC_OPERATING_MODEL.md) — separates product, architecture, implementation, review, and final human authority.
- [Role and authority model](00_Governance/ROLE_AND_AUTHORITY_MODEL.md) — clarifies who owns decisions and who must not self-approve.
- [AI-native reference architecture](06_Reference_Assets/technical_architectures/AI_NATIVE_REFERENCE_ARCHITECTURE_v0.1.md) — a reusable system-level architecture reference.
- [Weekly project update agent](examples/weekly-project-update-agent/README.md) — a synthetic product brief, architecture boundary, and workflow example.

## How NativeHelix fits into a project

NativeHelix provides reusable design material; your project remains the authority for its own users, outcomes, architecture, permissions, tools, credentials, data, costs, and release decisions.

A practical adoption sequence is:

1. define the user outcome and final artifact;
2. select one Skill or a small set of Capability assets;
3. adapt them to the project's actual constraints and authority model;
4. separate observed evidence from assumptions and recommendations;
5. validate permissions, state, recovery, and product value in the real environment;
6. retain human approval for consequential or external actions.

See [Getting started](docs/GETTING_STARTED.md) and the [Capability guide](docs/CAPABILITY_GUIDE.md).

## Repository map

```text
00_Governance/       Public operating model and role boundaries
04_Capabilities/     15 reusable capability domains
05_Skills/           4 installable Agent Skill packages
06_Reference_Assets/ Public reference architecture
docs/                Getting-started, installation, dependency, and boundary guides
examples/            Synthetic examples with no private project dependency
```

## Requirements and dependencies

NativeHelix Public Core is primarily documentation and Agent Skill packages. Browsing and adapting it requires no application runtime, package manager, database, hosted service, paid API, or environment variable.

- Use Git or a browser ZIP download to obtain the repository.
- Use a host that supports the `SKILL.md` package shape to discover Skills.
- Ruby is optional and is used only by the included capability-manifest validation example.
- Copying a Skill does not grant it filesystem, network, credential, tool, or external-write permission.

See [Public dependencies](docs/PUBLIC_DEPENDENCIES.md) for the complete boundary.

## Maturity and limitations

Public Core v0.1.0 is a documentation and toolkit release. It is not an SDK, runtime, hosted service, certification, security control, compliance method, or production-ready reference implementation.

The included Skill packages have passed bounded package and reference checks but have not all been independently forward-tested across multiple hosts. Some Capability documents retain Chinese or bilingual terminology. Detailed design and passing checks do not prove product value, security, legal sufficiency, or production readiness.

See [Verification notes](docs/CANDIDATE_VERIFICATION.md) for the checks performed and their limits.

## Public boundary

This distribution excludes private project profiles, source snapshots, project adapters, management control planes, handoff and review history, credentials, and private evidence. See the [Public Core boundary](docs/PUBLIC_CORE_BOUNDARY.md).

## Contributing and security

- Read [Contributing](CONTRIBUTING.md) before proposing a Skill, Capability, example, or documentation change.
- Follow [Security](SECURITY.md) when reporting a suspected secret, private-data exposure, or unsafe instruction.
- Review changes in a branch or pull request before updating the public default branch.

## License

Unless a file states otherwise, NativeHelix Public Core is licensed under [CC BY 4.0](LICENSE). Attribution: CZ / NativeHelix.

## Release status

Current public release: **v0.1.0 — Public Core**. See the [GitHub Releases page](https://github.com/nickzhuchen66/nativehelix/releases) and [changelog](CHANGELOG.md).
