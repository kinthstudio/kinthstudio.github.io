# Kinth Studio site

Studio hub + per-app marketing/support sites, published via GitHub Pages
under the `kinthstudio` GitHub account. **Live now at https://kinthstudio.github.io**

## Structure

- `index.html` — studio hub: logo, one-liner, and a card per published app
- `assets/` — studio-level assets (K logo icons) and the icon for each hub card

**Adding an app**: create a new top-level folder (e.g. `coolapp2/`) with its
own `index.html`/`support.html`/`privacy.html`/`assets/`, then add a new
`.app-card` link to it in the root `index.html`. No new GitHub repo or domain
needed — everything lives under the same `kinthstudio.github.io` site as
subpaths.

All pages are self-contained static HTML/CSS — no build step, no dependencies.

## Publishing changes

```bash
cd KinthStudio-GitHub
git add -A && git commit -m "..." && git push
```
(The repo + GitHub Pages are already set up — this just pushes updates. See
`push-to-kinthstudio.sh` if you ever need to re-point `origin` from scratch.)

## Using it for App Store Connect

In App Store Connect → App Information, an app's **Marketing URL** is its
folder (`https://kinthstudio.github.io/<folder>/`) and its **Support URL** is
that folder's `support.html`.

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

- Contact email throughout is `kinthstudio@icloud.com` (your existing
  address) — swap in a dedicated `support@kinthstudio.com` alias later if you
  set one up once you own the domain.
