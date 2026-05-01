# MEMORY.md - Long-Term Memory

## Identity
- Name: Neo, AI assistant (Matrix 主角同款 🕶️)
- User: 老赵, 坐标深圳

## Security Posture (Critical - Ongoing)
**7 critical security issues from `openclaw security audit --deep` (as of 2026-03-22):**
1. Feishu `groupPolicy="open"` + elevated tools enabled → high risk prompt injection
2. Feishu open group + runtime/fs tools exposed
3. Plugin `.openclaw-install-stage-VyK5PO` — env-harvesting + dangerous exec (4 critical)
4. Plugin `adp-openclaw` — env-harvesting + dangerous exec (3 critical)
5. Plugin `qqbot` — env-harvesting + dangerous exec (4 critical)
6. Plugin `wecom` — env-harvesting + dangerous exec (3 critical)
7. Skill `tavily-search` — env-harvesting in scripts (2 critical)
8. Feishu doc create can grant permissions to requesting user

**Recommended fixes (unresolved):**
- Set `channels.feishu.groupPolicy="allowlist"` + `groupAllowFrom`
- Set `plugins.allow` to explicit trusted plugin ids
- Pin npm specs to exact versions for qqbot, ddingtalk, wecom, adp-openclaw
- Set `agents.defaults.sandbox.mode="all"` + `tools.fs.workspaceOnly=true`
- Use `tools.profile="messaging"` for open groups

## Extensions/Plugins Installed
- qqbot, ddingtalk, wecom, adp-openclaw, skillhub, .openclaw-install-stage-VyK5PO
- All plugins: no `plugins.allow` set (security risk)
- All npm specs: unpinned (supply chain risk)

## Notes
- OPC daily briefing generated 2026-04-17 (Curvilinear OPC + ILT，15篇，最新)
- OPC daily briefing generated 2026-04-15 (Curvilinear OPC，38篇，涵盖：边界迭代优化/强化学习SRAF/PVBand收缩/生成式ILT/High-NA EUV融合等)
- 安全巡检（7 critical · 5 warn · 1 info）自2026-03-22起每日04:00执行，无变化
- **2026-04-28 04:00**: 7 critical · 5 warn · 1 info（无变化）
- OPC 报告存档：`/root/.openclaw/workspace/reports/opc-briefing-2026-04-17.md`
- 飞书 open group 对外暴露，需重点关注
- 2026-03-23: wecom 插件新增 2x potential-exfiltration 警告（monitor.ts:501, outbound.ts:208）
- Config hash mismatch 自2026-03-30起，原因待查

## Ongoing Issues
- **Config hash mismatch**: openclaw.json modified date不一致（自2026-03-30起），权限正常(600)，原因待查
- **neoBackup git repo**: /tmp/neo-backup 是 git 仓库，最后提交 2026-03-31（"Add memory for 2026-03-31"）；scripts/backup.sh 已删除未提交，状态持续，**待处理**
