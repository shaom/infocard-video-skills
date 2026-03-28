# Quality Checklist

The final workflow should check three layers:

- structural quality
- visual quality
- technical quality

## Structural Quality

Confirm that:

- the video has a clear Hook / Content / End Card structure
- scene order matches the storyboard
- key lists, claims, or grouped items are preserved
- the runtime stays within the target cap
- the cover promise matches the video promise

## Visual Quality

Confirm that:

- the title hierarchy is clear
- text density fits the ratio
- no card or panel feels empty without purpose
- the cover and video share the same visual family
- ratio adaptation changes layout, not just scale
- motion supports readability instead of fighting it

## Technical Quality

Confirm that:

- tests pass
- typecheck passes
- cover render succeeds
- video render succeeds
- `ffprobe` confirms the expected width, height, fps, and duration
- audio fades in and out cleanly

## Rejection Conditions

Reject the output if:

- the hook does not explain why the video matters
- the content scenes collapse into repetitive panels
- the end card introduces major new information
- the alternate ratio drops important content without a good reason
- branding from one video family leaks into another
- the render succeeds but the output contract is not actually met
