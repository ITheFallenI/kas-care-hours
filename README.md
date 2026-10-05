# Kas Care Hours

A phone app (installable web app) for logging care hours per client, week by week, and keeping track of which hours have been invoiced and paid.

- **Week**: everything logged each day, with hours and money totals.
- **Log care**: client, date, type of care, hours, who you worked with. "Extra" logs one-off costs such as food shopping or a hospital visit.
- **Clients**: rates, hours per week, and what hasn't been invoiced yet.
- **Invoices**: mark hours as invoiced, record payments, see what is still owed.

All data stays on the phone (browser storage). Use **More → Save or send a backup** regularly.

## Install on a phone

- iPhone: open the site in Safari → Share → Add to Home Screen.
- Android: open it in Chrome → ⋮ → Add to Home screen / Install app.

## Develop

No build tools needed. The app is a single file, `src/app.html`. `./build.sh` wraps it with the PWA head, manifest and service worker into `dist/`. Pushing to `main` deploys `dist/` to GitHub Pages.

When you release a change, bump `VERSION` in `static/sw.js` so installed phones pick it up.
