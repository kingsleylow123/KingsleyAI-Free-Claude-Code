#!/usr/bin/env bash
set -e

# ─────────────────────────────────────────────
#  Kingsley Low AI Free Claude Code Course Installer
#  No Git required. Uses curl to download files.
# ─────────────────────────────────────────────

REPO_RAW="https://raw.githubusercontent.com/kingsleylow123/KingsleyAI-Free-Claude-Code/main"
COMMANDS_DIR="$HOME/.claude/commands/kingsleyai"

echo ""
echo "╔══════════════════════════════════════════════════╗"
echo "║   Installing Kingsley Low AI Free Claude Course  ║"
echo "╚══════════════════════════════════════════════════╝"
echo ""

# ── Check: curl ───────────────────────────────
if ! command -v curl &>/dev/null; then
  echo "❌  curl not found. Please install curl and try again."
  exit 1
fi
echo "✓  curl found"

# ── Create commands directory ─────────────────
echo ""
echo "→  Creating commands directory at $COMMANDS_DIR..."
mkdir -p "$COMMANDS_DIR"
echo "✓  Directory ready."

# ── Download skill files directly via curl ────
echo ""
echo "→  Downloading course skills..."

SKILLS=(
  "start"
  "lesson-1"
  "lesson-2"
  "lesson-3"
  "lesson-4"
  "lesson-5"
  "lesson-6"
  "summarize"
  "repurpose"
  "mcp-builder"
)

for skill in "${SKILLS[@]}"; do
  curl -fsSL "$REPO_RAW/skills/${skill}.md" -o "$COMMANDS_DIR/${skill}.md" 2>/dev/null && \
    echo "  ✓  ${skill}.md" || \
    echo "  ⚠️  Could not download ${skill}.md — skipping"
done

echo ""
echo "✓  Skills installed."

# ── Done ──────────────────────────────────────
echo ""
echo "╔══════════════════════════════════════════════════╗"
echo "║      ✅ Kingsley Low AI course installed!         ║"
echo "╠══════════════════════════════════════════════════╣"
echo "║                                                  ║"
echo "║   Type /kingsleyai:start to begin 🔥             ║"
echo "║                                                  ║"
echo "╚══════════════════════════════════════════════════╝"
echo ""
