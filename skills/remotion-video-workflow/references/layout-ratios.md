# Layout Ratios

Version 1 should explicitly support:

- `3:4`
- `4:3`

The validated lesson from the existing project is simple:

> Ratio adaptation is a layout problem, not a scale problem.

## Core Rule

Do not solve `3:4` to `4:3` by shrinking the same finished layout.
Use one of these approaches:

1. Register a dedicated composition for the alternate ratio.
2. Branch layout metrics based on `useVideoConfig().width` and `height`.

The existing project uses both ideas together:

- a dedicated `4:3` composition is registered in `Root.tsx`
- the video component switches layout rules based on portrait vs landscape dimensions

## 3:4 Defaults

Recommended baseline:

- `1080 x 1440`
- stronger vertical reading path
- larger hook typography
- denser top-to-bottom pacing
- content blocks that stack cleanly without feeling like a feed

Useful patterns in `3:4`:

- hero title panel
- three-up metric row
- two-column content grids
- full-width primary project or takeaway card above smaller cards

## 4:3 Defaults

Recommended baseline:

- `1440 x 1080`
- wider scene max width
- smaller shell padding
- shorter vertical stacks
- more horizontal grouping

Useful patterns in `4:3`:

- split hero plus side metrics
- three-column grouped cards when density allows it
- wider end card with centered CTA row

## What Must Change Between Ratios

- shell padding
- scene max width
- cluster gap
- headline size
- card font sizes
- grid column counts
- minimum card heights

These were all validated in the existing `portrait` vs `landscape` layout metrics.

## What Should Stay Aligned Across Ratios

- title hierarchy
- core promise
- scene order
- palette and theme
- motion language
- content coverage

Changing ratio should change reading rhythm, not erase core content.

## Cover Linkage Across Ratios

If the video has multiple output ratios:

- keep the same title family
- keep the same brand tokens
- keep the same thesis
- allow supporting details to be rearranged

Do not let the alternate ratio become a different story.

## Implementation Guidance

- Register the alternate ratio explicitly in `Root.tsx`.
- Detect portrait vs landscape in the component with `useVideoConfig()`.
- Store ratio-driven numbers in a layout metrics function rather than scattering them across JSX.
