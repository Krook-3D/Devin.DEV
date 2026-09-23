# Devin Project Onboarding

## Purpose

Use this workflow when Devin is introduced to a new software project.

The goal is to understand the project before making development changes and to create reliable project-specific documentation.

Do not modify application code during the initial onboarding unless explicitly requested.

---

## 1. Repository Inspection

Inspect the repository and determine:

- project name
- project purpose
- technology stack
- programming languages
- frameworks
- package managers
- build tools
- testing tools
- linting and formatting tools
- deployment configuration
- database technology
- external services
- environment configuration
- repository structure

Inspect relevant files such as:

- README.md
- package.json
- composer.json
- pyproject.toml
- requirements.txt
- Dockerfile
- docker-compose.yml
- .env.example
- .gitignore
- .github/

Only document technologies and files that actually exist.

---

## 2. Git Analysis

Inspect the Git repository.

Use:

```bash
git status
git branch --show-current
git log --oneline -20
git remote -v

Determine:
- current branch
- default branch
- recent development activity
- repository origin
- existing uncommitted changes
Do not overwrite existing user changes.
If significant uncommitted changes already exist, preserve them.

3. Architecture Analysis
Map the project's architecture.
Identify:
- entry points
- major components
- services
- utilities
- database layer
- API layer
- frontend structure
- backend structure
- configuration
- assets
- tests
Determine how the major parts communicate with each other.
Do not invent architectural details that cannot be confirmed from the repository.

4. Existing Conventions
Search the repository for established patterns.
Identify:
- naming conventions
- file organization
- component patterns
- CSS conventions
- JavaScript conventions
- PHP conventions
- API patterns
- error handling
- logging
- testing patterns
- configuration patterns
Prefer existing project conventions over personal preferences.
Do not introduce a new pattern when an established pattern already exists.

5. Dependencies
Inspect project dependencies.
Determine:
- production dependencies
- development dependencies
- frameworks
- plugins
- external services
- important project-specific dependencies
Do not upgrade dependencies during onboarding unless explicitly requested.

6. Testing and Validation
Determine how the project is validated.
Look for:
- unit tests
- integration tests
- end-to-end tests
- linting
- formatting
- type checking
- build processes
- static analysis
Run appropriate non-destructive checks when practical.
Record:
- what was tested
- what passed
- what failed
- what could not be tested
- known existing failures
Never claim a test passed unless it was actually executed.

7. Development Environment
Determine how the project is expected to run locally.
Identify:
- required runtime versions
- package manager
- required services
- database
- environment variables
- local development tools
- development commands
- test commands
- build commands
Never expose actual secret values.
Document required variable names without revealing credentials.

8. Deployment
If deployment configuration exists, inspect it.
Identify:
- hosting platform
- deployment workflow
- CI/CD
- production build process
- staging environment
- production environment
Do not deploy anything during onboarding.
Do not modify production or deployment configuration unless explicitly requested.

9. Project Documentation
After the initial analysis, create or update project documentation.
Recommended structure:
docs/
├── PROJECT.md
├── ARCHITECTURE.md
├── DEVELOPMENT.md
└── DECISIONS.md
If equivalent documentation already exists, update it instead of creating duplicates.
PROJECT.md
Document:
- project purpose
- target users
- current status
- technology stack
- major features
- important constraints
ARCHITECTURE.md
Document:
- directory structure
- major components
- application flow
- important dependencies
- data flow
- integrations
- architectural decisions
DEVELOPMENT.md
Document:
- local setup
- required tools
- installation
- development commands
- testing commands
- linting
- build commands
- deployment workflow
- important development conventions
Never include credentials or secrets.
DECISIONS.md
Document significant architectural decisions using:
Decision
Context
Chosen approach
Reason
Alternatives considered
Consequences
Do not create entries for trivial implementation choices.

10. Project-Specific Devin Instructions
After understanding the project, determine whether project-specific Devin instructions are needed.
If necessary, create:
instructions/projects/<project-name>.md
The project-specific instructions may contain:
- project purpose
- architecture
- coding conventions
- technology-specific rules
- important constraints
- testing requirements
- deployment rules
- project-specific safety rules
Do not unnecessarily duplicate global Devin instructions.

11. Identify Risks
Identify confirmed risks and uncertainties, including:
- fragile areas
- technical debt
- missing tests
- undocumented behavior
- outdated dependencies
- security concerns
- deployment risks
- unclear architecture
Clearly distinguish confirmed facts from assumptions.
Do not present assumptions as project facts.

12. Final Onboarding Report
At the end of onboarding, provide a concise report containing:
Project
Project name and purpose.
Technology
Confirmed technology stack.
Architecture
High-level architecture.
Development
How the project is developed and validated.
Git
Current branch and repository workflow.
Environment
Required development environment.
Risks
Important known risks or uncertainties.
Documentation Created
List documentation files created or updated.
Recommended Next Steps
List practical next development steps.
Important Rules
During onboarding:
- Do not rewrite working code.
- Do not refactor unrelated code.
- Do not upgrade dependencies.
- Do not delete files.
- Do not modify production systems.
- Do not expose secrets.
- Do not invent architecture.
- Do not assume undocumented behavior.
- Do not overwrite user changes.
- Do not claim validation was performed if it was not.
The purpose of onboarding is understanding the project.
Development changes should begin only after the project's structure and constraints are understood.