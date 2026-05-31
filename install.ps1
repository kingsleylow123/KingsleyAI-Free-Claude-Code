# ─────────────────────────────────────────────────────────
#  Kingsley Low AI Free Claude Code Course Installer (Windows)
#  No Git required. Downloads files directly.
# ─────────────────────────────────────────────────────────

$ErrorActionPreference = "Stop"

$repoRaw     = "https://raw.githubusercontent.com/kingsleylow123/KingsleyAI-Free-Claude-Code/main"
$commandsDir = Join-Path $env:USERPROFILE ".claude\commands\kingsleyai"

Write-Host ""
Write-Host "============================================="
Write-Host "  Installing Kingsley Low AI Free Claude Course"
Write-Host "============================================="
Write-Host ""

# Create commands directory
Write-Host "->  Creating commands directory at $commandsDir..."
New-Item -ItemType Directory -Force -Path $commandsDir | Out-Null
Write-Host "OK  Directory ready."

# Download skill files directly
Write-Host ""
Write-Host "->  Downloading course skills..."

$skills = @(
  "start","lesson-1","lesson-2","lesson-3","lesson-4",
  "lesson-5","lesson-6","summarize","repurpose","mcp-builder"
)

foreach ($skill in $skills) {
  try {
    Invoke-WebRequest -Uri "$repoRaw/skills/$skill.md" `
      -OutFile (Join-Path $commandsDir "$skill.md") -UseBasicParsing
    Write-Host "  OK  $skill.md"
  } catch {
    Write-Host "  WARNING: Could not download $skill.md - skipping" -ForegroundColor Yellow
  }
}

Write-Host ""
Write-Host "OK  Skills installed."
Write-Host ""
Write-Host "============================================="
Write-Host "      Kingsley Low AI course installed!"
Write-Host "============================================="
Write-Host ""
Write-Host "   Type /kingsleyai:start to begin"
Write-Host ""
