# Audio

This reference defines the baseline audio workflow for v1.

## Default Approach

Use one background music track as a support layer.
In the validated project, the track is stored as a local static file and played with a Remotion audio component.

Recommended baseline file:

- `public/background-music-decoded.mp3`

Using a decoded local file keeps rendering more stable than relying on a remote source.

The upstream `remotion-best-practices` skill recommends using `<Audio>` from `@remotion/media` for standard audio handling.
If the project already uses `Html5Audio` and it is working reliably, keep it consistent within that project.
For new examples in this repository, prefer following the upstream Remotion audio guidance unless there is a project-specific reason not to.

## Volume Envelope

The existing project validated a simple and effective envelope:

- fade in during the first second
- hold a stable working volume through most of the video
- start fading down around the last `60` frames
- fade further around the last `18` frames
- end at `0`

Typical values used in the current project:

- working volume around `0.44`
- late fade around `0.24` to `0.26`

## When To Lower or Skip Music

Lower the music significantly when:

- the content is text-dense
- there is voiceover or narration
- the video depends on precise reading

Skip music when:

- licensing is unclear
- the brief asks for a cleaner analytical tone
- the content already feels cognitively heavy

## Music Rules

- Keep one track through the full video in v1.
- Use fades, not abrupt cuts.
- Do not let music become the primary pacing device.
- The story rhythm should still work if the audio is muted.

## Implementation Pattern

Preferred pattern:

```tsx
<Audio
  src={backgroundMusicSrc}
  volume={(f) => interpolate(...)}
/>
```

Use clamped interpolation so the volume envelope stays predictable.

If you need delayed entry, trimming, or multiple tracks, follow the upstream Remotion audio rules rather than inventing custom wrappers first.

## Validation

When verifying outputs:

- confirm the file exists locally
- confirm fades are present
- confirm the end card does not cut audio abruptly

- background music usage
- volume ranges
- fade in and fade out expectations
- when silence is preferable
- how audio supports pacing without burying content
