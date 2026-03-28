# Project Overview

## One-Line Description

Reusable Remotion agent skills for structured short-form video production.

## Short Description

`infocard-video-skills` is a focused repository for reusable, agent-facing video workflows built on Remotion.
It packages skills, references, helper scripts, and examples for turning briefs or source material into structured short-form videos with stable output rules.

## Scope

This repository is designed around one goal: make a validated video workflow reusable.
The center of gravity is not a single video topic, creator account, or example project.
The center of gravity is the workflow itself:

- brief normalization
- storyboard design in pure data
- storyboard structure
- scene composition
- ratio adaptation
- brand integration
- music integration
- cover linkage
- render and validation

The practical method behind v1 is:

1. Normalize the brief into a bounded short-video task.
2. Convert the content into a typed storyboard.
3. Test the storyboard before rendering.
4. Render scenes from reusable components and theme tokens.
5. Render a linked still cover from a separate but related data module.
6. Validate outputs with render checks and `ffprobe`.

## Relationship To Remotion Best Practices

This repository should not try to replace general Remotion guidance.
Its proper role is:

- inherit Remotion-level best practices from the upstream `remotion-best-practices` skill
- add your own workflow-level rules for short knowledge videos

In other words:

- upstream skill: how to use Remotion correctly
- this repository: how your team repeatedly uses Remotion to produce this kind of video

## Non-Goals

- A general library of unrelated Remotion snippets
- A dumping ground for rendered outputs
- A single-case project tied to one current topic
- A renamed clone of the information-card repository
