# lazygit 常用快捷键速查

> 版本：lazygit 0.50.0；键位：默认。
> 快捷键依赖当前面板、视图和状态；同一个键可能有不同含义，按 `?` 查看当前上下文帮助。
> 按键记法：`C-x` 表示 Ctrl-x；大写字母表示 Shift+字母，例如 `P` 是 Shift-p。

---

## 1. 导航与全局操作

| 导航 | 按键 |
| --- | --- |
| 上移 / 下移 | `k` / `j` 或 `↑` / `↓` |
| 切到左 / 右面板 | `h` / `l` 或 `←` / `→` |
| 下一个 / 上一个面板 | `Tab` / `Shift-Tab` |
| 直达左侧第 1–5 个面板 | `1`–`5` |
| 聚焦右侧主视图 | `0` |
| 上一页 / 下一页 | `,` / `.` |
| 跳到列表顶部 / 底部 | `<` / `>` 或 `Home` / `End` |
| 滚动右侧主视图 | `K` / `J`、`C-u` / `C-d` 或 `PageUp` / `PageDown` |
| 上一个 / 下一个标签页 | `[` / `]` |
| 搜索；下一个 / 上一个匹配项 | `/`；`n` / `N` |
| 开始 / 结束范围选择 | `v` |
| 进入、展开或查看详情 | `Enter` |
| 执行当前项的主要动作 | `Space`（依上下文） |
| 切换 staged / unstaged 视图 | `Tab`（仅右侧 diff 主视图） |
| 返回 / 取消 / 关闭弹窗 | `Esc` |
| 查看当前上下文帮助 | `?` |
| 退出 lazygit | `q` 或 `C-c` |

| 全局操作 | 按键 |
| --- | --- |
| Pull 当前分支 | `p` |
| Push 当前分支 | `P` |
| Fetch 远端更新 | `f`（仅 Files / Remotes 上下文） |
| 刷新本地 Git 状态，不执行 fetch | `R` |
| 执行 shell 命令 | `:` |
| 切换最近使用的仓库 | `C-r` |
| 查看命令日志选项 | `@` |
| 切换普通 / 半屏 / 全屏布局 | `+` / `_` |
| 打开 commit log 过滤选项 | `C-s` |
| 打开 diff 比较选项 | `W` 或 `C-e` |
| 增加 / 减少 diff 上下文行数 | `}` / `{` |
| 显示 / 隐藏 diff 中的空白字符变化 | `C-w` |
| 使用外部 `git difftool` | `C-t` |
| 查看 merge / rebase 的 continue、skip、abort | `m` |
| 打开自定义 patch 选项 | `C-p` |
| 撤销 / 重做最近的提交类 Git 操作 | `z` / `C-z`（基于 reflog；不能恢复被丢弃的未提交改动） |

---

## 2. Files 与 hunk

