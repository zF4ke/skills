# Maintain the collection

Each published skill has its own root directory and `SKILL.md`. References, scripts and assets belong inside that directory when the skill needs them. The root README lists the published skills; it is not one skill's showcase.

Read [AGENTS.md](../AGENTS.md) and the affected skill before editing. Keep the behavior in one authoritative place. The description explains when to select a skill; conditional details belong in references linked from its instructions.

## Record useful feedback

Generalize the owner's feedback before saving it. Keep a preference that applies across products in the relevant skill reference. Keep project names, exact layouts and product-specific values in that project's own docs. Replace superseded guidance instead of adding a conflicting rule.

Personal UI keeps its current preferences in [preferences.md](../personal-ui/references/preferences.md). Other skills should retain their own subject and workflow.

## Verify a change

Check frontmatter, relative links and any changed scripts. List discovery from the repository:

```powershell
npx skills add . --list
```

For substantial behavior changes, try the skill on a realistic task in another product. Record what actually ran and what remains unverified. A valid file or a forced invocation does not establish useful automatic selection.

Render changed documentation at normal and narrow widths. Keep research and test records separate from current user instructions. Preserve reference provenance and the restrictions on collected artwork.

## Publish and refresh

Add new skills to the root catalog and link their user guides when needed. Commit and push the source, then follow [installation](installing.md) to refresh the complete skill directory on each PC. Compare installed files with the source when an agent appears to be using older guidance.
