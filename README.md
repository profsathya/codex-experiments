# Life Architect Studio

An interactive GitHub Pages web experience designed to help people make better life decisions with clarity, purpose, and practical weekly action.

## What is inside

- `docs/index.html` — the premium landing page and navigation hub.
- `docs/purpose-compass.html` — weekly alignment diagnostic with saved 7-day action plan.
- `docs/values-ranking.html` — value conflict arena that generates a real decision hierarchy.
- `docs/life-calendar.html` — life-in-weeks visualization plus legacy allocation planner.
- `docs/ikigai-studio.html` — purpose-to-prototype engine for meaningful 30-day experiments.

## Run locally

```bash
python3 -m http.server 8000
```

Open:
- `http://localhost:8000/index.html` (root redirect)
- `http://localhost:8000/docs/index.html` (studio home)

## Publish on GitHub Pages

1. Push the branch to GitHub.
2. Open **Settings → Pages**.
3. Choose **Deploy from a branch**.
4. Select your branch and folder **`/docs`**.
5. Save and open your published URL.

## Resolve PR conflicts quickly

If your PR shows merge conflicts, rebase your branch onto the latest target branch.

```bash
./scripts/sync-pr-branch.sh main origin
```

What it does:
- verifies you are on a branch with a clean working tree
- fetches `origin/main`
- rebases your current branch on top of it

If conflicts appear during rebase, resolve files, then run:

```bash
git add <resolved-files>
git rebase --continue
```
