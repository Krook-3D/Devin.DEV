# Devin Development Environment

A reusable development environment, knowledge base, prompt library, and safety framework for working with Devin across multiple software projects.

The goal of this repository is to create a consistent way of configuring Devin so that it can understand a project's architecture, follow established development practices, use project-specific tools, and operate within clearly defined safety boundaries.

---

## Purpose

This repository contains reusable resources for configuring Devin:

- Core development instructions
- Project-specific instructions
- Reusable prompts
- Development workflows
- Git conventions
- Safety and security rules
- Devin hooks
- Validation scripts
- WordPress and WooCommerce guidance
- Project documentation templates
- Development best practices
- Environment setup scripts

The repository is designed to be **project-agnostic**.

Project-specific knowledge should be kept separate from reusable development knowledge whenever possible.

---

# Repository Structure

```text
devin.dev/
│
├── README.md
│
├── instructions/
│   ├── core/
│   ├── web-development/
│   └── projects/
│
├── prompts/
│   ├── setup/
│   ├── development/
│   ├── wordpress/
│   └── _template.md
│
├── hooks/
│   ├── hooks.v1.json
│   ├── README.md
│   └── scripts/
│
├── templates/
│   ├── project/
│   ├── wordpress/
│   └── README.md
│
├── knowledge/
│   ├── architecture/
│   ├── workflows/
│   ├── tools/
│   └── best-practices/
│
├── configs/
│   ├── git/
│   ├── wordpress/
│   └── development/
│
├── scripts/
│   ├── setup.sh
│   ├── validate.sh
│   └── install-hooks.sh
│
└── docs/
    ├── philosophy.md
    ├── getting-started.md
    └── contributing.md
```

---

# Core Philosophy

Devin should not blindly modify a project.

The preferred workflow is:

```text
Understand
    ↓
Inspect
    ↓
Plan
    ↓
Implement
    ↓
Validate
    ↓
Review
    ↓
Commit
```

Devin should prefer understanding an existing implementation over immediately creating a new one.

Existing project conventions should be reused whenever practical.

---

# General Rules

Devin should:

1. Inspect the repository before making significant changes.
2. Understand existing architecture before introducing new architecture.
3. Search for existing functionality before implementing duplicates.
4. Reuse existing components, utilities, styles, and patterns.
5. Keep changes focused on the requested task.
6. Validate changes before considering a task complete.
7. Review the final Git diff.
8. Avoid unnecessary dependencies.
9. Avoid destructive changes unless explicitly requested.
10. Document significant architectural decisions.

Devin should not:

- Guess when repository evidence is available.
- Rewrite working systems unnecessarily.
- Introduce duplicate functionality.
- Modify unrelated files without a reason.
- Store secrets in source control.
- Modify dependency/core files when the project provides a supported extension mechanism.
- Consider a task complete merely because the code was generated.

---

# Development Workflow

For a normal development task:

## 1. Inspect

Determine:

- project structure
- technology stack
- relevant files
- existing implementation
- dependencies
- configuration
- tests
- development conventions

## 2. Plan

Before significant changes:

- identify affected files
- identify dependencies
- identify possible side effects
- determine the smallest reasonable implementation

## 3. Implement

Follow existing project conventions.

Prefer:

```text
existing pattern
      ↓
extend pattern
      ↓
new abstraction only when necessary
```

instead of immediately introducing a new architecture.

## 4. Validate

Depending on the project, validate:

- syntax
- tests
- linting
- formatting
- build
- functionality
- responsive behavior
- security
- Git diff

## 5. Review

Before completion:

```text
git status
git diff
```

Check for:

- accidental modifications
- debugging code
- credentials
- generated files
- unrelated changes
- duplicated functionality

## 6. Report

The final development report should explain:

- what changed
- why it changed
- files affected
- validation performed
- known limitations
- anything that still requires human review

---

# Project-Specific Instructions

Project-specific knowledge belongs in:

```text
instructions/projects/
```

Each project should have its own instruction file.

Example:

```text
instructions/projects/echo-void.md
```

A project instruction should describe:

- project purpose
- technology stack
- architecture
- design system
- development conventions
- important dependencies
- deployment environment
- Git workflow
- known limitations
- project-specific safety rules

Project instructions should not unnecessarily duplicate the global rules.

