# Installing the Skills

NativeHelix Skill packages follow the `SKILL.md` package structure documented in the official [OpenAI Build skills documentation](https://developers.openai.com/codex/skills/).

## Repository-local use

Copy the selected Skill directories into your repository's supported Skills directory. For example:

```bash
mkdir -p .agents/skills
cp -R /path/to/nativehelix/05_Skills/architect/design-ai-native-architecture .agents/skills/
cp -R /path/to/nativehelix/05_Skills/cross_functional/design-agent-workflow .agents/skills/
```

## Personal use

For Skills you want available across projects, copy the selected package directories to your user Skills location:

```bash
mkdir -p "$HOME/.agents/skills"
cp -R /path/to/nativehelix/05_Skills/architect/review-agent-harness "$HOME/.agents/skills/"
```

Consult the current official OpenAI documentation for the authoritative discovery locations supported by your Codex version.

## Validate an installation

1. Confirm the installed directory contains `SKILL.md`.
2. Confirm every resource named by `SKILL.md` exists under that Skill directory or at an explicitly documented repository path.
3. Start a fresh Codex task and ask for work matching the Skill's description.
4. Confirm Codex announces the Skill and follows its required resources and output boundary.

Install only Skills you understand. A Skill can instruct an agent to read files, run commands, or use tools within the permissions available to that agent.
