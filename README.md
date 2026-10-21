# Lai Jiang — Academic Homepage

基于官方 [Academic Pages](https://github.com/academicpages/academicpages.github.io)，保留原版主题、响应式侧栏、论文列表和 CV 功能。页面以英文为主。

来源版本：`7b958332ce9970cfb6987a049d7684ac615397e8`。上游许可保留在 `LICENSE`，原始说明在 `README-UPSTREAM.md`。

## 当前状态

- 已配置主页地址 `https://laijiang7.github.io`，目标仓库 `LaiJiang7/laijiang7.github.io`。
- 首页采用单页结构，顶部 About、News、Education、Experience、Publications、Service、Contact 导航滚动到本页对应章节。
- 已填写 Lai Jiang、UCL 电子与电气工程系、PhD student、ISAC 研究方向及联系邮箱。
- 已根据这些资料填写简短英文介绍；详细简介、论文、照片和其他经历可后续自行补充。
- 模板示例已移至 `template-examples/`，从网站构建中排除。
- 自动发布流程支持 `master` 和 `main` 分支。
- 尚未连接个人 GitHub 仓库，尚未发布此版本。
- 已完成本地 Jekyll 构建，检查所有导航页面与静态资源，并验证 Markdown 修改后自动重新生成以及 LiveReload 服务。

## 填写个人资料

| 内容 | 文件 |
| --- | --- |
| 姓名、学校、邮箱和学术链接 | `_config.yml` |
| 个人介绍 | `_pages/about.md` |
| 新闻动态 | `_pages/news.md` |
| 教育经历、年份和学校标识 | `_data/education.yml` |
| 工作经历 | `_data/experience.yml` |
| 审稿和 TPC 经历 | `_pages/service.md` |
| 研究方向 | `_pages/research.md` |
| 简历 | `_pages/cv.md` |
| 每篇论文 | `_publications/` 下的 Markdown 文件 |
| 照片 | `images/profile.png`，或修改 `author.avatar` |
| 论文全文、简历等附件 | `files/` |
| 顶部导航 | `_data/navigation.yml` |

首页的个人简介直接写在 `_pages/about.md`。Publications 和 Contact 章节分别读取 `_pages/publications.html` 和 `_pages/contact.md` 的内容；保存这些文件后，首页对应章节也会更新。具体论文仍放在 `_publications/` 中。

CV 暂不显示在顶部导航或首页。准备好 CV 文件后，可以在照片下方添加链接。

News 位于个人简介和 Education 之间，内容写在 `_pages/news.md` 的第二个 `---` 下方，建议按时间从新到旧排列，保存后会同步更新首页。

Education 展示三所学校的标识、学位和年份；工作经历放在其后的 Industry Experience。学校标识保存在 `images/education/`，来源记录见该目录的 `SOURCES.md`。编辑 `_data/education.yml` 和 `_data/experience.yml` 后保存，首页内容会自动更新。

Service 的审稿和 TPC 经历写在 `_pages/service.md`，保存后会同步更新首页对应章节。

顶部导航使用 `/#about`、`/#news`、`/#education`、`/#experience`、`/#publications`、`/#service` 和 `/#contact` 锚点。首页会平滑滚动到对应章节，并为固定导航留出空间；浏览器设置为减少动态效果时，使用直接跳转。

## 添加论文

每篇论文在 `_publications/` 下创建一个 Markdown 文件。列表以紧凑卡片显示标题、作者和会议/期刊标签，并自动加粗与 `_config.yml` 中姓名一致的作者。

```yaml
---
title: "Your paper title"
collection: publications
category: conferences
date: 2025-07-07
venue: "Full conference or journal name"
authors:
  - "Lai Jiang"
  - "Coauthor Name"
---
```

以上为填写格式示例，请使用真实的标题、作者、发表日期和会议/期刊名称。`venue` 填会议或期刊全称，卡片统一显示全称，年份根据 `date` 自动显示。无需填写 `venue_short`，已有的该字段也不会影响显示。期刊论文可使用 `category: manuscripts`。

可选字段 `paperurl`、`codeurl`、`bibtexurl` 分别提供 PDF、代码和 BibTeX 链接；没有时省略即可。列表按发表日期从新到旧排序。第一篇论文的作者信息与 PDF 链接已根据 [UCL Discovery 记录](https://discovery.ucl.ac.uk/id/eprint/10219243/) 补充。

## 发布到 GitHub Pages

1. 在 `LaiJiang7` 账号下创建 `laijiang7.github.io` 仓库。如果已存在同名仓库，先检查内容，避免覆盖。
2. 将本项目文件放入仓库根目录，包括 `.github/`、`.gitignore` 等隐藏目录，保留 `LICENSE`。源码压缩包已排除本地 `.git` 历史，也可从官方模板创建仓库后应用本地修改。
3. 打开仓库 **Settings → Pages → Build and deployment → Source**，选择 **GitHub Actions**。
4. 将文件提交到 `master` 或 `main` 分支；检查 Actions 中的 **Deploy academic homepage to GitHub Pages**。
5. 发布成功后，访问 `https://laijiang7.github.io`。

网站地址已配置；如果改用其他仓库名或自定义域名，需要同步更新 `_config.yml` 中的 `url`、`baseurl` 和 `repository`。

## 边修改边预览

在 VS Code 终端中运行：

```powershell
cd "D:\EEE PhD\VSCode_Projects\academic-pages"
.\preview.cmd
```

然后在浏览器打开 `http://127.0.0.1:4000`，将浏览器和编辑器并排放置。预览期间保持终端运行。

- 修改 `_pages/about.md`、研究介绍、论文 Markdown 或样式后，保存文件即可自动重新生成并刷新页面。
- 修改 `_config.yml` 后，在终端按 `Ctrl+C` 停止预览，再次运行 `.\preview.cmd`。
- 完成编辑后，在终端按 `Ctrl+C` 停止预览；命令提示是否终止批处理时，输入 `Y` 并回车。
- 本地预览中的修改会保存在项目文件中，网站上线需另行推送到 GitHub。

启动脚本优先使用 `%LOCALAPPDATA%\AcademicPagesRuby33` 下的专用 Ruby+Devkit，并在当前终端设置所需路径。首次缺少依赖时会执行安装。

## 手动启动（其他已安装 Ruby 和 Bundler 的电脑）

```text
bundle config set --local path vendor/bundle
bundle install
bundle exec jekyll serve --livereload --host 127.0.0.1
```

打开 `http://127.0.0.1:4000`。修改 `_config.yml` 后需要重启预览。

模板示例论文位于 `template-examples/_publications/`。复制一篇到 `_publications/` 后，将标题、日期、作者、会议/期刊和链接替换为真实资料。