---

# Reusable Prompts

Reusable prompts belong in:

```text
prompts/
```

Prompts should be task-oriented and reusable across projects.

Examples:

```text
prompts/setup/project-onboarding.md
prompts/setup/repository-audit.md

prompts/development/feature-development.md
prompts/development/bug-fixing.md
prompts/development/refactoring.md
prompts/development/code-review.md
```

Project-specific prompts can be added under the appropriate category when necessary.

---

# Hooks

Devin hooks provide automated checks and guardrails around development actions.

Location:

```text
hooks/
```

The primary configuration is:

```text
hooks/hooks.v1.json
```

Hooks should be used for things that should happen automatically and consistently.

Examples:

- Git validation
- secret detection
- syntax checks
- project validation
- protection against modifying protected files
- post-change verification

Hooks should supplement instructions rather than replace them.

---

# Safety

Safety rules are intentionally separated from general development instructions.

Important examples include:

- never commit secrets
- protect production credentials
- protect database credentials
- protect environment files
- avoid modifying production systems without explicit authorization
- avoid destructive database operations
- avoid modifying dependency/core files unnecessarily
- validate changes before committing

Safety-related rules should be centralized where possible so they can be reused across projects.

---

# Templates

Reusable project documentation templates belong in:

```text
templates/
```

The goal is to make onboarding a new project predictable.

A new project can start with:

```text
PROJECT.md
ARCHITECTURE.md
DEVELOPMENT.md
DECISIONS.md
```

These documents should become the project's source of truth for Devin.

---

# Knowledge Base

Reusable technical knowledge belongs in:

```text
knowledge/
```

Suggested categories:

```text
knowledge/
├── architecture/
├── workflows/
├── tools/
└── best-practices/
```

This directory should contain durable knowledge rather than temporary task instructions.

---

# Scripts

Reusable setup and validation scripts belong in:

```text
scripts/
```

Examples:

```text
setup.sh
validate.sh
install-hooks.sh
```

Scripts should be:

- deterministic
- documented
- safe to run repeatedly
- explicit about destructive operations
- compatible with the supported development environment

---

# WordPress

WordPress-specific knowledge is kept separately so it can be reused across WordPress projects.

Examples:

```text
instructions/web-development/wordpress.md
instructions/web-development/woocommerce.md

prompts/wordpress/theme-development.md
prompts/wordpress/woocommerce.md
prompts/wordpress/wordpress-audit.md
```

Important principles:

- Do not modify WordPress core.
- Do not modify WooCommerce plugin core.
- Prefer hooks and filters.
- Inspect existing customizations before adding new ones.
- Follow WordPress coding conventions.
- Keep theme and plugin responsibilities clear.
- Validate changes before considering WordPress tasks complete.

---

# Adding a New Project

When starting a new project:

1. Copy the project template.
2. Create a project-specific instruction file.
3. Document the architecture.
4. Document the development workflow.
5. Document important constraints.
6. Add project-specific prompts only when necessary.
7. Add project-specific hooks only when necessary.
8. Validate the environment.
9. Keep reusable knowledge in the global directories instead of duplicating it.

Example:

```text
instructions/projects/my-project.md
```

---

# Configuration Priority

When multiple instructions apply, use this conceptual priority:

```text
Safety / security
        ↓
Project-specific requirements
        ↓
Technology-specific requirements
        ↓
Global development practices
        ↓
Task-specific instructions
```

More specific project rules should extend the global rules rather than silently contradict them.

---

# Design Goal

The long-term goal of this repository is to become a reusable **Devin Development Environment**.

Instead of teaching Devin the same concepts repeatedly, reusable knowledge should be developed once and then applied across projects.

```text
                 Devin
                   │
          ┌────────┴────────┐
          │                 │
    Global Knowledge    Project Knowledge
          │                 │
    ┌─────┼─────┐       ┌───┴────┐
    │     │     │       │        │
  Rules  Tools  Git   Echo Void  Other
    │
    └───────────────┐
                    ↓
              Development
                    ↓
              Validation
                    ↓
              Safe Changes
```

---

# Status

This repository is currently the foundation for a reusable Devin development environment.

The structure will evolve as new projects, technologies, workflows, prompts, hooks, and automation are added.

---

# License

Add the appropriate license for this repository and its contents.
