# Cover Linkage

When both cover and video are requested, they should behave as a linked pair.

The validated v1 pattern is to keep the cover separate from the video while sharing the same narrative center.

## Core Rule

The cover is not a screenshot substitute.
It is a paired still design that should preview the video's thesis, not duplicate one frame mechanically.

## Recommended Cover Data Model

Keep cover data in a separate module such as `coverContent.ts`.
Useful fields include:

- `brand`
- `title`
- `kicker`
- `promise`
- `metrics`

This lets the cover evolve independently while staying aligned with the video.

## What Should Match

Cover and video should align on:

- title linkage
- palette linkage
- motif linkage
- structural linkage
- what can differ between cover and motion output

More concretely, they should usually share:

- the same topic framing
- the same headline family
- the same core promise
- the same key numbers when numbers are part of the hook
- the same warm/cool theme system

## What Can Differ

- exact layout
- supporting copy
- amount of detail
- metric placement
- whether an oversized background logo appears

The cover should be denser and more poster-like.
The video hook should be more temporal and easier to read in motion.

## Practical Rules

- If the video promise changes, update the cover promise too.
- If the video hook relies on key counts, mirror those counts on the cover when possible.
- If the cover introduces a key claim, that claim should appear early in the video.
- Keep the typography family consistent even when the layout differs.

## Validation

Before finalizing:

- confirm the cover and video look related at a glance
- confirm the cover does not claim content the video never delivers
- confirm the cover still reads clearly as a still image on its own
