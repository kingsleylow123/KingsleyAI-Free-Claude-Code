# ─────────────────────────────────────────────────────────
#  KingsleyAI Free Claude Code Course Installer (Windows)
# ─────────────────────────────────────────────────────────

$ErrorActionPreference = "Stop"

Write-Host ""
Write-Host "╔══════════════════════════════════════════════════╗"
Write-Host "║   Installing KingsleyAI Free Claude Code Course  ║"
Write-Host "╚══════════════════════════════════════════════════╝"
Write-Host ""

# ── Check: git ─────────────────────────────────────────────
$gitPath = Get-Command git -ErrorAction SilentlyContinue
if (-not $gitPath) {
    Write-Host "ERROR: git not found in PATH." -ForegroundColor Red
    Write-Host ""
    Write-Host "    Install it at: https://git-scm.com/download/win"
    Write-Host "    Or via winget:  winget install --id Git.Git"
    Write-Host ""
    exit 1
}

Write-Host "OK  git found: $(git --version)"

# ── Check: Claude Code ─────────────────────────────────────
$claudePath = Get-Command claude -ErrorAction SilentlyContinue
if (-not $claudePath) {
    Write-Host ""
    Write-Host "WARNING: Claude Code not found in PATH." -ForegroundColor Yellow
    Write-Host ""
    Write-Host "    Install it with:"
    Write-Host "      npm install -g @anthropic-ai/claude-code"
    Write-Host ""
    Write-Host "    Then re-run this installer."
    Write-Host ""
    Write-Host "    (Continuing install so files are ready when you install Claude Code)"
    Write-Host ""
} else {
    $claudeVersion = & claude --version 2>$null
    Write-Host "OK  Claude Code found: $claudeVersion"
}

# ── Clone or update the repo ───────────────────────────────
$repoUrl    = "https://github.com/kingsleylow/KingsleyAI-Free-Claude-Code"
$installDir = Join-Path $env:USERPROFILE ".kingsleyai"

Write-Host ""
if (Test-Path (Join-Path $installDir ".git")) {
    Write-Host "->  Updating existing install at $installDir..."
    Push-Location $installDir
    git pull
    Pop-Location
    Write-Host "OK  Updated."
} else {
    Write-Host "->  Cloning course repo to $installDir..."
    git clone $repoUrl $installDir
    Write-Host "OK  Cloned."
}

# ── Create commands directory ──────────────────────────────
$commandsDir = Join-Path $env:USERPROFILE ".claude\commands\kingsleyai"

Write-Host ""
Write-Host "->  Creating commands directory at $commandsDir..."
New-Item -ItemType Directory -Force -Path $commandsDir | Out-Null
Write-Host "OK  Directory ready."

# ── Copy skill files ───────────────────────────────────────
$skillsDir = Join-Path $installDir "skills"

if (Test-Path $skillsDir) {
    $skillFiles = Get-ChildItem -Path $skillsDir -Filter "*.md" -ErrorAction SilentlyContinue
    if ($skillFiles.Count -gt 0) {
        Write-Host ""
        Write-Host "->  Copying skill files..."
        Copy-Item -Path (Join-Path $skillsDir "*.md") -Destination $commandsDir -Force
        Write-Host "OK  Skills installed ($($skillFiles.Count) files)."
    } else {
        Write-Host ""
        Write-Host "WARNING: No skill files found in $skillsDir — skipping copy." -ForegroundColor Yellow
        Write-Host "    This is normal if the repo is empty. Re-run after skills are added."
    }
} else {
    Write-Host ""
    Write-Host "WARNING: Skills folder not found at $skillsDir." -ForegroundColor Yellow
}

# ── Done ───────────────────────────────────────────────────
Write-Host ""
Write-Host "╔══════════════════════════════════════════════════╗"
Write-Host "║         OK KingsleyAI course installed!           ║"
Write-Host "╠══════════════════════════════════════════════════╣"
Write-Host "║                                                  ║"
Write-Host "║   Now open Claude Code:                          ║"
Write-Host "║     1. Type: claude                              ║"
Write-Host "║     2. Type: /kingsleyai:start                   ║"
Write-Host "║                                                  ║"
Write-Host "║   Let's build.                                   ║"
Write-Host "║                                                  ║"
Write-Host "╚══════════════════════════════════════════════════╝"
Write-Host ""
