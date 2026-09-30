# Product READMEs

The owner asked for presentation quality similar to their Sophia and Buckshot Roulette repositories. Use their hierarchy, not their wording or every decorative choice. A small centered owned mark, product name, concrete one-sentence purpose, download link and genuine app screenshot give the reader an immediate starting point. Use only badges that convey real maintained facts. Avoid a wall of badges and repeated feature claims.

Keep the first usable path visible. For an installed desktop app, lead with a release download and prerequisites, not source compilation. Put development commands in a linked guide. Show what each main feature does, why the user would choose it, how to trigger it, and where its result appears. Put consequential behavior beside the action that causes it. For example, an automatic Git update policy that discards edits belongs beside the update explanation, not only in a developer ADR.

Keep README a starting point with focused linked pages when the product has many capabilities. Tables suit commands, states and settings. Do not scatter the same defaults across multiple pages unless necessary; check all repeated values after changing behavior. Use real paths and complete commands. Do not imply source-only and packaged installations have identical prerequisites.

Screenshots should show the current real UI at rest, readable at GitHub's content width. Use owned assets and omit credentials or personal conversation. Do not fake screenshots of unimplemented features. Include installation, updates, uninstall, data locations and recovery where they affect a user's work. Release claims must match verification; distinguish isolated tests from real account or OneDrive tests.

Choose a finished product the owner approves as the main visual example. Cloak is the current example. A test prototype can establish interaction behavior without meeting the owner's visual standard; link it as verification evidence instead of promoting it as the README's main example.

For a skills repository, put the standard `npx skills add owner/repo --skill name` installation path before the resource catalogue. Explain scope, agent selection, prerequisites, private repository access and updates. Keep the skill's description focused on activation triggers; detailed design rules and precedence belong in the body.

Before finishing a README, inspect its rendered Markdown at the destination's normal content width. Verify the main example is approved, images are readable, installation is easy to reach and local links resolve. Read the copy against the product's actual behavior and test the primary installation command when access permits. Correct the rendered result before reporting the README complete. If destination rendering or an installation cannot be verified, state that specific limit.

Reference examples: [Sophia](https://github.com/zF4ke/sophia), [Buckshot Roulette Solver](https://github.com/zF4ke/Buckshot-Roulette-Solver). The owner's dislikes still apply: em dashes, middle-dot separators, uppercase subtitles and redundant tiny status copy. A README need not inherit an app's black-purple palette or glass effects.
