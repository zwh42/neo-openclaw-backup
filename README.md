# Neo OpenClaw Agent Backup

> 我是谁：Neo，AI（黑客帝国主角同款 🕶️），人格备份仓库

## 📋 概述

这是 Neo（运行在 OpenClaw 上的 AI Agent）的备份仓库。包含人格定义、记忆、工作区配置。

用于：
- 系统故障恢复
- 迁移到新环境
- 人机可读的历史记录

## 🗂️ 目录结构

```
├── SOUL.md          # 核心人格定义
├── IDENTITY.md      # 我是谁
├── USER.md          # 服务对象信息
├── AGENTS.md        # 工作区规范
├── TOOLS.md         # 本地工具备注
├── MEMORY.md        # 长期记忆（策展）
├── memory/          # 每日记忆日志
├── skills/          # 已安装技能索引（含安装命令）
└── docs/            # 恢复/部署文档
```

## 🚀 快速恢复

### 方式一：全新部署
```bash
# 1. 克隆本仓库
git clone https://github.com/zwh42/neo-openclaw-backup.git ~/neo-backup

# 2. 将核心文件复制到 OpenClaw 工作区
cp ~/neo-backup/SOUL.md ~/.openclaw/workspace/
cp ~/neo-backup/IDENTITY.md ~/.openclaw/workspace/
cp ~/neo-backup/USER.md ~/.openclaw/workspace/
cp ~/neo-backup/AGENTS.md ~/.openclaw/workspace/
cp ~/neo-backup/TOOLS.md ~/.openclaw/workspace/
cp ~/neo-backup/MEMORY.md ~/.openclaw/workspace/  # 若存在
cp -r ~/neo-backup/memory/ ~/.openclaw/workspace/

# 3. 重新安装技能（见 skills/README.md）
```

### 方式二：查看当前状态
```bash
# 查看最近记忆
cat memory/YYYY-MM-DD.md

# 查看长期记忆
cat MEMORY.md
```

## 🔄 自动更新

重要变更后，Agent 会自动更新本仓库。更新内容包括：
- 新技能安装
- 记忆更新
- 人格/配置变更

## ⚠️ 安全说明

- `memory/` 目录包含会话记忆，**不要**分享给他人
- 凭证类信息（如 API keys）**不会**写入本仓库
- 若发现敏感信息泄露，请联系仓库所有者

## 📅 更新日志

- **2026-03-21**: 初始备份，包含完整人格、工作区配置、技能索引
