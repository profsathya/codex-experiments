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
# Life Well Lived Lab

A GitHub Pages-ready collection of practical, interactive web apps to help people:

- clarify purpose,
- prioritize core values,
- understand time as a finite resource,
- and run meaningful life experiments.

## Apps

- **Purpose Compass** (`docs/purpose-compass.html`)
- **Values Ranking** (`docs/values-ranking.html`)
- **Life Calendar** (`docs/life-calendar.html`)
- **Ikigai Studio** (`docs/ikigai-studio.html`)

Entry page: `docs/index.html`.

## Publish on GitHub Pages

1. Push this repo to GitHub.
2. In repo settings, enable **Pages**.
3. Set source to `Deploy from a branch` and branch folder to `/docs`.
4. Visit your published URL.
