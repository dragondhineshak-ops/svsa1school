Hosting your static site
=======================

This repository is a static website (HTML/CSS/JS). Below are simple, reliable ways to host it publicly.

1) Quick local test
-------------------
Run a local HTTP server from the project folder (PowerShell):

```powershell
cd 'C:\Users\kanag\OneDrive\Desktop\html1'
python -m http.server 8000
# open http://localhost:8000/svs.html
```

2) GitHub Pages (free)
----------------------
- Create a GitHub repository and push this folder to the repository's `main` branch.
- In the repo Settings → Pages, set Source to `main` branch and root (or use `gh-pages` branch).
- The site will be published at `https://<your-username>.github.io/<repo>/`.

Quick commands (PowerShell) — replace `<git-remote-url>` with your repository URL:

```powershell
cd 'C:\Users\kanag\OneDrive\Desktop\html1'
git init
git checkout -b main
git add .
git commit -m "Initial commit"
git remote add origin <git-remote-url>
git push -u origin main
```

Notes:
- Make sure `index.html` is in the repository root.
- If your site uses `svs.html` as main page, you can rename it to `index.html` or link from `index.html`.

3) Netlify (drag & drop or Git)
--------------------------------
- Quick: zip the folder and drag-and-drop to https://app.netlify.com/drop; Netlify will host the site immediately.
- Better: connect the repository for continuous deploys. Netlify will detect the static site and publish automatically.

4) Vercel (easy Git deploy)
---------------------------
- Sign up at https://vercel.com and import your GitHub/GitLab repo. Vercel auto-deploys static sites.

5) Custom domain & HTTPS
------------------------
- GitHub Pages, Netlify and Vercel offer simple DNS/CNAME steps to add a custom domain and provide HTTPS.

6) If you want me to push for you
--------------------------------
- I can prepare the repository and a push script, but I cannot access your GitHub account. If you want, I can create a zip of the folder here for you to upload to Netlify.

Files included here to help deploy:
- `deploy-to-github.ps1` — PowerShell script to initialize git and push (you supply remote URL).
- `.gitignore` — ignores common files.

If you want, I can also:
- Rename `svs.html` to `index.html` and update internal links so the site opens directly.
- Create a small `404.html` page.
- Create the zip file for Netlify drag-and-drop.
