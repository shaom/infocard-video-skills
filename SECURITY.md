# Security Policy

## Scope

This repository primarily contains:

- skill definitions
- workflow references
- helper scripts
- repository documentation

It is not a production service, but security issues may still matter when they affect:

- script safety
- unsafe command patterns
- accidental credential exposure
- dangerous repository instructions

## Reporting

If you discover a security issue, please avoid opening a public issue with sensitive details.

Instead, report it privately to the repository maintainer first and include:

- affected file or script
- reproduction steps
- potential impact
- suggested mitigation if known

## What To Watch Closely

Pay extra attention to:

- shell scripts under `skills/*/scripts/`
- instructions that invoke external tools or network access
- any future automation or CI workflow files
- examples that may encourage unsafe defaults
