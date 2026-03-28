# Contributing

## Scope First

Before adding anything, keep the repository boundary clear:

- this is a Remotion video capability repository
- this is not an information-card repository
- this is not a dumping ground for one-off example outputs

## Contribution Priorities

Changes are most useful when they improve one of these areas:

1. skill clarity
2. workflow references
3. repository documentation
4. reusable helper scripts
5. small verified examples

## Preferred Change Order

When proposing a meaningful change, work in this order:

1. update or clarify the repository-level docs
2. update the skill contract if the workflow changes
3. update `references/` for detailed method changes
4. update scripts if the operational workflow changes
5. add or revise examples only after the workflow is clear

## What To Avoid

- adding unrelated Remotion experiments
- committing large rendered media files by default
- hardcoding one account, one topic, or one campaign into reusable assets
- changing the repository into a demo collection
- splitting into multiple skills without a clear reuse reason

## Style Expectations

- keep documentation direct and concrete
- prefer reusable rules over one-off case descriptions
- keep `SKILL.md` concise and operational
- move detailed guidance into `references/`
- preserve the distinction between upstream `remotion-best-practices` and this repository's workflow-specific rules

## Before Opening a Pull Request

Check these items:

- repository scope is still clear
- `README.md` stays accurate
- `README.zh-CN.md` stays aligned when needed
- `SKILL.md` and `references/` do not contradict each other
- scripts still match the documented workflow
- no unnecessary generated output is included
