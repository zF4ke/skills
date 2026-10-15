# Desktop patterns

## Composition

Compact utilities start with a bounded window and the useful action. Use a short header, one coherent reading area and a small set of navigation controls. A wide sidebar with only two or three items wastes space. An icon rail can fit if each icon has an accessible name and tooltip.

Configuration belongs in a visible hierarchy. Group related fields with spacing and concise headings. Put substantial secondary work behind a clearly named Edit, Details or History action that opens a focused view. Keep consequences beside consequential choices. Down-chevron accordions and hidden expandable containers require an explicit owner request; reducing density is not sufficient reason to add them.

Open object details through a named Details action leading to a focused view. Expand them below a row only when the owner explicitly requests that interaction. Avoid repeated cards for the same object. An independent group of options may deserve one boundary. A field inside a section rarely needs another reflective box.

## Geometry and readability

Use a small spacing scale, usually 4, 8, 12, 16, 20 and 24 CSS pixels. Repeated optical exceptions belong in a token or shared component. Compact buttons can be 32 to 36 pixels tall, with 16 to 18 pixel icons. Give navigation targets enough room for reliable pointer use.

Keep body text readable, usually 13 to 14 pixels in a Windows utility. Reserve 12 pixels for genuinely secondary text. Establish hierarchy with placement and weight before making labels tiny. Native Segoe UI Variable fits Windows. A different product may warrant another face; the owner has not banned native or common fonts.

When extending an existing interface, match its type scale and semantic roles. Compare computed font family, size, weight and line height with a neighboring control. Check tabs and native form fields as well as body text. Reuse the established token and verify the rendered result instead of choosing a new local size.

Allow long names and paths to wrap or truncate with an accessible full value. Project names should survive next to branch, status and actions. Keep action spacing and right edge stable when hover controls appear.

For dark apps, distinguish canvas, section and control with a few close neutral values. Text contrast should remain strong. Black is not a reason to make disabled-looking controls everywhere. An accent can identify the current selection without tinting every heading.

## Glass and native edges

Use material effects only when they help distinguish layers. Liquid Glass is inspiration for light, depth and continuity, not a blur applied to every field.

One owner draws the outside edge. A native Windows window owns its rounding, shadow and outline. The renderer fills the client area without a second outer border or radius. Browser previews need their own border because they have no native window frame. Check both implementations.

Check for doubled corners where native rounding meets renderer backgrounds. Hidden action slots must preserve the visible content's gutter.

## Components

| Component | Useful behavior |
| --- | --- |
| Icon button | Stable hit area, accessible name, tooltip, visible focus and pressed response |
| Select or menu | Readable options, separate arrow space, keyboard navigation, viewport collision handling |
| Details action | A meaningful name, focused destination, preserved draft and an obvious way back |
| Dialog | Focus trap, Escape, return focus, one scrolling area and reachable actions |
| Async action | Visible activity, actual completion, error recovery, preserved entered values |
| Row actions | Clear at hover and keyboard focus, a stable edge inset, no shifting content |
| Status | Text or icon plus semantics, no guessed success or invented zero |

For dropdowns, give the arrow a real inner inset, usually 12 pixels, and reserve its own slot so long values cannot crowd it. Style the opened menu, options, highlight and selection with the same tokens. Test keyboard navigation, Escape, focus return and viewport collisions. Portaled menus inside native dialogs must render in the dialog's top layer. Adding right padding to an OS-owned arrow does not reliably solve its geometry or menu theme.

For a short onboarding sequence, tie the phases together visibly. Phase icons and a connecting track can clarify sequence when the workflow benefits from them. Choose the progress treatment for the actual task. Size a dialog around the active form, let it grow for real content, and keep a clear relationship between that form and its actions.

Progress connectors should meet the step icons without a visible gap. Draw the track beneath their opaque backgrounds and verify the first, middle and final states. A step shadow can erase part of a connector even when its fill reaches the right coordinate. Opening starts at the actual first-step value without replaying a backwards animation.

When a dialog exceeds the available height, scroll its body and keep the header and actions outside that scrolling area. A sticky footer over the whole dialog can cover the final field or error. Show a destructive action's consequence in the first visible part of its review, before long paths or other details, and check that it is visible at the smallest supported window size. Disable source selection while an inspection is pending so an old response cannot describe a new selection.

When an async failure adds recovery controls below a long form, reveal that region within the dialog's scrolling body. Newly loaded recovery controls need the same treatment. A successful DOM check can still leave the user looking at the original form with the error offscreen; verify the control's rendered bounds and inspect its screenshot.

Separate groups only where their meaning requires it. Start with proximity and spacing. A Save action stays beside the form it owns, before logs or unrelated tools. A rule above and below a lone button can sever that relationship. One quiet section background can group a substantial form; several nested cards and separators usually obscure it.

## References and provenance

- [T3 Code source](https://github.com/pingdotgg/t3code), especially `apps/web/src/index.css` and `packages/shared/src/themePalettes.ts`. Current product references take precedence over these examples.
- [shadcn/ui](https://ui.shadcn.com/docs/components) for control behavior and neutral dark hierarchy. Use official docs for the components selected during implementation.
- [Windows rounded corners](https://learn.microsoft.com/en-us/windows/apps/desktop/modernize/ui/apply-rounded-corners) for native frame ownership.
## Native caption overlays

Windows caption-button overlays can cover a CSS border drawn inside the renderer title bar. A divider that stops before the buttons looks accidentally cut off. Place a necessary title-bar divider across the whole frame just below the overlay boundary. Verify it in the native app at the user's display scale; a browser screenshot does not include native caption buttons. Keep these boundaries purposeful rather than adding more separators to interior forms.
## Installers

Reuse the app's semantic tokens, control components, typography, icon family and motion. The installer should look like part of the product, not an unrelated default wizard. Use real UI text and vector artwork, progress tied to work, explicit failure and a ready state. The application itself may have more content than setup; matching design does not require identical layouts.

Keep installation progress tied to copied bytes or an actual operation. Distinguish download, copying and registration when the user needs to understand a delay. Keep paths copyable, decorative art non-draggable, and errors actionable without losing the current attempt. Test extracted installers and updates, not only a browser rendering of the welcome page. System-owned title-bar overlays and app corners need native verification.

For a short focused installer, center the content group vertically within the usable client area below the title bar, with equal edge insets. Center the complete group rather than only its logo. Let long errors scroll from a visible start instead of clipping them around the center. When the mark's shape works on its own, preserve transparency in native PNG/ICO exports rather than baking a black square into it. Verify the installed executable's actual icon as well as its SVG preview.
