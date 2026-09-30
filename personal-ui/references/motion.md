# Motion

Use motion to show continuity between real states. A selected navigation background can move between controls. A panel emerges from its trigger. A disclosure expands in place. An action acknowledges the press immediately and then displays genuine pending work.

For compact React utilities, a starting spring is stiffness 380 to 500 with damping 30 to 36. These are examples, not fixed constants. Tune mass, displacement and content size together. Use less displacement for small menus than for large sheets. Enter can take slightly longer than exit.

Prefer one shared motion vocabulary. Avoid every control bouncing with a different spring. Press scales near .96 to .98 and a small hover response are usually enough. Translate or scale without changing neighboring layout unless a real expansion requires it.

Animate the height of disclosures so content moves coherently. When closing, return focus to the trigger if it was inside the content, and make exiting descendants inert. Preserve drafts when panels switch. Keep object positions stable across periodic data refreshes.

Loading should be recognizable. A static faint clock can look like a broken app. Use a visible spinner or a short activity line while waiting. Reduced motion should replace movement with a clear stationary pending state, not remove the information.

Inspect motion in the running app. A screenshot taken during entry can show faded text, so also capture the resting state. Check fast open/close, interrupted transitions, changing content height and keyboard focus. Native window resizing is separate from DOM animation.

The repertoire's Micro-Animations and Swipe Anims frames provide composition references. Still PDF frames do not establish duration, spring parameters or implemented behavior. View the linked sequences in [repertoire.md](repertoire.md) before adapting their movement.
## Initial state and state changes

Mount an indicator at its current value. Animate only subsequent user-driven changes. A setup track with no completed steps must not briefly appear full and retract when its modal opens. Give Motion indicators `initial={false}` or an explicit matching initial value. The same rule applies to toggles, progress bars and selected navigation highlights. Reopen dialogs and switch away and back during verification; first-render bugs can disappear during an ordinary forward walkthrough.
