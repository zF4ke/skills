<h1 align="center">Personal skills</h1>
<p align="center">Design preferences and documentation guidance for coding agents.</p>

## Install a skill

You need Node.js and Git. Run this on each PC, then choose the agents you use:

```powershell
npx skills add zF4ke/skills --skill personal-ui --global
```

Replace `personal-ui` with `clear-docs` to install the documentation skill. `--global` makes the chosen skill available across projects. Each installation includes its references and assets.

For a private repository, set up GitHub authentication first:

```powershell
gh auth login
gh auth setup-git
```

## Choose the right skill

| Skill | Use it for |
| --- | --- |
| [Personal UI](personal-ui/SKILL.md) | App interfaces, settings, onboarding, installers, motion and product presentation. |
| [Clear docs](clear-docs/SKILL.md) | READMEs, user guides and documentation that is accurate and easy to scan. |

Ask for the skill by name:

> Use $personal-ui to improve these settings. Preserve the behavior and check the running app.

> Use $clear-docs to rewrite this README. Check the installation steps against the code.

An agent may also select a skill from its description. Start a new session if it caches the available skills.

### Personal UI references

Keep `frontend-design` installed. Personal UI takes precedence when their aesthetic guidance conflicts, while compatible implementation advice still applies.

[Preferences](personal-ui/references/preferences.md) records the owner's feedback. [Desktop patterns](personal-ui/references/desktop-patterns.md), [motion](personal-ui/references/motion.md) and [README guidance](personal-ui/references/readmes.md) cover specific decisions. The [repertoire](personal-ui/references/repertoire.md) contains selected visual references.

[Cloak](https://github.com/zF4ke/cloak) is the current app example. Its compact layout reflects the feedback behind Personal UI. Other products should use a design that fits their purpose.

<p align="center"><img src="personal-ui/references/examples/cloak/projects-rounded.svg" width="760" alt="Cloak's project manager with new, import and clone actions" /></p>

Reference screenshots and collected artwork are for study. Do not redistribute them as app artwork. The Cloak example uses isolated test projects, without personal project data.

## Choose agents and update

To target specific agents, add `--agent` with the names you use:

```powershell
npx skills add zF4ke/skills --skill personal-ui --global --agent codex claude-code opencode
```

Repeat the install command to update the selected agents. Add `--copy` when you want independent copies, and include it again when refreshing those copies:

```powershell
npx skills add zF4ke/skills --skill personal-ui --global --agent codex claude-code opencode --copy
```

List the available skills without installing them:

```powershell
npx skills add zF4ke/skills --list
```

## Use a local checkout

From this repository, run:

```powershell
.\install.ps1
```

The script installs **Personal UI only** and lets you choose agents interactively. It supports `-Agents`, `-Copy` and `-Yes`:

```powershell
.\install.ps1 -Agents codex -Copy -Yes
```

To install Clear docs from the checkout, use the CLI directly:

```powershell
npx skills add . --skill clear-docs --global
```

The GitHub install command uses this repository as its source. The local script uses your checkout.

## Maintain these skills

Edit the skill or the relevant reference, then commit and push. Keep general preferences separate from decisions about one product. Replace superseded guidance instead of accumulating conflicting rules. Update each PC after publishing changes.

[Validation notes](personal-ui/references/validation.md) record the Personal UI checks and their limits. [Research notes](docs/skill-guidance-research.md) explain the packaging and evaluation decisions.
