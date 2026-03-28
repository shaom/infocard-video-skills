# Branding

This reference defines how reusable brand elements should enter the workflow.

## Theme First

Keep shared visual tokens in a single theme module.
The existing project validated this pattern with one `theme.ts` that stores:

- width and height defaults
- fps
- color tokens
- font stacks
- spring settings
- transition duration
- page padding

This theme module should be shared by both video and cover components.

## What Brand Inputs Should Control

Brand inputs may influence:

- title treatment
- logo placement
- accent color usage
- safe spacing
- brand consistency between cover and video

They should not force a hardcoded scene structure.

## Keep Brand Data Out of Generic Layout Logic

Use small data modules for brand-facing content:

- `coverContent.ts`
- `storyboard.ts`
- optional brand config module

Avoid hardcoding brand names, logos, or slogans deep inside generic scene components.

## Shared Brand Rules for Cover and Video

When both outputs exist, they should share:

- the main title family
- one core promise
- palette direction
- one or two repeatable motifs

They do not need identical layouts.

## Branding Boundaries

One important lesson from the existing project:

- If a repository contains more than one video family, test for brand leakage.

The current example already uses a test to ensure the GitHub trending video does not accidentally inherit OpenAI branding.
That rule should become standard for reusable skills.

## Creator Signatures

Creator signatures, avatars, and CTA labels are allowed only when the brief requires them.
They should not be baked into the generic skill as mandatory defaults.

## Safe Brand Defaults

When brand inputs are missing:

- use the shared theme tokens
- keep one warm accent and one cool accent
- avoid over-branding
- prefer a neutral but deliberate visual identity
