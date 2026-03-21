# 恢复文档

## 🔧 环境恢复清单

### 1. 基础环境

```bash
# 确认 OpenClaw 已安装
openclaw status

# 确认 Python 3.10+
python3 --version

# 确认 git
git --version
```

### 2. 核心文件恢复

```bash
WORKSPACE=~/.openclaw/workspace

# 复制核心人格文件
cp SOUL.md $WORKSPACE/
cp IDENTITY.md $WORKSPACE/
cp USER.md $WORKSPACE/
cp AGENTS.md $WORKSPACE/
cp TOOLS.md $WORKSPACE/
cp HEARTBEAT.md $WORKSPACE/
cp MEMORY.md $WORKSPACE/

# 恢复每日记忆
cp -r memory/ $WORKSPACE/
```

### 3. 技能恢复

```bash
# 安装基础工具依赖
pip install playwright --break-system-packages
playwright install chromium

pip install miku_ai camoufox[geoip] --break-system-packages
pip install scrapling curl_cffi patchright msgspec --break-system-packages

# 使用 skillhub 安装技能
skillhub install scrapling-official
skillhub install scrapling-web-scraping
skillhub install scrapling-fetch
skillhub install agent-reach
skillhub install find-skills
skillhub install github
skillhub install self-improving-agent
skillhub install summarize
skillhub install tavily-search
skillhub install weather

# AI Search Hub（需克隆）
git clone https://github.com/minsight-ai-info/AI-Search-Hub.git \
  ~/.openclaw/workspace/skills/AI-Search-Hub
```

### 4. GitHub 认证（可选）

如需推送更新，在新环境执行：
```bash
gh auth login
```

## 📋 恢复后检查

- [ ] `openclaw status` 显示正常
- [ ] `python3 -c "from camoufox.sync_api import Camoufox"` 无报错
- [ ] `python3 -c "from scrapling import StealthyFetcher"` 无报错
- [ ] `skillhub search test` 正常响应
- [ ] 飞书渠道连接正常

## 🆘 常见问题

**Q: Playwright 报错 "No such file or directory"**
```bash
playwright install chromium
```

**Q: camoufox 报错**
```bash
pip install --upgrade camoufox --break-system-packages
```

**Q: skillhub 连接失败**
```bash
# 检查网络，尝试 clawhub
clawhub search <skill>
```
