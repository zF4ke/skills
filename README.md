<h1 align="center">Personal skills</h1>
<p align="center">My agent skills, design preferences and reference library.</p>
<p align="center"><a href="#install">Install</a> / <a href="personal-ui/SKILL.md">Personal UI</a> / <a href="#references">References</a></p>

## Install

Install with the [skills.sh CLI](https://github.com/vercel-labs/skills). You need Node.js and Git. For a private repository, configure Git authentication first, for example with `gh auth login` and `gh auth setup-git`.

```powershell
npx skills add zF4ke/skills --skill personal-ui --global --agent codex claude-code opencode
```

Run this on each PC. `--global` makes the skill available across projects. Change the agent names to target the agents you use, or omit `--agent` to choose interactively. The installer includes the skill's references and assets. It uses a shared copy with links by default and falls back to copies when linking fails. Add `--copy` if you prefer independent copies.

## Personal UI

Design guidance for interfaces, onboarding, settings, installers and product READMEs. It carries the lessons from Ada and Cloak, plus selected examples and source PDFs from my design repertoire.

[Cloak](https://github.com/zF4ke/cloak) is the current example. Its compact dark layout, purple accent, connected setup steps and themed controls reflect the feedback that shaped this skill. Other products should use a composition that fits their own purpose.

<p align="center"><img src="personal-ui/references/examples/cloak/projects-rounded.svg" width="760" alt="Cloak's project manager with new, import and clone actions, and two managed projects" /></p>

### Use it

Ask the agent to use `$personal-ui`, for example:

> Use $personal-ui to redesign these settings. Keep the existing behavior and verify the result in the running app.

The description also lets an agent select it for relevant design tasks. Start a new session if your agent caches its skill list.

Keep `frontend-design` installed. Personal UI takes precedence when their aesthetic guidance conflicts; compatible implementation advice still applies. Skill instructions guide the agent, so this does not disable another skill or guarantee automatic selection in every agent.

### Update

Repeat the explicit install command to refresh every selected agent, including independent copies:

```powershell
npx skills add zF4ke/skills --skill personal-ui --global --agent codex claude-code opencode --copy
```

`npx skills update personal-ui --global` refreshes the shared installation. In the tested CLI version, it left an independent Claude Code copy unchanged. Use the command above when you installed with `--copy`.

To inspect the repository's available skills without installing:

```powershell
npx skills add zF4ke/skills --list
```

## References

The [skill entry point](personal-ui/SKILL.md) directs the agent to the relevant material for each task. The complete reference library travels with the installation.

| Reference | What it covers |
| --- | --- |
| [Preferences](personal-ui/references/preferences.md) | General taste and product-specific feedback from Ada and Cloak. |
| [Desktop patterns](personal-ui/references/desktop-patterns.md) | Layout, dropdowns, dialogs, grouping, installers and native window edges. |
| [Motion](personal-ui/references/motion.md) | Springs, state transitions, first-render behavior and reduced motion. |
| [Repertoire](personal-ui/references/repertoire.md) | Selected images, original PDFs and their source mapping. |
| [READMEs](personal-ui/references/readmes.md) | Presentation, installation paths, screenshots and linked guides. |

The library contains personal screenshots and collected design references. Those references are for study, not artwork to redistribute in an app. Cloak's example captures the real application using isolated test projects; it contains no personal project data.

## Maintain the skill

Edit this Git repository, update the relevant reference and commit the change. Keep enduring preferences separate from choices made for one product. Replace superseded guidance rather than adding contradictory rules. Push, then run the update command on each PC.

[Validation notes](personal-ui/references/validation.md) record the independent tests and their limits. [The research notes](docs/skill-guidance-research.md) explain the packaging, trigger and evaluation decisions. Cloak remains the visual example.

For a local checkout, `install.ps1` uses the same skills CLI and lets you choose agents interactively. It supports `-Agents codex,claude-code,opencode`, `-Copy` and `-Yes`. Use the GitHub command above when you want updates to come from this repository.
