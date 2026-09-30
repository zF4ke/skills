# Personal UI skill research

30 September 2026. Research only. No skill or README changes made by this research task.

## Description and cooperation

The Agent Skills specification loads names and descriptions before skill bodies. Descriptions must explain capability and use conditions, include relevant keywords and stay within 1024 characters. The specification defines no priority field. A precedence sentence is therefore an instruction to the agent after selection, not a guaranteed loader ordering. [Agent Skills specification](https://agentskills.io/specification)

Use a trigger-focused description, for example:

> Use when building or refining this owner's interfaces, components, settings, onboarding, installers, UI motion, visual reviews or product README presentation. Apply the owner's design preferences and bundled references to the current product.

This names the distinct branches without spending the always-loaded description on implementation details. The official guide recommends imperative phrasing, user intent, explicit application contexts and concise descriptions. [Optimizing skill descriptions](https://agentskills.io/skill-creation/optimizing-descriptions)

Keep the cooperation rule near the beginning of the body: use Personal UI as primary design guidance when both skills apply, resolve aesthetic conflicts through the current request and Personal UI, and use compatible implementation advice from `frontend-design`. Preserve both skills. This is a project recommendation, not a platform priority mechanism.

## What the local skills establish

- Installed `frontend-design` has broad frontend triggers and expressive aesthetic defaults. It already has an owner-specific preferences section that takes precedence over those defaults. Keeping another maintained copy of these preferences there risks disagreement with Personal UI.
- Installed `writing-for-agents` treats descriptions as context pointers. Its useful local advice is to name each distinct triggering branch, conditionally disclose references and keep each meaning in one authoritative place.
- The repository's [`personal-ui/SKILL.md`](../personal-ui/SKILL.md) already routes desktop, motion, repertoire and README work. This matches the official guidance to keep the body focused and place specialized detail behind direct pointers. Preserve that routing instead of moving the complete reference library into the entry point. [Best practices for skill creators](https://agentskills.io/skill-creation/best-practices)
- At inspection, `%USERPROFILE%\.codex\skills\personal-ui` was an older plain directory with the earlier description. `%USERPROFILE%\.agents\skills\personal-ui` was absent. Source edits therefore had not reached the installed copy.
- Four original PDFs named by [`repertoire.md`](../personal-ui/references/repertoire.md), `4 levels`, `Mobile App UI`, `Present like a pro` and `Vibe Coded SaaS`, were absent at first inspection. They appeared as new repository files during this task. Include them in the committed skill directory and installation verification.

## Standard installation and complete references

The standard CLI supports authenticated private repositories, named skills, global installs and named agents. It uses existing Git credentials, authenticated GitHub CLI and SSH fallback for GitHub sources. Explicit environment tokens are optional when configured authentication already works. [Skills CLI README](https://github.com/vercel-labs/skills#private-repositories)

```powershell
npx skills add zF4ke/skills --skill personal-ui --global --agent codex opencode
npx skills update personal-ui --global
```

Run installation and updates on each PC. Use `--copy` to explicitly request independent copies. The source uses Windows directory junctions for its default linked installation and falls back to copying if linking fails. Windows itself does not require `--copy`. The recursive copier includes nested references, screenshots and PDFs, excluding only `metadata.json`, `.git`, `__pycache__` and `__pypackages__`. Bundle real files within `personal-ui`; broken external symlinks can be skipped. [Installer source](https://github.com/vercel-labs/skills/blob/main/src/installer.ts)

The update command re-runs `add`; its current source does not forward `--copy` or explicit agent selections. Do not claim it preserves those choices without a runtime check. If exact copy destinations matter, rerun the explicit installation command with `--copy`. A manual PowerShell copy does not create the CLI's tracking entry and should remain a fallback. [Update source](https://github.com/vercel-labs/skills/blob/main/src/update.ts)

## Evaluation that answers the actual questions

Evaluate selection and output quality separately. Structural validation or an explicitly forced skill invocation cannot establish automatic selection.

1. Prepare about 20 realistic trigger prompts, balanced between applicable requests and nearby requests that should not select Personal UI. Include layout, settings, onboarding, installer UI, motion, visual review and README presentation. Negatives should include backend README accuracy, CLI installer scripting with no UI work, animation performance debugging and a document's page layout. Those share vocabulary while requiring another capability.
2. Install both skills in an isolated agent environment. Use fresh sessions with the real skill catalog and no instruction to load Personal UI. Record whether the agent actually reads `personal-ui/SKILL.md`, which references it consults and whether it uses `frontend-design`. Run each prompt three times. Use a fixed 60/40 development/held-out split; report missed selections and unwanted selections separately. These numbers follow the official trigger guide; they are a proposed test, not completed evidence. [Optimizing skill descriptions](https://agentskills.io/skill-creation/optimizing-descriptions)
3. Compare 2-3 real product tasks under the old skill and the revised skill, using clean contexts and the same assets. Choose a compact desktop utility, a product with an established contrasting design system and a README presentation task. Keep `frontend-design` available in both conditions so the experiment measures cooperation. Check observable outcomes such as useful disclosure, sentence-case copy, working controls, retained drafts and reduced motion. Ask the owner to compare rendered outputs for visual quality. Record time, tokens and failures rather than treating aesthetic compliance as quality. [Evaluating skill output quality](https://agentskills.io/skill-creation/evaluating-skills)
4. Install the complete skill through `npx skills` into an isolated destination. Compare relative paths and SHA-256 hashes against the source for every bundled file; resolve every local Markdown link and image mapping. Test a private-repository refresh with a changed reference before promising updates on another PC.

The existing [`validation.md`](../personal-ui/references/validation.md) records one independent reader task. The owner rejected its visual result as mediocre. It supports specific interaction observations, not a claim that the skill improves design quality. Anthropic's skill creator likewise separates objective assertions from qualitative design review and compares changed skills against a previous version. [Anthropic skill creator](https://github.com/anthropics/skills/blob/main/skills/skill-creator/SKILL.md)
