# Install and update skills

Install Node.js and Git, then run:

```powershell
npx skills add zF4ke/skills --global
```

Choose the skills and agents you use. `--global` makes them available across projects. Omit it for a project installation. Each skill includes its own references and assets.

## Select skills and agents

```powershell
npx skills add zF4ke/skills --skill clear-docs --global --agent codex claude-code opencode
```

Replace `clear-docs` with another name from the [catalog](../README.md#available-skills). To inspect the repository without installing:

```powershell
npx skills add zF4ke/skills --list
```

## Update another PC or an existing installation

Repeat the same install command on each PC. Preserve your chosen skill names and agents. If you chose independent copies, include `--copy` again:

```powershell
npx skills add zF4ke/skills --skill clear-docs --global --agent codex --copy
```

An agent that caches its skill catalog may need a new session. Installing instructions does not add the external accounts or tools a skill might need.

## Use a local checkout

From this repository, replace the remote source with `.`:

```powershell
npx skills add . --skill clear-docs --global
```

The existing `install.ps1` is a Personal UI helper. It installs only `personal-ui` and supports `-Agents`, `-Copy` and `-Yes`. Use the CLI above to choose any skill in the collection.

## Private repository access

Use your configured Git credentials. For GitHub CLI authentication:

```powershell
gh auth login
gh auth setup-git
```

The [Skills CLI documentation](https://github.com/vercel-labs/skills#install-a-skill) describes supported agents, installation methods and authentication.
