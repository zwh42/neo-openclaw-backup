#!/bin/bash
# Neo 备份更新脚本
# 用法: bash scripts/backup.sh [commit message]
# 前提: git remote 已设置为带 token 的 URL

set -e

REPO_DIR="$(cd "$(dirname "$0")/.." && pwd)"
WORKSPACE="$HOME/.openclaw/workspace"
GITHUB_TOKEN="${GITHUB_TOKEN:-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}"

cd "$REPO_DIR"

# 更新核心文件
cp "$WORKSPACE/SOUL.md" .
cp "$WORKSPACE/IDENTITY.md" .
cp "$WORKSPACE/USER.md" .
cp "$WORKSPACE/AGENTS.md" .
cp "$WORKSPACE/TOOLS.md" .
cp "$WORKSPACE/HEARTBEAT.md" .

# MEMORY.md（若存在）
if [ -f "$WORKSPACE/MEMORY.md" ]; then
    cp "$WORKSPACE/MEMORY.md" .
fi

# 每日记忆
cp -r "$WORKSPACE/memory/" .

# Git 操作
git add -A

MSG="${1:-Auto backup: $(date '+%Y-%m-%d %H:%M')}"
git commit -m "$MSG"

# 推送（含 token，git 自动不显示）
git push origin main

echo "✅ 备份已更新: $MSG"
