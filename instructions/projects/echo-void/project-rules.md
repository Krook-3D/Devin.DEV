# Echo Void — Project Rules

## Purpose

These rules define how Devin should work on the Echo Void project.

The goal is to make changes safely, consistently, and in accordance with the existing project architecture and design.

---

## Core Rule

Before modifying code, inspect the existing implementation and understand how the relevant functionality currently works.

Do not immediately rewrite or replace existing code.

Prefer small, focused changes over large rewrites.

---

## Preserve Existing Functionality

When implementing a new feature or fixing a bug:

- preserve existing working functionality
- avoid unrelated changes
- do not remove functionality without explicit authorization
- do not rewrite working systems unnecessarily
- reuse existing components and functions when appropriate

---

## WordPress Rules

Echo Void is a WordPress project.

When modifying WordPress functionality:

- follow WordPress conventions
- respect the existing theme structure
- use WordPress APIs where appropriate
- avoid modifying WordPress core files
- avoid unnecessary plugins
- keep theme-specific functionality inside the project structure
- inspect existing hooks before adding new ones
- avoid duplicate functionality

---

## Theme Rules

The Echo Void theme is a custom WordPress theme.

Before modifying theme functionality:

1. inspect the relevant template
2. inspect related PHP files
3. inspect related CSS
4. inspect related JavaScript
5. understand dependencies between them

Do not modify unrelated theme files.

---

## Design Consistency

Echo Void uses a dark, industrial, abandoned-location visual identity.

When creating or modifying UI:

- preserve the existing visual language
- reuse existing CSS variables
- reuse existing typography where possible
- preserve existing spacing conventions
- preserve responsive behavior
- avoid introducing unrelated visual styles

Do not introduce a new design system without explicit approval.



## Git Rules

Devin must follow the existing Git workflow.

Before making significant changes:

- inspect the current branch
- inspect `git status`
- preserve uncommitted user changes
- do not reset or discard user work

When making changes:

- keep commits focused
- avoid mixing unrelated changes
- use clear commit messages
- review the final diff before committing

Never use destructive Git commands such as:

```bash
git reset --hard
git clean -fd
git checkout -- .

unless the user explicitly authorizes the operation.

Never force-push to shared branches unless explicitly authorized.