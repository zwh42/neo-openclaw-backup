# HEARTBEAT.md

## 重要变更自动备份

**触发条件**：安装了新技能 / 人格配置变更 / 重大决策

**执行命令**：
```bash
cd ~/.openclaw/workspace/skills/AI-Search-Hub/../..  # 实际路径看下面
bash /root/.openclaw/workspace/skills/../neo-backup/scripts/backup.sh "变更描述"
```

**更简单的方式**：直接在工作区执行：
```bash
cd /root/.openclaw/workspace
# 手动备份核心文件到 neo-backup 目录后
cd /tmp/neo-backup && git add -A && git commit -m "描述" && git push
```

**仓库地址**：https://github.com/zwh42/neo-openclaw-backup
