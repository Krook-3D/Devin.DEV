#!/bin/bash

set -e

echo "Checking staged files for potential secrets..."

PATTERNS=(
  "API_KEY"
  "APIKEY"
  "SECRET_KEY"
  "SECRET"
  "PASSWORD"
  "ACCESS_TOKEN"
  "PRIVATE_KEY"
  "AUTH_TOKEN"
)

FOUND=0

for pattern in "${PATTERNS[@]}"; do
    if git diff --cached --unified=0 | grep -E "$pattern" >/dev/null 2>&1; then
        echo "Potential secret pattern detected: $pattern"
        FOUND=1
    fi
done

if [ "$FOUND" -eq 1 ]; then
    echo ""
    echo "Review the staged changes before committing."
    exit 1
fi

echo "Secret check passed."