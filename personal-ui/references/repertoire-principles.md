# Design principles & references

A portable, project-agnostic guide. Paste this as context when starting or
improving any UI so the output lands at a premium, "not templated" bar. It is
distilled from building Poeta and Modern Bazaar, and from the references at
the bottom.

## The bar

Aim for **indie-premium product UI**: calm, confident, and *satisfying to touch*.
Think Linear / Notion restraint crossed with chess.com smoothness. The opposite
of "AI slop" (generic gradients, three equal cards, stock everything). Every
screen should feel intentional and every control should feel alive.

## Non-negotiables

1. **No em dashes anywhere** (UI copy, comments, docs, READMEs). Use a hyphen, a
   comma, parentheses, or two sentences. No `·` middot separators in copy either.
2. **Everything interactive animates.** Hover, press, toggle, open, close. A
   static control reads as unfinished.
3. **One accent colour.** Neutrals do the structural work; a single saturated
   accent carries interaction. Extra hues only as *semantic* categories (status,
   tiers), kept muted so they read as information, not decoration.
4. **One radius scale, one type system, one spacing rhythm.** Consistency is most
   of "looking designed".
5. **No layout jank.** Nothing flickers, jumps, or reflows unexpectedly. Anchor
   things to fixed boxes; reserve space; never restart an animation on a no-op
   re-render.
6. **Real states.** Design empty, loading, and error states, not just the happy
   path. Confirm destructive actions.

## Motion (the part most projects skip)

- Two easings cover almost everything:
  - **Spring** `cubic-bezier(0.34, 1.56, 0.64, 1)` (slight overshoot) for things
    that should feel *physical*: button/press `scale`, toggle thumbs, sliding
    segmented indicators, steppers, chips.
  - **Ease-out** `cubic-bezier(0.16, 1, 0.3, 1)` for opacity and movement:
    fades, slides, panel/collapse open-close, toasts.
- Durations: 120-200ms for presses/hovers, 250-400ms for panels/toasts.
- **Motivated motion only**: feedback, hierarchy, state-change, or storytelling.
  Not motion for its own sake.
- **Sliding indicators** beat hard-swapped active states (segmented toggles: a
  pill that glides between options).
- **Collapse height smoothly** with the CSS grid trick: wrap content, animate
  `grid-template-rows: 0fr -> 1fr` (no magic pixel heights).
- **Press feedback**: `scale(0.96-0.97)` on `:active`. **Lift on hover** for
  primary actions (`translateY(-1px)` + a slightly larger shadow).
- **Micro-life**: icons can `scale(~1.15)` (and a tiny rotate) on hover; a single
  sparkle/accent can pulse on a key action.
- **Always** honour `prefers-reduced-motion: reduce` (collapse all animation to
  instant).
- Animate only `transform` and `opacity` (cheap, smooth); never `width/top/left`.

### What makes motion feel *real* (vs. clunky)

The motions people describe as "satisfying", "physical", or "Apple-like" almost
always come from one of these. The clunky ones break one of these rules.

- **Object permanence beats cross-fade.** When switching between options, move a
  *single persistent element*, don't fade one out and another in. A segmented
  toggle should have one pill that *slides* between slots (`transform:
  translateX`), not an active background that hops. The brain reads "one object
  that moved", which is why the sliding selector feels real and a recolour does
  not. Same idea = shared-element transitions and FLIP for layout changes.
- **Overshoot then settle = weight.** The "Apple swing" is a spring that slightly
  passes its target and eases back once (`cubic-bezier(0.34,1.56,0.64,1)`). One
  overshoot reads as momentum; *repeated* wobble reads as broken. Use it for
  presses, toggle thumbs, sliding pills, chips, things being grabbed/placed.
