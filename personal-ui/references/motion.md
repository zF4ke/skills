# Motion

Use motion to show continuity between real states. A selected navigation background can move between controls. A focused view emerges from its trigger. An explicitly requested disclosure expands in place. An action acknowledges the press immediately and then displays genuine pending work.

For compact React utilities, a starting spring is stiffness 380 to 500 with damping 30 to 36. These are examples, not fixed constants. Tune mass, displacement and content size together. Use less displacement for small menus than for large sheets. Enter can take slightly longer than exit.

Prefer one shared motion vocabulary. Keep button text and ordinary glyphs stationary during hover, press and pending work. Animate selection backgrounds, opacity, color and real changes of size. The owner likes an intentional pin/unpin tilt; retain that targeted state animation without applying rotation or press scaling to every control. Small dialog entry motion can establish its relationship to the trigger without repeatedly moving its content.

When the owner explicitly requests a disclosure, animate its height so content moves coherently. When closing, return focus to the trigger if it was inside the content, and make exiting descendants inert. Preserve drafts when views switch. Keep object positions stable across periodic data refreshes.

Loading should be recognizable. A static faint clock can look like a broken app. Use a visible spinner or a short activity line while waiting. Reduced motion should replace movement with a clear stationary pending state, not remove the information.

Inspect motion in the running app. A screenshot taken during entry can show faded text, so also capture the resting state. Check fast open/close, interrupted transitions, changing content height and keyboard focus. Native window resizing is separate from DOM animation.

The repertoire's Micro-Animations and Swipe Anims frames provide composition references. Still PDF frames do not establish duration, spring parameters or implemented behavior. View the linked sequences in [repertoire.md](repertoire.md) before adapting their movement.
## Initial state and state changes

Mount an indicator at its current value. Animate only subsequent user-driven changes. A setup track with no completed steps must not briefly appear full and retract when its modal opens. Give Motion indicators `initial={false}` or an explicit matching initial value. The same rule applies to toggles, progress bars and selected navigation highlights. Reopen dialogs and switch away and back during verification; first-render bugs can disappear during an ordinary forward walkthrough.

Retained hidden tabs must not measure a zero-size selection and animate from it when shown. Filtering a scrolled collection must not pull an offscreen header back into view or replay its arrival. Check the scroll position, selected geometry and focus return while the header is outside the viewport.

Drive renderer animation with the browser frame loop. Match native movement and resizing to the active display refresh rate, accounting for the time spent applying each frame. Retarget interrupted movement from its current position and velocity. Keep expensive capture, encoding and filesystem work out of animation callbacks. Measure frame intervals while moving and resizing the real window; a duration or high-refresh screenshot alone does not establish smoothness.

Check both single-item and bulk transitions with realistic content. Batch layout reads before writes, and avoid feedback between animated content measurements and container or native-window sizing. Prefer browser-owned interpolation when it removes repeated JavaScript layout work. Measure frame intervals and redundant resize requests before and after a change; isolated rendering measurements do not establish physical display smoothness.
