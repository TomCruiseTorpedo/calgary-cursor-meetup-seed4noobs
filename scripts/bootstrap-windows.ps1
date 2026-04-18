# Bootstrap script for fresh Windows dev environment.
# Idempotent — safe to re-run. Each tool is only installed if missing.
# Run in PowerShell as Administrator.
#Requires -RunAsAdministrator

$ErrorActionPreference = "Stop"

function Info    { param($msg) Write-Host "==> $msg" -ForegroundColor Cyan }
function Success { param($msg) Write-Host "[OK] $msg" -ForegroundColor Green }
function Warn    { param($msg) Write-Host "[!]  $msg" -ForegroundColor Yellow }

# Refresh PATH so newly installed tools are visible without restarting
function Refresh-Path {
    $env:PATH = [System.Environment]::GetEnvironmentVariable("PATH", "Machine") + ";" +
                [System.Environment]::GetEnvironmentVariable("PATH", "User")
}

# --- Step 0: winget ---
if (-not (Get-Command winget -ErrorAction SilentlyContinue)) {
    Warn "winget not found."
    Warn "Install it from the Microsoft Store: https://aka.ms/getwinget"
    Warn "Then re-run this script."
    exit 1
}
Success "winget $(winget --version)"

# --- Step 1: Git ---
if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
    Info "Installing Git..."
    winget install --id Git.Git -e --source winget --accept-package-agreements --accept-source-agreements
    Refresh-Path
}
Success "$(git --version)"

# --- Step 2: Node.js LTS ---
if (-not (Get-Command node -ErrorAction SilentlyContinue)) {
    Info "Installing Node.js LTS..."
    winget install --id OpenJS.NodeJS.LTS -e --source winget --accept-package-agreements --accept-source-agreements
    Refresh-Path
}
Success "Node $(node --version) / npm $(npm --version)"

# --- Step 3: Python ---
if (-not (Get-Command python -ErrorAction SilentlyContinue)) {
    Info "Installing Python 3.12..."
    # winget installs Python with PATH already set — no checkbox required
    winget install --id Python.Python.3.12 -e --source winget --accept-package-agreements --accept-source-agreements
    Refresh-Path
}
Success "$(python --version)"

# --- Step 4: GitHub CLI ---
if (-not (Get-Command gh -ErrorAction SilentlyContinue)) {
    Info "Installing GitHub CLI..."
    winget install --id GitHub.cli -e --source winget --accept-package-agreements --accept-source-agreements
    Refresh-Path
}
Success "GitHub CLI $(gh --version | Select-Object -First 1)"

# --- Step 5: PowerShell execution policy ---
$policy = Get-ExecutionPolicy -Scope CurrentUser
if ($policy -eq "Restricted" -or $policy -eq "Undefined") {
    Info "Setting PowerShell execution policy to RemoteSigned..."
    Set-ExecutionPolicy RemoteSigned -Scope CurrentUser -Force
}
Success "Execution policy: $(Get-ExecutionPolicy -Scope CurrentUser)"

# --- Step 6: Git identity ---
$gitName  = git config --global user.name  2>$null
$gitEmail = git config --global user.email 2>$null

if (-not $gitName) {
    Write-Host ""
    $gitName = Read-Host "Enter your full name for Git commits"
    git config --global user.name $gitName
}
if (-not $gitEmail) {
    $gitEmail = Read-Host "Enter your email for Git commits"
    git config --global user.email $gitEmail
}
Success "Git identity: $gitName <$gitEmail>"

# --- Step 7: SSH key (ed25519) ---
$sshKey = "$env:USERPROFILE\.ssh\id_ed25519"
if (-not (Test-Path $sshKey)) {
    Info "Generating SSH key (ed25519)..."
    New-Item -ItemType Directory -Force -Path "$env:USERPROFILE\.ssh" | Out-Null
    ssh-keygen -t ed25519 -C $gitEmail -f $sshKey -N '""'

    # Enable and start the ssh-agent service (disabled by default on Windows)
    Set-Service ssh-agent -StartupType Automatic
    Start-Service ssh-agent
    ssh-add $sshKey
}
Success "SSH key: $sshKey"

# --- Done ---
Write-Host ""
Write-Host "============================================" -ForegroundColor Green
Write-Host "  All tools installed successfully!        " -ForegroundColor Green
Write-Host "============================================" -ForegroundColor Green
Write-Host ""
Write-Host "  Git:    $(git --version)"
Write-Host "  Node:   $(node --version)"
Write-Host "  npm:    $(npm --version)"
Write-Host "  Python: $(python --version)"
Write-Host "  gh:     $(gh --version | Select-Object -First 1)"
Write-Host ""
Write-Host "Next steps:" -ForegroundColor Yellow
Write-Host ""
Write-Host "  1. Add your SSH public key to GitHub:"
Write-Host "     -> Copy it:  Get-Content $sshKey.pub | Set-Clipboard"
Write-Host "     -> Paste at: https://github.com/settings/ssh/new"
Write-Host ""
Write-Host "  2. Connect GitHub CLI:  gh auth login"
Write-Host ""
Write-Host "  3. Open Cursor: https://www.cursor.com"
