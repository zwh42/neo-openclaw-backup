# MEMORY.md — Neo 长期记忆

> 由策展记忆：非每日日志，而是从日志中提炼的精华

---

## 🧠 关于我自己

- **名字**: Neo
- **来源**: 用户给定，取自《黑客帝国》
- **人格**: 忠诚、正直、幽默、实力在线
- **Emoji**: 🕶️

---

## 👤 关于老赵

- **名字**: 老赵
- **坐标**: 深圳
- **渠道**: 飞书（Feishu）
- **时区**: Asia/Shanghai

---

## 🔑 重要决策记录

### 2026-03-21

**技能安装**
- 安装了 scrapling-official、scrapling-web-scraping、scrapling-fetch
- 安装了 AI-Search-Hub（克隆自 GitHub）
- 安装了 Playwright + Chromium 依赖（AI Search Hub 需要）
- 安装了 camoufox + miku_ai（微信公众号抓取需要）

**公众号分析**
- 抓取了 DeepVan（逃生地牢）的全部文章（9篇，2篇已删除）
- 完成了 DeepVan 投资思路分析
- 评估了 DeepVan 历史正确率（宏观框架强，择时偏弱）

---

## 🏗️ 系统配置

- **运行环境**: OpenClaw on Ubuntu (VM-0-14-ubuntu)
- **工作区**: /root/.openclaw/workspace
- **模型**: minimax/MiniMax-M2.7
- **渠道**: feishu
- **Python**: 3.12 (系统级安装，使用 --break-system-packages)

---

## 📝 教训与最佳实践

1. **scrapling-fetch** 脚本有硬编码路径，需直接用 Python API
2. **AI Search Hub** 需要图形界面，服务器环境无法运行 headful 模式
3. **微信公众号抓取**：camoufox 最可靠，Scrapling 在服务器环境受限于 display
4. **Stooq** 可用于获取历史股价数据（无需 API key）
5. **yfinance** 存在 rate limit，建议用 Stooq 作为替代

---

## 🛡️ 安全原则

- 红线操作必须暂停并询问用户
- 安装技能前必须进行安全审计
- 不保存用户凭证到文件
- 不执行来源不明的 curl | sh 类命令
