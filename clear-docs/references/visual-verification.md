# Review the rendered result

Use this process for documentation images, diagrams and exported manuals. Review what the reader will receive, after the final content and theme are applied.

## Establish the review set

List every changed figure and document page, including generated SVG, PNG, HTML and PDF variants that will ship. Identify their real display size. A full-resolution image can still be unreadable when embedded at half the width.

Finish this step when every delivered visual has an output path and a review size. Keep this inventory with the work artifacts rather than adding verification boilerplate to the reader's page.

## Inspect the composition

Open every figure at its displayed size. Trace every connector from its origin to its intended destination. Check that arrowheads, labels and group boundaries explain the same relationship. Look for lines crossing text, masks erasing borders, cramped gutters, off-center intermediate steps and labels pressed against another column.

Remove text that adds no new meaning. A title repeated above the image, a caption repeating its footer, recurring corner labels and hollow bullets without a defined role all compete with the explanation. Keep the labels needed to understand the subject. Establish hierarchy with placement and readable type.

Check narrow and normal layouts for web documentation. Check the requested theme across page backgrounds, callouts, tables, illustrations and links. Inspect actual rendered characters for encoding damage or missing glyphs.

For UI screenshots, check the automatic window size as well as a manually resized window. Capture short and long tabs and wait for native motion to settle. Compare heading-to-first-control spacing and label/control alignment across peer screens. Check that real object icons render, since a generic executable icon does not prove the branding lookup works. Verify that section headings share their intended type scale, fields do not repeat unnecessary labels, short content has neither a stray scrollbar nor an empty reserved gutter, and transitions do not flash a new scrollbar or shift text sideways. Use the owner's current control preferences, including toggles, in both the app and its screenshots.

Finish this step when every figure is readable without zooming beyond its intended size, each connector has the right endpoints, and no unresolved overlap, clipping or redundant decoration remains. Passing a bounding-box check is additional evidence, not this criterion.

## Inspect the complete document

Render every PDF page and inspect its content at readable magnification. Contact sheets help find inconsistent rhythm, but do not replace reading page details. Check every page for clipped lines, tiny figures, table overflow, missing glyphs, duplicate headings, awkward breaks and unnecessary margin text. Follow contents links and representative internal links.

Finish when every page has been inspected, the requested theme is consistent and the delivered file contains the latest images. Keep the editable source with it.

## Repeat after changes

Repair the source and regenerate every affected delivery format. Reinspect the changed figure, its containing page and adjacent pages affected by reflow. A PNG repaired after the PDF was built leaves an outdated PDF.

Report the checks actually performed and any unavailable output. If an output could not be rendered or inspected, identify it precisely. Do not call the whole collection visually verified.
