# infocard-video-skills

<video src="./docs/media/github-trending-agents-top10-4x3.mp4" controls muted playsinline></video>

[Download the demo video](./docs/media/github-trending-agents-top10-4x3.mp4)

Reusable Remotion agent skills for structured short-form video production.

[中文说明](./README.zh-CN.md)

## What This Repository Is

`infocard-video-skills` is a video capability repository for agents.
It packages reusable skills, workflow references, lightweight helper scripts, and small verified examples for building structured short-form videos with Remotion.

This repository is not an information-card repository and should not be framed as a container for one-off demos.
Its purpose is to preserve a repeatable video workflow that can be reused, maintained, and published clearly on GitHub.

This repository is designed to sit on top of general Remotion domain knowledge.
In practice, `remotion-video-workflow` should be used together with the upstream `remotion-best-practices` skill:

- `remotion-best-practices` provides Remotion-level rules
- `remotion-video-workflow` adds your validated short-video workflow, structure, and verification contract

## Current Status

This repository is currently in the repository-shaping stage.

What is already in place:

- a publishable repository structure
- one primary skill package
- workflow references based on validated Remotion work
- lightweight helper scripts for checks, render, and output probing
- GitHub-facing repository documentation

What is intentionally not added yet:

- a full example Remotion project
- a template project with dependencies committed
- CI workflows tied to a concrete runnable example

## What It Covers

- Knowledge-dense short videos
- Hook / Content / End Card structure
- Storyboard-first video planning
- Data-driven scene rendering
- Brand element integration
- Background music integration
- 3:4 and 4:3 ratio adaptation
- Cover and video linkage
- Testing, type checks, render, and ffprobe validation

## Install

Install the full skill package, not a single file:

- `skills/remotion-video-workflow`

Keep these files together:

- `SKILL.md`
- `references/`
- `scripts/`
- `assets/`
- `agents/` when supported by the host

## Quick Start

1. Copy or install `skills/remotion-video-workflow` into your agent skill directory.
2. Use it together with the upstream `remotion-best-practices` skill.
3. Ask the agent to work in one of four modes:
   - planning
   - implementation
   - render
   - verification
4. Keep the skill package files together so references and scripts stay discoverable.

## Example Prompts

- `Use $remotion-video-workflow to turn this brief into a 3:4 knowledge video.`
- `Use $remotion-video-workflow to plan a Hook / Content / End Card Remotion video.`
- `Use $remotion-video-workflow to create a linked cover and short video from this source material.`
- `Use $remotion-video-workflow and include render validation steps for the final output.`

## Repository Layout

```text
README.md
README.zh-CN.md
CONTRIBUTING.md
SECURITY.md
skills/
  remotion-video-workflow/
docs/
examples/
templates/
```

## Workflow Contract

The repository is built around a small set of production rules that came from repeated Remotion work:

- Keep content planning in pure data modules such as `storyboard.ts` and `coverContent.ts`.
- Let React scene components consume those data modules instead of mixing all copy into JSX.
- Register video and cover outputs explicitly in `Root.tsx`.
- Handle ratio adaptation through dedicated compositions or layout branches, not blind scaling.
- Treat tests, render, and ffprobe checks as part of the workflow rather than optional cleanup.

When these rules touch core Remotion behavior, prefer the upstream skill defaults:

- animation timing from `useCurrentFrame()` and `useVideoConfig()`
- `TransitionSeries` for scene transitions
- audio components and frame-based volume curves
- explicit `Composition` and `Still` registration
- Remotion-safe font loading

## First Example

The first example should prove the workflow, not define the repository.
It should demonstrate the standard short-video structure, brand integration, background music, cover linkage, ratio adaptation, and output verification.

## Repository Docs

- [`docs/project-overview.md`](./docs/project-overview.md)
- [`docs/skill-architecture.md`](./docs/skill-architecture.md)
- [`docs/repository-roadmap.md`](./docs/repository-roadmap.md)
- [`docs/github-metadata.md`](./docs/github-metadata.md)
- [`docs/publishing-checklist.md`](./docs/publishing-checklist.md)
- [`SECURITY.md`](./SECURITY.md)

## Development and Verification

The intended verification flow for example projects is:

1. test storyboard and content constraints
2. typecheck the project
3. render the still cover
4. render the video composition
5. inspect the output with `ffprobe`

Recommended project contract:

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
  avatar.png
out/
```

## Roadmap

Version 1 focuses on one primary installable skill, one representative example, and a clear set of workflow references.
Later versions may add starter templates, stronger validation helpers, and secondary skills only when usage patterns clearly separate.

## Contributing

See [CONTRIBUTING.md](./CONTRIBUTING.md).

## License

[MIT](./LICENSE)
