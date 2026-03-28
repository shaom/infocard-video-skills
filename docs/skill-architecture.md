# Skill Architecture

## Recommendation

Version 1 should ship with one primary skill:

- `remotion-video-workflow`

## Why One Skill First

- The validated capability is a full workflow, not several unrelated tools.
- One entry point is easier to install, explain, and maintain.
- A multi-skill split is useful only after repeated independent usage patterns appear.

## Internal Modularity

Even with one published skill, the repository should still be modular internally:

- `SKILL.md` for activation rules and workflow contract
- `references/` for detailed method guidance
- `scripts/` for repeatable verification and render helpers
- `assets/` for reusable starter material
- `examples/` for proof, not for policy

## Upstream Dependency

`remotion-video-workflow` should be treated as a workflow-specialized skill layered on top of `remotion-best-practices`.

Recommended responsibility split:

- `remotion-best-practices`
  - Remotion primitives
  - composition registration
  - frame-based animation rules
  - transitions
  - audio primitives
  - font loading
- `remotion-video-workflow`
  - storyboard-first workflow
  - Hook / Content / End Card structure
  - cover and video linkage
  - ratio adaptation policy for this repository
  - render and verification contract

## Future Split Criteria

Consider additional installable skills only if one of these becomes independently reusable:

- cover-only workflow
- storyboard-only planning workflow
- verification-only workflow
- brand-pack integration workflow
