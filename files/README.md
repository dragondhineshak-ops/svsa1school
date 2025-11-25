Place your prospectus PDF in this folder so the site can serve it directly.

Filename required: `prospectus.pdf`

How to use:
- Put your PDF at `c:\Users\kanag\OneDrive\Desktop\html1\files\prospectus.pdf`.
- Start a local server (see below) and open `svs.html`.
- If the PDF is present the page will show a "Download prospectus" button.

Test with Python HTTP server (PowerShell):
```powershell
cd 'C:\Users\kanag\OneDrive\Desktop\html1'
python -m http.server 8000
```
Open http://localhost:8000/svs.html

If you want, I can copy an existing PDF from your workspace into this folder — tell me which file to use.
