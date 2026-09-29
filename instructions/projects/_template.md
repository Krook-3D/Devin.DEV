# Project-Specific Devin Instructions

## Project Identity

Project name:

Project purpose:

Project status:

Primary repository:

---

## Technology Stack

List only technologies that are actually used by the project.

- Language:
- Framework:
- CMS:
- Database:
- Frontend:
- Backend:
- Build tools:
- Package manager:
- Testing:
- Hosting:
- Other important technologies:

---

## Project Architecture

Describe the project's architecture.

Include:

- major directories
- important components
- application entry points
- data flow
- external integrations
- important dependencies

Do not invent architectural details.

If something is unknown, mark it as:

`Unknown — requires investigation`

---

## Directory Structure

Document the important project directories.

Example:

```text
project/
├── src/
├── public/
├── tests/
└── docs/
Only include directories that actually exist or are intentionally planned.
Development Conventions
Naming
Document project-specific naming conventions.
File Organization
Document how files should be organized.
Components
Document established component patterns.
Styling
Document the project's styling system.
JavaScript / TypeScript
Document relevant conventions.
Backend
Document relevant backend conventions.
Project-Specific Rules
List rules that apply specifically to this project.
Examples:
- Reuse existing components before creating new ones.
- Follow the existing design system.
- Do not modify protected files.
- Do not introduce duplicate functionality.
- Do not add dependencies without justification.
Protected Areas
List files, directories, systems, or functionality that require extra caution.
Examples:
production/
database/
.env
deployment/
Explain why each area is protected.
Testing
Document the project's validation requirements.
Unit Tests
Describe relevant tests.
Integration Tests
Describe relevant tests.
End-to-End Tests
Describe relevant tests.
Manual Testing
Document important manual checks.
Build
Document the build process.
Git Workflow
Document project-specific Git requirements.
Example:
main
    ↓
feature/*
    ↓
pull request
    ↓
review
    ↓
merge
Document:
- branch naming
- commit conventions
- pull request requirements
- deployment branches
Deployment
Document:
- hosting
- deployment process
- staging
- production
- required checks before deployment
Never include credentials.
External Services
Document external services used by the project.
Examples:
- APIs
- payment providers
- analytics
- authentication
- hosting
- storage
Do not include secrets or credentials.
Design System
If applicable, document:
- colors
- typography
- spacing
- components
- responsive breakpoints
- animations
- accessibility requirements
Known Limitations
Document known:
- technical debt
- bugs
- missing tests
- incomplete functionality
- architectural limitations
Important Decisions
Document project-specific architectural decisions that Devin must understand.
For significant decisions, use:
Decision:
Context:
Chosen approach:
Reason:
Alternatives:
Consequences:
Devin Behaviour
When working on this project:
1. Inspect existing implementation before changing it.
2. Follow established project conventions.
3. Reuse existing functionality where possible.
4. Keep changes focused.
5. Avoid unnecessary dependencies.
6. Validate changes before completion.
7. Review the final Git diff.
8. Do not modify protected areas without authorization.
9. Do not guess when repository evidence is available.
10. Report uncertainty instead of inventing requirements.
Project-Specific Completion Criteria
A task is complete only when:
- requested functionality is implemented
- existing functionality remains intact
- relevant tests/checks have been performed
- project conventions are followed
- the final Git diff has been reviewed
- no unintended changes remain
- known limitations are reported