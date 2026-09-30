# Independent test

30 September 2026. A separate agent received this skill and a task to build a book reader with notes and reading settings. The purpose was to check whether the skill could preserve the owner's interaction preferences without copying Cloak's compact black-purple utility shell.

The artifact used warm paper, serif reading text and a rust accent. It included themes, font sizes, chapter navigation, notes, disclosed layout settings and two-step onboarding. Keyboard menus, focus return, note validation, persistence, retained drafts after failed saves, empty notes and 390 px layouts were exercised. Verification found and fixed disappearing tools, a mobile panel overlap and disclosure completion while the browser was in the background.

The skill's menu-gutter, matching-menu-theme, connected-progress and grouped-Save guidance transferred. Product-specific reading width, typography and layout still required judgment. The repertoire did not supply a directly matching reader example, which did not prevent a distinct appropriate design.

The self-contained test lives in `examples/reader/index.html` at the repository root, with captured paper and night onboarding states. Later screenshot calls timed out; those later checks used browser state and geometry. This is evidence from one independent task, not a claim that every future design will be good. Test again against a different real product when adding substantial guidance.

The owner later judged the prototype's visual example as mediocre and asked to present Cloak instead. Its tested interactions remain evidence; its appearance is not an approved design reference. The repository README now uses a real Cloak capture.

## README and trigger review

A second independent task used only the skill and its routed references to draft a README for a fictional Windows project manager. The agent consulted preferences, desktop patterns and README guidance, kept the packaged download first, explained destructive updates beside their controls, and omitted unsupported branding and screenshots. It identified unspecified uninstall, update and recovery details rather than inventing them.

The review identified overactivation risk for a narrow factual README correction. The description now limits that branch to README presentation. This was a reasoned classification, not a runtime test of automatic skill selection in every agent. The fictional README did not have a live release or documentation to verify. These observations establish routing and specific writing behavior, not aesthetic quality or measured improvement over an unassisted baseline.

The real skills README uses Cloak and was rendered through GitHub's Markdown API for visual inspection. Its standard private-repository installation and the completeness of the installed references are checked separately. The research and proposed broader evaluation are in `docs/skill-guidance-research.md` at the repository root.

The authenticated GitHub command was exercised on this PC with the skills CLI 1.7.0 for Codex, Claude Code and OpenCode. All 53 files in the then-current skill matched the installed canonical and Claude copies after normalizing text line endings; raster assets and PDFs matched byte for byte. Codex and OpenCode discover the canonical `.agents/skills` directory. An earlier manual Codex entry now points at the current canonical instructions. This confirms installation completeness, not automatic invocation or visual quality across models.