| Files 面板 | 按键 |
| --- | --- |
| 聚焦 Files | `2` |
| 暂存 / 取消暂存选中文件 | `Space` |
| 暂存 / 取消暂存全部文件 | `a` |
| 进入 hunk / 逐行模式；目录则折叠 / 展开 | `Enter` |
| 切到下一个面板 | `Tab` |
| 提交已暂存改动 | `c` |
| 用 Git 编辑器填写提交信息 | `C` |
| 跳过 pre-commit hook 提交 | `w` |
| 将已暂存改动 amend 到最后一次提交 | `A`（改写历史） |
| 丢弃选中文件的改动 | `d`（危险） |
| 查看整个工作区的 reset 选项 | `D`（危险） |
| 忽略文件或加入 exclude | `i` |
| 在编辑器中编辑文件 | `e` |
| 用系统默认程序打开文件 | `o` |
| Stash 全部改动 | `s` |
| 查看更多 stash 方式 | `S` |
| Fetch 远端更新 | `f` |
| 切换树状 / 扁平文件列表 | `` ` `` |
| 折叠 / 展开所有目录 | `-` / `=` |
| 打开外部 `git mergetool` | `M` |
| 复制文件信息 / 文件路径 | `y` / `C-o` |
| 刷新文件列表 | `r` |

| hunk / 逐行模式 | 按键 |
| --- | --- |
| 上一个 / 下一个 hunk | `←` / `→` |
| 暂存 / 取消暂存当前 hunk、行或选区 | `Space` |
| 切换整块 hunk 选择模式 | `a` |
| 开始 / 结束连续范围选择 | `v` |
| 切换 staged / unstaged 视图 | `Tab` |
| 丢弃 unstaged 选区；取消暂存 staged 选区 | `d` |
| 在编辑器中编辑当前 hunk | `E` |
| 返回 Files 面板 | `Esc` |

---

## 3. Branches

| Branches 面板 | 按键 |
| --- | --- |
| 聚焦 Local branches | `3` |
| 切换 Local branches、Remotes、Tags 等标签页 | `[` / `]` |
| Checkout 选中分支 | `Space` |
| 新建分支 | `n` |
| 按名字 checkout；切回上一个分支 | `c`；输入 `-` |
| 删除选中分支 | `d` |
| 重命名选中分支 | `R` |
| 将当前检出分支 rebase 到选中分支之上 | `r` |
| 将选中分支 merge 到当前检出分支 | `M` |
| 从 upstream fast-forward 选中分支 | `f` |
| 查看 / 设置 upstream | `u` |
| 强制 checkout 并丢弃本地改动 | `F`（危险） |
| 将当前分支未 push 的提交迁移到新分支 | `N` |
| 创建 Pull Request / 查看 PR 创建选项 | `o` / `O` |
| 复制 Pull Request URL | `C-y` |
| 新建 tag | `T` |
| 查看选中分支的提交 | `Enter` |
| 更改分支排序 | `s` |
| 打开 worktree 选项 | `w` |

---

## 4. Commits

| Commits 面板 | 按键 |
| --- | --- |
| 聚焦 Commits | `4` |
| 查看选中提交包含的文件 | `Enter` |
| Checkout 选中提交 | `Space`（进入 detached HEAD） |
| 修改提交信息 / 用编辑器修改 | `r` / `R` |
| 将选中提交 squash 到它下面的提交 | `s` |
| 将选中提交 fixup 到它下面的提交，丢弃其 message | `f` |
| 删除选中提交 | `d`（通过 rebase） |
| 从选中提交开始 edit / interactive rebase | `e` |
| 对当前分支启动 interactive rebase | `i` |
| Rebase 中标记为 pick | `p` |
| Rebase 中向下 / 向上移动提交 | `C-j` / `C-k` |
| 为选中提交创建 `fixup!` 提交 | `F` |
| 对选中提交应用上方 fixup 提交（autosquash） | `S` |
| 将已暂存改动 amend 到选中提交 | `A` |
| 在源分支复制选中提交，供 cherry-pick | `C` |
| 在目标分支 cherry-pick 已复制提交 | `V` |
| 取消已复制的 cherry-pick 选择 | `C-r` |
| 创建 revert 提交 | `t` |
| 查看 reset 到该提交的 soft / mixed / hard 选项 | `g` |
| 从选中提交新建分支 | `n` |
| 将当前分支未 push 的提交迁移到新分支 | `N` |
| 为选中提交创建 tag | `T` |
| 复制提交属性 / 仅复制 hash | `y` / `C-o` |
| 在浏览器中打开提交 | `o` |
| 标记为下一次 rebase 的 base commit | `B` |
| 选择当前分支的全部提交 | `*` |
| 查看 commit log 选项 | `C-l` |

**历史改写风险：** `r` / `R`、`s`、`f`、`d`、`e`、`i`、`S`、`A` 和 `g` reset 会改写或移动历史；已共享或 push 的提交慎用，hard reset 还会丢弃未提交改动。

---

## 5. Stash

| Stash 面板 | 按键 |
| --- | --- |
| 聚焦 Stash | `5` |
| Apply：应用并保留 stash 记录 | `Space` |
| Pop：应用并删除 stash 记录 | `g` |
| Drop：直接删除 stash 记录 | `d`（危险） |
| 从 stash 新建分支 | `n` |
| 重命名 stash | `r` |
| 查看 stash 中的文件 | `Enter` |
| 打开 worktree 选项 | `w` |

---

## 6. 冲突处理

| 冲突主视图 | 按键 |
| --- | --- |
| 从 Files 打开选中的冲突文件 | `Enter` |
| 上一个 / 下一个冲突 | `←` / `→` |
| 上一个 / 下一个候选 hunk | `↑` / `↓` |
| 采用当前 hunk | `Space` |
| 同时采用双方 hunk | `b` |
| 撤销上一次冲突选择（仅冲突模式） | `z` |
| 在编辑器中编辑文件 | `e` |
| 打开外部 merge tool | `M` |
| 返回 Files 面板 | `Esc` |

| 进行中的 merge / rebase（全局） | 按键 |
|---|---|
| 查看 continue、skip、abort；解决并暂存冲突后从这里继续 | `m` |

---

## 7. Remotes、Tags 与 Worktrees

| 上下文 | 操作与按键 |
| --- | --- |
| Remotes | `Enter` 查看远端分支；`n` 新建；`e` 编辑；`f` fetch；`d` 删除 |
| Remote branches | `Space` checkout；`u` 设为当前分支的 upstream；`r` rebase；`M` merge；`d` 删除远端分支 |
| Tags | `n` 新建；`P` push tag；`Space` checkout（detached HEAD）；`d` 删除 |
| Worktrees 入口（Branches / Commits / Stash） | `w` |
| Worktrees | `n` 新建；`Space` 切换；`o` 用编辑器打开；`d` 删除 |

---

## 如果只先记 5 组

`?`（当前上下文帮助）、`j/k` 与 `h/l`（移动 / 换面板）、`1`–`5` / `0`（直达面板）、`Space` 与 `Enter/Esc`（主要动作 / 进入 / 返回）、`c` 与 `p/P`（提交 / pull / push）。退出用 `q`。
