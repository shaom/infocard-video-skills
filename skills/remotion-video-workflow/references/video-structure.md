# Video Structure

The default reusable structure for v1 is:

- Hook
- Content
- End Card

This structure came from the validated knowledge-video workflow in the existing Remotion project.

## Runtime Defaults

- `30fps`
- target runtime: `25` to `45` seconds
- transition duration: `12` to `15` frames

For a knowledge-dense short video, a good baseline is:

- Hook: `150` to `210` frames
- Content scenes: `150` to `195` frames each
- End Card: `90` to `120` frames

Keep the full video under `45` seconds unless the brief clearly requires a longer format.

## Section Roles

### Hook

The hook should establish three things quickly:

- what the topic is
- why it matters
- what structure or payoff the viewer will get

The validated pattern is:

- one strong title block
- one thesis line
- one short metrics row or proof row
- one compact supporting strip

Avoid long paragraphs in the hook.

### Content

Content scenes should carry the real explanation.
In v1, they work best when each scene does one of these jobs:

- explain one step or pair of steps
- summarize key takeaways
- warn about common mistakes
- group related examples

Do not make every content scene identical.
The existing project proved that different content types need different layouts:

- step scene
- takeaway strip scene
- pitfall grid scene
- grouped project list scene

### End Card

The end card should close cleanly in `3` to `4` seconds.
Keep it simple:

- one creator or brand identifier if required
- one short closing line
- two or three CTA buttons at most

Do not overload the end card with new information.

## Storyboard Data Model

Keep the story structure in a typed data module.
Useful fields include:

- `id`
- `kind`
- `title`
- `kicker`
- `accent`
- `durationInFrames`
- `groups` or `items`

The scene renderer should consume this data.

## Content Density Rules

For knowledge videos:

- prefer grouped bullets over long prose blocks
- keep one scene focused on one conceptual move
- do not put more than one heavy headline in the same panel
- if a list is long, dedicate a scene to it instead of squeezing it into another scene
- preserve important enumerations exactly when they are part of the promise

The existing project used tests to guarantee that key lists such as takeaways or mistakes are preserved.

## What To Test

At minimum, test:

- total runtime stays under the cap
- section order is correct
- key claims and lists are preserved
- grouped items appear exactly once when distribution matters

When the repository contains more than one video family, add tests that guard against structure drift between them.
