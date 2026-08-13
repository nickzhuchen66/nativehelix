# Public Dependencies

NativeHelix Public Core is primarily a documentation and Agent Skill package.
It does not require an application runtime, package manager, database, hosted
service, or paid API to browse and adapt the included material.

## Required for Skill discovery

- A host that supports the open Agent Skill package shape (`SKILL.md` plus
  optional `references/`, `assets/`, `scripts/`, and `agents/`).
- For Codex, use a currently supported local Skill directory such as
  `$REPO_ROOT/.agents/skills` or `$HOME/.agents/skills`. See the official
  [OpenAI Build skills documentation](https://developers.openai.com/codex/skills/)
  because supported discovery and distribution mechanisms may evolve.

Copying a Skill does not grant it new filesystem, network, tool, credential,
or external-write permissions. The host's own permissions remain authoritative.

## Optional local tooling

| Component | Dependency | Purpose |
|---|---|---|
| Repository download | Git, or a browser ZIP download | Obtain the Public Core files |
| `ingest-project-capabilities` manifest check | Ruby with its standard `yaml` library | Validate the generated capability manifest shape |

No Bundler gems, npm packages, Python packages, containers, MCP servers, or
environment variables are required by the candidate itself.

## Project-supplied dependencies

The Skills operate on the context and tools available in the adopting project.
If a task requires a browser, test runner, deployment platform, model provider,
or external data source, that dependency belongs to the adopting project and
must be authorized and documented there. NativeHelix does not silently install
or authorize it.

## Licensing dependency

The distribution is licensed under CC BY 4.0 unless a file states otherwise.
Adopters are responsible for retaining attribution and for confirming that any
content they combine with NativeHelix is compatible with their intended use.
