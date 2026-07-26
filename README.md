# Kinth Studio — Court Tracker site

Marketing + support site for Court Tracker, ready to publish via GitHub Pages
under a new `kinthstudio` GitHub account.

## What's here

- `index.html` — marketing landing page (feature highlights, screenshots, App Store link)
- `support.html` — support page with contact email + FAQ
- `privacy.html` — privacy policy (rebranded from the original, same content/guarantees)
- `assets/` — app icon + screenshots used on the pages

All pages are self-contained static HTML/CSS — no build step, no dependencies.

## Publish it (once you've created the `kinthstudio` GitHub account)

GitHub Pages will serve this automatically, at the root domain, if the repo is
named **exactly** `kinthstudio.github.io` under that account.

1. Go to https://github.com/new (while signed in as `kinthstudio`)
2. Repository name: `kinthstudio.github.io` (must match exactly)
3. Set it to **Public**
4. Do **NOT** initialize with a README (this folder already has one)
5. Click "Create repository"
6. Run the push script:
   ```bash
   cd KinthStudio-GitHub
   ./push-to-kinthstudio.sh
   ```

Your site will be live within a minute or two at:
**https://kinthstudio.github.io**

## Using it for App Store Connect

Once live, set in App Store Connect → App Information:
- **Marketing URL**: `https://kinthstudio.github.io`
- **Support URL**: `https://kinthstudio.github.io/support.html`

(App Store Connect fields have to be edited by you directly in the browser —
there's no API access for that from here.)

## Adding your custom domain later

Once you buy `kinthstudio.com` (or whichever TLD you land on):

1. Add a `CNAME` file to the repo root containing just the domain, e.g.:
   ```
   kinthstudio.com
   ```
2. At your domain registrar, point DNS at GitHub Pages:
   - For an apex domain (`kinthstudio.com`): four `A` records pointing at
     `185.199.108.153`, `185.199.109.153`, `185.199.110.153`, `185.199.111.153`
   - Optionally a `www` `CNAME` record pointing at `kinthstudio.github.io`
3. In the repo's GitHub Settings → Pages, enter the custom domain and enable
   "Enforce HTTPS" once it's verified (can take a few hours for the cert to issue).

Full details: https://docs.github.com/pages/configuring-a-custom-domain-for-your-github-pages-site

## Notes

- The App Store link on the landing page points to
  `https://apps.apple.com/app/id6759014413` — this 404s until the app is
  approved and released. Fine to leave in now; it'll start working the moment
  the app goes live.
- Contact email throughout is `kiaointhavonh@gmail.com` (your existing
  address) — swap in a dedicated `support@kinthstudio.com` alias later if you
  set one up once you own the domain.
