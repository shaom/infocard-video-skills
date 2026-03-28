---
name: remotion-video-workflow
description: "Build structured short-form videos in Remotion from a brief or source material. Use when the user wants a reusable workflow covering storyboard structure, brand elements, music, ratio adaptation, cover linkage, render, and output verification."
---

# Remotion Video Workflow

## Overview

Use this skill to turn a brief, article, notes, or other source material into a structured Remotion short video workflow.
This skill is designed for reusable production, not for one-off visual experiments.

The default target is a knowledge-oriented short video with clear pacing, stable structure, and linked video and cover outputs.
The validated baseline for v1 is a `30fps` Remotion project with:

- a pure data storyboard module
- a separate cover content module
- one or more video compositions in `Root.tsx`
- one still composition for the cover
- tests that enforce structure and content preservation
- render and `ffprobe` validation

This skill assumes the agent also follows the upstream `remotion-best-practices` skill for Remotion-specific implementation details.
Use that upstream skill for:

- composition and still registration
- frame-driven animation rules
- `TransitionSeries` usage
- audio component behavior
- sequencing rules
- font loading behavior

## When To Use

Use this skill when the user wants:

- a knowledge-dense short video
- a Hook / Content / End Card structure
- a Remotion-based workflow instead of a generic script-only answer
- a cover and video that should feel related
- ratio-aware output such as `3:4` or `4:3`
- render and output validation as part of the task

Do not use this skill as the default choice for:

- a single throwaway animation experiment
- long-form narrative videos
- narration-first talking-head edits
- pure video editing tasks that do not need Remotion composition

## Input Expectations

Collect or infer these inputs:

- source material or topic
- target ratio
- target runtime
- brand inputs if any
- cover requirement
- output requirement such as plan only, implementation, render, or verification

When inputs are missing, infer conservatively:

- default ratio: `3:4`
- default fps: `30`
- default runtime target: `25` to `45` seconds
- default structure: `Hook -> Content -> End Card`
- default visual mode: one reusable theme with one warm accent and one cool accent
- default output mode: planning first, implementation second

## Execution Modes

Choose one of these modes before doing the work:

1. Planning mode
   - Return a normalized brief, storyboard outline, asset checklist, and render plan.
2. Implementation mode
   - Create or update the Remotion project structure, data modules, scene components, and tests.
3. Render mode
   - Run checks, render the requested still or video outputs, and report the generated files.
4. Verification mode
   - Audit an existing Remotion project for structure, ratio handling, cover linkage, and output quality.

## Default Workflow

1. Clarify the brief and output target.
2. Normalize the content into a typed storyboard.
3. Write or update tests that guard runtime, section order, and key content preservation.
4. Map the storyboard into scenes, timings, and composition rules.
5. Apply the visual system, ratio rules, and brand elements.
6. Create or update a linked cover from separate cover data.
7. Attach music and transition decisions.
8. Register explicit video and still compositions.
9. Run checks, render, and validate the final outputs.

At implementation time, combine this workflow with these upstream Remotion rules:

- use `useCurrentFrame()` and `useVideoConfig()` for animation timing
- avoid CSS transitions and CSS keyframe animations
- use `TransitionSeries` for full-scene transitions
- prefer Remotion audio components with frame-based volume control
- register `Composition` and `Still` explicitly in `Root.tsx`

## Recommended Project Shape

Use or create a structure close to:

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

Keep planning data and scene rendering separate.
Do not bury all copy, durations, and structure decisions inside a single large JSX file.

## Required Constraints

- Keep structure and reading rhythm clear before adding visual decoration.
- Adapt by ratio through layout changes, not by naive scaling.
- Treat cover and video as a linked pair when both are requested.
- Include validation in the workflow when final outputs are required.
- Keep the storyboard in a pure data layer that can be tested independently.
- Keep theme tokens centralized so cover and video can share the same visual system.
- Register explicit compositions for video and still outputs instead of relying on ad hoc render commands.

## Default Technical Assumptions

- `30fps` baseline
- short-form runtime under `45` seconds unless the brief explicitly requires more
- transitions around `12` to `15` frames
- audio handled with `Html5Audio`
- still cover rendered through a dedicated `Still`
- ratio adaptation handled either by separate compositions or layout branches based on `useVideoConfig()`

## Output Contract

Depending on the task, the deliverable may include:

- Planning mode:
  - normalized brief
  - storyboard table or typed outline
  - asset checklist
  - render and verification plan
- Implementation mode:
  - updated project structure
  - data modules
  - scene components
  - tests and render commands
- Render mode:
  - checks run
  - output files rendered
  - technical validation summary
- Verification mode:
  - findings ordered by severity
  - missing constraints
  - recommended fixes

## Resources

Open these references as needed:

- `references/workflow-overview.md`
- `references/video-structure.md`
- `references/layout-ratios.md`
- `references/branding.md`
- `references/audio.md`
- `references/cover-linkage.md`
- `references/render-pipeline.md`
- `references/quality-checklist.md`

Also consult the upstream `remotion-best-practices` skill for Remotion implementation details, especially:

- `rules/animations.md`
- `rules/audio.md`
- `rules/compositions.md`
- `rules/sequencing.md`
- `rules/transitions.md`
- `rules/fonts.md`

Run these scripts when they exist in the target project workflow:

- `scripts/render_video.sh`
- `scripts/render_cover.sh`
- `scripts/run_checks.sh`
- `scripts/probe_output.sh`

## Failure Checks

Reject the result before finalizing if:

- the video structure is unclear
- the ratio output is handled only by scaling
- the cover and video look unrelated when they should be linked
- validation is skipped for a final production task
- the example workflow is treated as the only supported pattern
- the storyboard cannot be tested independently from the scene code
- key claims, lists, or grouped items disappear between planning and rendering
- one video's brand assets leak into another unrelated video
- the cover is just a screenshot substitute instead of a paired still design
