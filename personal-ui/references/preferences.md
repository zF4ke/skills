# Owner preferences

## General

The owner values clean, modern interfaces that feel intentional. Minimal means the useful action is easy to find. It does not mean faint text, empty panels or missing affordances.

- Prefer direct labels and concise information. Technical detail belongs where it changes a choice or helps diagnose a problem.
- Use sentence case. Keep real acronyms. Omit ornamental uppercase subtitles.
- Use periods, commas and line breaks. Avoid em dashes and middle-dot separators.
- Remove redundant status lines, slogans, sentimental placeholders, generic helper subtitles and permanent implementation notes.
- Use icons to make actions and objects recognizable. Choose one outline family and match stroke, size and optical alignment. Provider logos keep their real proportions and name.
- Tasteful emojis are allowed. They should identify a familiar object or express a real moment, rather than decorate every heading.
- Prefer springs and continuity. Opening, changing, collapsing and completing should feel responsive and coherent. Honor reduced motion.
- Use color where it has a job. Do not tint every card, create competing accents or rely on color as the only state cue.
- Make density fit the task. Reading and editing need room. Small utilities need a compact footprint and useful space, rather than oversized headers or empty dashboard panels.
- Keep right gutters correct at rest, hover, focus and menu-open states. Hidden actions must not leave the visible timestamp or content cramped against the edge.

## Cloak feedback, 2026-09-30

The owner rejected the first desktop pass as too roomy, too gray and accented with teal. Requested near-black like their T3 Code Nightly screenshot, shadcn/ui-like restraint, a purple accent, more icons and a tighter medium rectangle centered on the screen. Large unused space is a failure in this utility.

The current direction is near-black canvas, slightly raised neutral controls, subtle borders, purple selection/action, a compact icon rail, square-ish setup actions and secondary configuration behind disclosure. This decision applies to Cloak. Another app can use a different accent, navigation or window shape.

Later feedback identified repeated defects. Dropdown arrows need a stable inner right inset, and the opened menu must share the app's theme. A styled trigger paired with an unstyled system menu is incomplete. The setup dialog's numbered circles felt disconnected; the owner requested a visible connecting line that fills purple as progress advances. Icons now identify its phases. Keep the dialog fitted to the current content rather than reserving a blank footer gap.

The owner also rejected excessive separators. A Save protection settings button sat between two rules and its scope was unclear. Group the fields and their save action together, using proximity or one quiet surface. Reserve dividers for meaningful boundaries rather than putting a line between every item.

Inspect [the owner's T3 Code reference](examples/t3-code-owner-reference.png). Take the dark neutral hierarchy and controlled emphasis. Do not copy its large coding-workspace layout into a small project utility.

## Ada lessons, September 2026

The owner initially accepted compact Raycast-like dark glass, then rejected later settings views as cluttered and excessively glassy. Keep translucency at a meaningful outer boundary. Use solid inner reading and configuration surfaces.

They rejected a tall empty header, branding icon in the composer, bottom input, sentimental placeholder, newline instruction and always-visible implementation footer. These are Ada-specific layout decisions. The reusable lesson is to put the user's current interaction first and remove chrome that contributes nothing.

The installer was a positive reference, though not perfect. It uses real text, a crisp vector mark, a focused sequence, actual progress, concise recovery and restrained low-contrast motion. The owner liked the lowercase Ada mark. This does not require a lettermark for every product.

Their later feedback concerned panel motion, dropdown padding, right-edge alignment and controls being added without a coherent hierarchy. Validate complete interaction states before declaring a new feature visually finished.
## Selection and dragging feedback

The owner dislikes accidental selection highlights across app artwork, titles and controls. For app chrome and decorative images, disable text selection and native image dragging. Keep substantive content selectable when copying it is useful, especially paths, errors, logs, notes and editable fields. Do not apply a blanket selection ban to readers, research documents or message content. Verify the policy in a rendered selection gesture, not only through CSS inspection.

## Portfolio feedback, 2026-09-30

Preserve the portfolio's established design during content updates. The owner approved a centered project disclosure with animated expansion. Keep the music player's symmetric five-control arrangement, with play centered. Put the song name and progress above the controls. Reveal volume feedback while adjusting it and dismiss it smoothly afterward. Buffering feedback should keep the player's geometry stable during pause and resume. About copy can explain the owner's interest in work at the edge of research and engineering, using personal language and concrete facts.
