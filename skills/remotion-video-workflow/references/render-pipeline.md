# Render Pipeline

This reference defines the standard order for validation and rendering.

## Standard Order

1. checks
2. cover render
3. video render
4. `ffprobe` validation

## Required Checks

Run these before calling the output finished:

1. `npm test -- --run`
2. `npm run typecheck`

If the project does not yet expose `typecheck`, add it as early as possible.

## Render Commands

Recommended commands:

```bash
npm test -- --run
npm run typecheck
npx remotion still src/index.ts CoverId out/video-cover.png
npx remotion render src/index.ts VideoId out/video.mp4
ffprobe -v error -show_entries format=duration:stream=codec_name,width,height,r_frame_rate -of json out/video.mp4
```

If the project standardizes npm scripts, prefer:

```bash
npm run render:cover
npm run render
```

## Output Naming

Use predictable names:

- `out/<slug>.mp4`
- `out/<slug>-cover.png`
- `out/<slug>-4x3.mp4` for alternate ratios

Avoid temporary names that hide ratio or output type.

## Composition Registration

Register outputs explicitly in `Root.tsx`.

Recommended pattern:

- one `Still` for the cover
- one `Composition` per video output
- one extra `Composition` for alternate ratios when required

This follows the upstream `remotion-best-practices` guidance on compositions and stills, and should be treated as a hard rule for this repository.

## ffprobe Expectations

Validate at least:

- width
- height
- codec
- frame rate
- duration

For a `3:4` baseline video, expect:

- width: `1080`
- height: `1440`
- fps: `30`

For a `4:3` variant, expect:

- width: `1440`
- height: `1080`

## Failure Reporting

Report failures in plain terms:

- which step failed
- which file or composition failed
- whether the issue is structural, visual, or technical
- what the next fix should be
