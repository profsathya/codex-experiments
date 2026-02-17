#!/usr/bin/env bash
set -euo pipefail

TARGET_BRANCH="${1:-main}"
REMOTE="${2:-origin}"

if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  echo "Error: not inside a git repository." >&2
  exit 1
fi

CURRENT_BRANCH="$(git rev-parse --abbrev-ref HEAD)"
if [[ "$CURRENT_BRANCH" == "HEAD" ]]; then
  echo "Error: detached HEAD. Checkout a branch first." >&2
  exit 1
fi

if ! git remote get-url "$REMOTE" >/dev/null 2>&1; then
  cat >&2 <<MSG
Error: remote '$REMOTE' not configured.
Add one with:
  git remote add $REMOTE <repo-url>
Then run this script again.
MSG
  exit 1
fi

if ! git diff --quiet || ! git diff --cached --quiet; then
  echo "Error: working tree has uncommitted changes. Commit or stash first." >&2
  exit 1
fi

echo "Fetching $REMOTE/$TARGET_BRANCH..."
git fetch "$REMOTE" "$TARGET_BRANCH"

echo "Rebasing $CURRENT_BRANCH onto $REMOTE/$TARGET_BRANCH..."
git rebase "$REMOTE/$TARGET_BRANCH"

echo "Done. If conflicts occurred and were resolved, continue with:"
echo "  git add <resolved-files>"
echo "  git rebase --continue"
