# Publishing Checklist

Use this checklist before the first public GitHub push.

## Repository Identity

- repository name is `infocard-video-skills`
- README describes a video capability repository, not an information-card derivative
- GitHub About text matches `docs/github-metadata.md`
- suggested repository topics are ready

## Root Files

- `README.md` exists and is current
- `README.zh-CN.md` exists and is current
- `LICENSE` exists
- `.gitignore` exists
- `CONTRIBUTING.md` exists

## Skill Package

- `skills/remotion-video-workflow/SKILL.md` is usable as the main entry point
- `references/` contains concrete workflow rules
- `scripts/` match the documented render and verification flow
- `agents/` metadata is present when needed by the target host

## Documentation

- `docs/project-overview.md` matches repository scope
- `docs/skill-architecture.md` explains why v1 uses one primary skill
- `docs/repository-roadmap.md` does not promise work that the repository cannot support yet
- `docs/github-metadata.md` is ready to copy into GitHub settings

## Cleanliness

- no rendered output is committed by accident
- no `node_modules` is committed
- no temporary local files are committed
- no system files are intentionally tracked

## Public Readiness

- the README explains what the repository does within the first screen
- installation instructions are visible near the top
- the role of `remotion-best-practices` is explained clearly
- future example work is described honestly, not as if already implemented
