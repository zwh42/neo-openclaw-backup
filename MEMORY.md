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
6. Skill `tavily-search` — env-harvesting in scripts (2 critical)
7. Feishu doc create can grant permissions to requesting user

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
- OPC daily briefing generated 2026-03-22
- 飞书 open group 对外暴露，需重点关注
