<h1 align="center">Agent skills</h1>
<p align="center">Reusable skills I use across projects.</p>

## Install

You need Node.js and Git. Choose the skills and agents you use:

```powershell
npx skills add zF4ke/skills --global
```

To install one skill directly, add its name:

```powershell
npx skills add zF4ke/skills --skill clear-docs --global
```

The [installation guide](docs/installing.md) covers agent selection, updates, local checkouts and private repository access.

## Available skills

| Skill | Use it for |
| --- | --- |
| [clear-docs](docs/clear-docs.md) | Write and reorganize READMEs, user guides, manuals and reference documentation. |
| [personal-ui](docs/personal-ui.md) | Design and review interfaces using the owner's preferences and the current product's design system. |

Each directory contains a `SKILL.md` entry point and any references, scripts or assets that skill needs. Install only the skills relevant to your work.

## Use a skill

Ask for it by name:

> Use $clear-docs to rewrite this README. Check the setup commands against the code.

> Use $personal-ui to improve these settings. Preserve the behavior and check the running app.

An agent may also select a skill from its description. Start a new session if it caches the available skills.

## Documentation and maintenance

- [Documentation index](docs/README.md) links the skill guides and existing research.
- [Install and update](docs/installing.md) explains the shared installation workflow.
- [Maintain the collection](docs/maintaining.md) covers adding skills, recording feedback and checking installed copies.

Skill-specific examples and visual references live with their own guides.
