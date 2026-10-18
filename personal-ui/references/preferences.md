# Owner preferences

## General

The owner values clean, modern interfaces that feel intentional. Minimal means the useful action is easy to find. It does not mean faint text, empty panels or missing affordances.

- Prefer direct labels and concise information. Technical detail belongs where it changes a choice or helps diagnose a problem.
- Use sentence case. Keep real acronyms. Omit ornamental uppercase subtitles.
- Use periods, commas and line breaks. Avoid em dashes and middle-dot separators.
- Remove redundant status lines, slogans, sentimental placeholders, generic helper subtitles and permanent implementation notes. Give each secondary destination one clear entry point unless another placement serves a distinct task.
- Choose typography for the product's reference, material and reading task. Match an established type scale when extending an interface.
- Use icons to make actions and objects recognizable. Choose one outline family and match stroke, size and optical alignment. Provider logos keep their real proportions and name.
- Tasteful emojis are allowed. They should identify a familiar object or express a real moment, rather than decorate every heading.
- Prefer springs and continuity. Opening, changing and completing should feel responsive and coherent. Honor reduced motion.
- Keep related controls visible through spacing and hierarchy. The owner strongly rejects down-chevron accordions and hidden expandable containers unless explicitly requested. Prefer flat sections, rows, peer tabs or a clearly named Edit, Details or History destination. A compact layout must not become a sequence of arrows the reader has to open.
- Use color where it has a job. Do not tint every card, create competing accents or rely on color as the only state cue.
- Make density fit the task. Reading and editing need room. Small utilities need a compact footprint and useful space, rather than oversized headers or empty dashboard panels.
- Keep right gutters correct at rest, hover, focus and menu-open states. Hidden actions must not leave the visible timestamp or content cramped against the edge.
- Use toggles for boolean controls instead of checkbox squares. Keep a visible label, keyboard operation, checked semantics and disabled/error feedback. Single-choice radio groups remain distinct.
- Avoid repeating a field label immediately above a self-explanatory input. A self-explanatory placeholder can carry the visible label when the input keeps a persistent accessible name. Keep separate labels when needed to distinguish ambiguous fields.

## Interaction and feedback

Use the pointer cursor for clickable controls, including clear and remove buttons inside fields. Keep text-entry areas and selectable content recognizable. Disabled controls retain disabled styling and behavior.

Keep familiar toolbar actions in stable positions as content and availability change. Disable temporarily unavailable actions instead of removing them when removal would shift nearby targets.

For compact links to a related task, source or record, prefer muted text, a trailing arrow and single-line ellipsis. Keep the full label available in the destination and accessible name. Use a padded rectangular hit area with modest corner rounding. It stays transparent at rest and fills only on hover. Keyboard focus uses an outline without a background fill. Preserve the label's alignment with neighboring content.

In continuous histories, load the next page as its boundary scrolls into view. Keep the visible record in place when prepending older items. Show loading and a deliberate retry after failure. Use square hover edges on full-width rows that meet divider lines; reserve rounded fills for separate controls.

Make actionable controls recognizable at rest through their shape, border, fill or established link treatment. Hover feedback should reinforce an existing affordance. Align labels and controls vertically, including wrapped labels. Give helper text explicit space above and below.

Keep related sections on the same heading and field scale. Use shared heading-to-first-control and row spacing, then compare neighboring settings screens at the same size. Let content determine panel height. During resizing, preserve existing scroll position and avoid transient scrollbars or gutter changes that move content sideways. Release reserved scrollbar space when content fits. Verify the transition and the final bounds.

Show progress as soon as a slow action starts. Distinguish preparation, ongoing activity, completion and failure using real state. An image preview should say what was captured or sent without implying continuous observation. Respect reduced motion and avoid stealing focus for status feedback.

Animate dismissals with a brief fade and measured collapse so remaining content moves continuously. Make exiting controls inert, preserve the actual action result and respect reduced motion.

Use recognizable action icons with a consistent stroke and size. Match expand and restore as a pair. Prefer an object's real artwork over a generic file-type icon when that artwork is available. Keep a fallback for missing assets. Choose reversible hiding and destructive deletion symbols that remain distinguishable.

Keep routine success quiet when the result is already clear. Avoid permanent confirmation text for opening a folder or window when the new destination already confirms the action. Use explicit status when it changes the user's next action, especially while work is pending or has failed. Text and semantics must carry meaning alongside color.

## Selection and dragging

Keep substantive content selectable when copying it is useful, including paths, errors, logs, notes and editable fields. Prevent accidental text selection and native image dragging on decorative artwork and app chrome. Verify this with a rendered selection gesture.
