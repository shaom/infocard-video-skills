# Workflow Overview

This file describes the end-to-end workflow for the primary Remotion video skill.

The validated v1 method is based on a simple rule:

> Plan in data, render in components, validate before delivery.

This workflow is not meant to replace general Remotion guidance.
It should be applied together with the upstream `remotion-best-practices` skill.

## Core Stages

1. brief intake
2. storyboard design
3. storyboard tests
4. scene mapping
5. visual and brand application
6. audio integration
7. cover linkage
8. render and validation

## Recommended Order

### 1. Normalize the brief

Convert the request into a bounded production target:

- topic or source material
- ratio
- runtime
- output mode
- brand inputs
- cover requirement

If the user gives only a topic, default to a knowledge-oriented short video in `3:4` at `30fps`.

### 2. Build a pure data storyboard

Keep the story plan in a typed module such as `storyboard.ts`.
This module should hold:

- section ids
- section kinds
- duration in frames
- scene titles
- kickers
- grouped items
- accent metadata

Do not put these decisions only inside JSX.

### 3. Test the storyboard before rendering

At minimum, add tests for:

- total duration cap
- required section order
- preservation of key lists or claims
- ratio-specific composition registration when needed
- branding boundaries when one project contains more than one video family

### 4. Render scenes from reusable components

Use a small number of reusable scene shells and content cards.
The existing project proved that one theme module plus a few reusable scene patterns is enough for multiple videos.

At this layer, inherit upstream Remotion rules:

- animations must be frame-driven
- transitions should use Remotion transition primitives
- audio should use Remotion audio components
- composition registration should stay explicit

### 5. Keep cover and video related but separate

The still cover should have its own data module, such as `coverContent.ts`, but remain linked to the video through:

- shared title family
- shared palette
- shared metrics or key numbers
- shared promise or thesis

### 6. Validate final outputs

Treat final validation as part of production:

1. tests
2. typecheck
3. cover render
4. video render
5. `ffprobe`

## Recommended Project Contract

```text
src/
  index.ts
  Root.tsx
  theme.ts
  storyboard.ts
  storyboard.test.ts
  coverContent.ts
  Video.tsx
  Cover.tsx
public/
  background-music-decoded.mp3
out/
```

## References

- `video-structure.md` for scene roles and runtime budgeting
- `layout-ratios.md` for `3:4` and `4:3` layout rules
- `branding.md` for theme and brand handling
- `audio.md` for music handling
- `cover-linkage.md` for paired still rules
- `render-pipeline.md` for commands and validation
- `quality-checklist.md` for acceptance criteria
