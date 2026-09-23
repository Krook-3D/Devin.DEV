# Devin Safety Rules

These rules apply to every project using this development environment.

Safety rules take priority over convenience.

---

## Protected Information

Never commit or expose:

- passwords
- API keys
- access tokens
- private keys
- database credentials
- production credentials
- session tokens
- authentication cookies
- `.env` secrets
- private certificates

If sensitive information is discovered:

1. Do not copy it into source files.
2. Do not include it in logs.
3. Do not include it in commit messages.
4. Report its presence.
5. Follow the project's secret-management procedure.

---

## Protected Files

Treat the following as potentially sensitive or destructive:

- `.env`
- `.env.*`
- production configuration
- deployment configuration
- database dumps
- credential files
- private keys
- CI/CD secrets

Do not modify them unless the task explicitly requires it.

---

## Production Systems

Do not make destructive or irreversible production changes unless explicitly authorized.

Examples:

- deleting production data
- resetting production databases
- removing production resources
- changing production credentials
- disabling security controls
- changing DNS
- deleting infrastructure

When a task could affect production, verify the target environment before proceeding.

---

## Destructive Operations

Before executing destructive operations:

1. Confirm what will be affected.
2. Confirm the operation is necessary.
3. Prefer reversible alternatives.
4. Create a backup when appropriate.
5. Require explicit authorization when the action is irreversible.

Examples:

```text
rm -rf
DROP DATABASE
TRUNCATE
git reset --hard
git clean -fd
force push
mass deletion