- **Asymmetric enter/exit.** Things *arrive* with spring/overshoot (energy) and
  *leave* with plain ease-out, no bounce (you don't bounce on the way out).
  Exits are usually a touch faster than entrances.
- **Grow/fade in, never pop.** New content (a row, a section band, a suggestion)
  should fade or scale up from ~0.96, not blink into existence. Popping in is the
  single most common "cheap" tell. (Caveat: don't let it *re-*animate on every
  keystroke; only on first appearance.)
- **Motion has direction and origin.** A panel slides in from the edge it lives
  on; a menu grows from the control that spawned it (`transform-origin`); a
  deletion collapses where the item was. Motion from nowhere feels random.
- **Match velocity to the gesture.** Drag/press follow the finger 1:1; release
  springs to rest. Never animate something the user is directly manipulating on a
  fixed timer.
- **Stagger reveals.** A list/grid appearing all at once feels flat; a 20-40ms
  per-item cascade feels alive. Keep it subtle and short.
- **Never linear, never instant** for anything physical. Linear easing is the
  other big "cheap" tell. Snapping with no transition reads as a bug.

## Color

- Warm or cool neutral ramp, never pure `#000`/`#fff` (use off-tones for depth).
- Surfaces in 2-3 steps (canvas, surface, well) plus hairline borders.
- Tint shadows toward the background hue; no flat black drop shadows.
- Lock the accent across the whole product. Avoid the AI-default purple glow.

## Typography

- A display/character face + a clean workhorse for UI. Pair with intent.
- Numbers in UI: a grotesk with **tabular-nums** (aligned, legible), not a serif.
- Reserve serif/literary faces for genuinely editorial/manuscript content.
- Control hierarchy with weight and color more than raw size.

## Spacing & layout

- Generous whitespace; let the primary thing breathe.
- Grid over flex-percentage math. Contain page width; center with real margins.
- Cards only when elevation communicates real hierarchy; otherwise group with
  spacing and hairlines.
- Never put a scrollbar inside another scrollbar. Prefer in-flow expansion
  (the parent scrolls) over nested scrolling popovers.

## Component patterns worth defaulting to

- **Segmented toggle** with a sliding pill (not buttons that just recolor).
- **Stepper** for small bounded numbers (not a slider; sliders are for ranges).
- **Tag/chip input** for lists (not a raw textarea); chips removable, Enter adds.
- **Toast** with enter spring, exit ease, and a manual close; auto-dismiss ~4.5s.
- **Popover menus** positioned at the trigger; close on outside-click and Escape.
- **Stat tiles** (big tabular number + small label) for "what the system knows".
- **Inline affordances that reveal on hover** for secondary/optional actions.

## Micro-interaction checklist (run before shipping)

- [ ] Every button: hover, `:active` press, focus-visible.
- [ ] Toggles/segments: spring, pointer cursor, sliding indicator.
- [ ] Inputs: focus ring (accent wash), clear placeholder, error state.
- [ ] Panels/menus/toasts: animated in AND out; closeable; Escape works.
- [ ] No animation restarts when only a selection/index changed.
- [ ] Reduced-motion path verified.
- [ ] Mobile: single-column collapse, >=44px touch targets, no overflow, dock/
      panels become overlays.
- [ ] Copy: no em dashes, no middots, no filler ("seamless", "elevate"), real
      data not "Lorem"/"John Doe".

## References

- **Kole Jain** - kolejain.com/resources (decks: Software colors, Kill boring
  designs, Micro-Animations, Software Sections, 4 levels, Not boring). The source
  for: surface-on-tinted-canvas, neutrals + one accent, refined pills/segments,
  status dots, tasteful sparkles, bold grotesk, motivated playful motion.
- **chess.com** - the smoothness bar: spring micro-interactions, sliding
  indicators, things that move with weight and never feel abrupt.
- **Linear / Notion** - restraint, hierarchy through type and spacing, calm.
- Anti-patterns to avoid: see any "AI slop" critique - centered hero over purple
  mesh, three identical feature cards, generic glassmorphism, Inter + slate
  everywhere, infinite-loop animations with no purpose.

## Fonts that worked (proven pairings)

Reach for these before defaulting to Inter. All are on `@fontsource` (self-host,
works offline / under an Electron CSP).

- **Space Grotesk** (UI / body). Clean, a little character, reads well on dark.
  Set the base weight to **500**, not 400 - 400 looks thin on a dark surface and
  reads as unfinished. Headings 600-700. This was the single most-praised font
  choice in the Buckshot Roulette Solver build.
- **Space Mono** (numbers only). Use it strictly for **real tabular numbers**
  (steppers, counters, scores, EV, levels). Do NOT set whole sentences or labels
  in mono - a sentence with one number in it is sans, not mono. Mono-on-prose is a
  recurring "off" tell.
- **DotGothic16** (retro / dot-matrix accent). Gorgeous for a game/analog-horror
  identity, but it is **thin and low-legibility at small sizes**. Use it only for
  big, sparse moments: the one huge stat number, the screen title, a handful of
  section headers. Never for small captions, tags, or body. When a small label
  "looks too thin to read", it is almost always a dot-matrix/retro face doing a
  job it should not - swap that instance to the sans.

Pair: Space Grotesk 500 + Space Mono (numbers) + one retro display face used
sparingly. A subtle chromatic `text-shadow` (red/cyan split) on ONE hero number
sells "CRT" without touching legibility elsewhere.

## Desktop app (Electron) specifics

A desktop app is not a web page. The window size is fixed and known, so:

- **Design to the window; never scroll the primary screens.** Pick a default and
  minimum size, then make every core screen fit the minimum with zero scroll (test
  it). A setup/onboarding screen that scrolls is a fail - go two-column and use
  compact inputs instead of a tall single column.
- **Frameless + custom title bar.** `frame:false`, then build your own bar:
  `-webkit-app-region: drag` on the bar, `no-drag` on every interactive child, and
  minimize/maximize/close wired through a tiny preload IPC (`window.win`). Close
  hover goes red.
- **A focused decision belongs in a centered modal, not an inline panel.** Inline
  panels that expand push the layout and often land below the fold; a dim-backdrop
  modal is always centered, never scrolls, and reads as "answer this now". (The
  "what came out of the chamber?" shell picker went from an ugly inline strip to a
  loved modal this way.)

## Mistakes this ruleset now bans (learned the hard way)

- **Repeated icons (hearts, pips, stars) must never overflow.** Wrap them, and
  collapse to a count past ~7 (`♥ ×9`). A row of N hearts inside a fixed card
  overflowed the moment N got large. Also: at round start, current = max, so don't
  let "max" ratchet up when the user nudges a stepper up then down, or the count
  collapses at a low value.
- **Sliding toggle thumb must be concentric with its track.** Position the thumb
  from the active button's real box (`offsetLeft/Top/Width/Height`), not a fixed
  `top/bottom` inset plus a horizontal transform - mismatched insets (e.g. 5px
  vertical, 9px horizontal) make the rounded corner visibly wrong.
- **Reset `h4/h5/h6` margins, not just `h1-h3`.** A popover titled with an
  unreset `<h4>` showed a mysterious gap above the title (user-agent margin).
- **Don't vertically-center a column whose content changes height.** `justify-
  content: center` makes the whole screen jump every time a line wraps or the
  recommendation changes. Anchor to the top (`flex-start`) or reserve height.
- **Separate sections clearly.** Spacing alone read as "not separate enough". A
  hairline between sections plus a small accent tick before each section header
  fixed it. Brighten section headers to `--muted`, not `--faint`.
- **Give chips/pills real horizontal padding** (~12-13px). Tight right padding
  reads as broken.
- **Indicators need to look intentional.** A lone colored dot floating left of a
  label looked awkward; a small domain glyph (a tiny shell) inside a pill unit
  read as designed.
- **Convey state with colour + a glyph, not an instructional caption.** A control
  that needs a sentence explaining how to use it ("tap to log what you learn") is
  a smell. Make each state self-evident instead: colour carries the value (red =
  live, steel = blank), a `?` marks "unset", an icon marks the active slot (a
  bouncing chevron over the "next" one), hover + pointer cursor carry
  "interactive", and a `title=` tooltip holds the detail. If it reads at a glance,
  delete the caption.
- **The `no em dashes / no middots` rule includes tooltips and `title=` copy,**
  not just visible headings.

## Learned on Modern Bazaar (data-dense dark dashboard)

- **Check the Tailwind config for literal hex values before diagnosing color.**
  A theme can look tokenized in the markup (`bg-background` everywhere) while
  `tailwind.config` maps those names to hardcoded hexes, silently killing the
  CSS-variable ramp (and the light theme with it). The flat-gray look was one
  config file, not fifty components.
- **Tailwind's preflight leaves buttons on the arrow cursor.** Native buttons
  and Radix controls need `cursor: pointer` explicitly. One base rule covers
  the lot: `button:not(:disabled)` plus the roles (`combobox`, `option`,
  `menuitem`, `tab`, `switch`, `checkbox`, `radio`) and `summary`. Owners
  notice the missing pointer on dropdowns immediately.
- **A sequence gets ONE quiet shape; the number chip carries the order.**
  Steps 1-5 each in their own hue (blue, red, green, purple, amber boxes) is
  hue confetti wearing a wizard costume. Same for signal grids: eight tinted
  boxes read as noise, eight neutral cells with colored VALUES read as an
  instrument panel. Color goes on the datum, not the container.
- **Match container width to content type.** Centered max-width is for reading
  surfaces (landing, profile, settings). Data-dense grids and tables want the
  full viewport; centering them reads as wasted space. "Contain page width"
  applies to prose, not instruments.
- **Restraint has its own failure mode: sterile.** Stripping a playful trophy
  badge, the Zap on the main CTA, and a catchy "Save 24%" made the product
  quieter and worse; the owner asked for all three back. Motivated personality
  (brand voice on the hero, energy on the primary action, a tasteful
  gain-colored discount) is not decoration. Prune the unmotivated, keep the
  voice.
- **Never render a nonsense number.** One stat tile showing 2727887.4% (a raw
  backend ratio) undoes every styling decision around it. Data displays need a
  guard: non-finite or implausible values render as a dash, and the tile keeps
  its reserved height either way.
- **Headless-browser screenshots at phone widths can fabricate overflow.** The
  trustworthy check is `document.scrollWidth === clientWidth` in a real
  engine. The screenshot artifact nearly caused a "fix" for a bug that did not
  exist, while the real overflow (a nav row) surfaced only via measurement.

## Domain-fit beats generic controls

Recognisable, subject-specific visuals win over generic widgets: two shell cards
(red "live", steel "blank") beat a `Live / Blank` button pair; an onboarding "New
Game" screen beats scattering setup fields into the play view; compact tap-to-add
chips beat nine stepper rows. When the product is about a thing, draw the thing.

## Second-pass corrections (don't over-decorate)

A follow-up review caught over-decoration and a broken animation. Bank these:

- **A sliding indicator must actually slide, not teleport.** If you measure the
  active item's box inside a `useLayoutEffect` that runs on every selection change
  and `setState` from it, the new position is committed before paint and the CSS
  transition never sees the old value: it jumps. Fix: measure ALL items' boxes
  once (mount + resize) into state, then on selection change only the index
  changes, so the thumb's `left/width` update in a normal render and the
  transition animates. This is the single most common reason a "sliding pill"
  teleports.
- **Don't wrap a small text tag in a pill/border just to style it.** A wordmark
  suffix ("SOLVER") in a bordered pill looked boxed-in and fussy; plain uppercase
  wide-tracked text read better. Borders are for grouping, not for decorating one
  short label.
- **Don't hang accent ticks/bars on every section header.** A little coloured
  rule before each "Charges / The Load" header was noise. Separate sections with
  whitespace and a single hairline; let the header text do the rest.
- **Don't put pill borders around inline setup controls.** Wrapping each
  `Live [-2+] / Blank [-2+]` unit in a rounded border made them look like chips
  they are not. A bare `icon + label + stepper` row (the icon carries the colour)
  is cleaner. Reserve the pill shape for things that are actually pill-like
  (chips, toggles, badges you tap).
- **Group a label with the thing it labels.** A "Dealer" heading sat almost
  equidistant between the player's items above and the dealer's items below, so it
  read as belonging to the wrong group. Increase the gap BETWEEN groups and keep
  the header tight to its own content (big gap above, small gap below).
- **Never ship the raw `→` (or `<-`, `<=>`) as a UI connector.** It reads as a
  stray character. Use a real chevron icon between steps (lucide `ChevronRight`,
  muted, vertically centered), or at least a proper typographic glyph. Applies to
  move lines, breadcrumbs, "step A then step B" copy.
