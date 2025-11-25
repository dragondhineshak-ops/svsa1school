<#
Usage: .\deploy-to-github.ps1 <git-remote-url>
Example: .\deploy-to-github.ps1 https://github.com/yourname/yourrepo.git

This script initializes git (if needed), commits all files, and pushes to the remote `main` branch.
You will be prompted for credentials by Git when pushing (or use SSH keys).
#>

param(
  [Parameter(Mandatory=$true)][string]$RemoteUrl
)

Write-Host "Deploy helper: will push current folder to remote $RemoteUrl" -ForegroundColor Cyan

if(-not (Test-Path .git)){
  git init
}

git checkout -B main
git add --all
try{
  git commit -m "Deploy: initial commit" -q
}catch{
  Write-Host "No changes to commit or commit failed; continuing." -ForegroundColor Yellow
}

if((git remote) -notcontains 'origin'){
  git remote add origin $RemoteUrl
} else {
  git remote set-url origin $RemoteUrl
}

Write-Host "Pushing to origin main..." -ForegroundColor Green
git push -u origin main

Write-Host "Done. If push fails, ensure the remote URL is correct and you have authentication set up." -ForegroundColor Cyan
