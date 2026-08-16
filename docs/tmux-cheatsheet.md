# tmux 常用命令速查（oh-my-tmux 环境）

> 本机环境：tmux 3.5a + oh-my-tmux，**前缀键 = `C-b` 或 `C-a`**，copy mode 为 **emacs** 风格，鼠标已开启。
> 下面 `<prefix> X` 表示：先按前缀键，松开，再按 X。按键均为本机实际生效值（部分与通用教程不同）。
>
> 三层结构：`session（会话）` ⊃ `window（窗口，像标签页）` ⊃ `pane（面板，分屏）`。

---

## 1. 会话 Session —— 断开不丢，进程后台继续跑

| 操作 | 按键 |
| --- | --- |
| 断开当前会话（进程继续跑） | `<prefix> d` |
| 列出/切换会话（树状选择） | `<prefix> s` |
| 上一个 / 下一个会话 | `<prefix> (` / `<prefix> )` |
| 切回上次的会话 | `<prefix> BTab`（Shift-Tab） |
| 新建会话 | `<prefix> C-c` |
| 重命名会话 | `<prefix> $` |
| 按名字查找并跳转 | `<prefix> C-f` |

命令行侧（tmux 外部使用，注意本机 zsh 有 tmux 别名，用 `\tmux` 或 `command tmux` 走真正二进制）：

```bash
mux new -s 名字          # 新建命名会话
mux ls                   # 列出所有会话
mux a -t 名字            # attach 接回会话
mux kill-session -t 名字 # 关闭指定会话
```

zsh tmux 插件自带别名：`ts`=new-session、`ta`=attach、`tl`=list-sessions、`to`=new-session -A、`tksv`=kill-server。

---

## 2. 窗口 Window —— 像标签页

| 操作 | 按键 |
| --- | --- |
| 新建窗口 | `<prefix> c` |
| 按编号跳转 | `<prefix> 0`–`9` |
| 上一个 / 下一个窗口 | `<prefix> C-h` / `<prefix> C-l`（oh-my-tmux 特色） |
| 切回上次窗口 | `<prefix> Tab` |
| 重命名窗口 | `<prefix> ,` |
| 窗口列表选择 | `<prefix> w` |
| 按名字查找窗口 | `<prefix> f` |
| 关闭窗口（确认） | `<prefix> &` |
| 左移 / 右移窗口位置 | `<prefix> C-S-h` / `<prefix> C-S-l` |

> 窗口名总变回程序名（如 `claude`）是因为 `automatic-rename on`；手动 `<prefix> ,` 改名后该窗口即固定。
> 想彻底关闭自动改名：在 `~/.config/tmux/tmux.conf.local` 加 `set -g automatic-rename off`，再 `<prefix> r` 重载。

---

## 3. 面板 Pane —— 一个窗口里分屏

| 操作 | 按键 |
| --- | --- |
| 上下分屏 | `<prefix> -` |
| 左右分屏 | `<prefix> _`（`%` 也行） |
| 在面板间移动 | `<prefix> h/j/k/l` 或方向键 |
| 调整大小（2 格 / 5 格） | `<prefix> H/J/K/L` / `<prefix> M-方向键` |
| 最大化/还原当前面板（超常用） | `<prefix> z` |
| 显示面板编号（可按号跳转） | `<prefix> q` |
| 关闭面板（确认） | `<prefix> x` |
| 把面板拆成独立窗口 | `<prefix> !` |
| 交换面板位置 | `<prefix> {` / `<prefix> }` |
| 循环切换布局 | `<prefix> Space` |
| 预设布局（平铺/主次等） | `<prefix> M-1` … `<prefix> M-7` |

> 分屏后新面板保留当前目录（本机 `retain_current_path=true`）。

---

## 4. 复制 / 回滚 Copy Mode —— 翻历史、复制文本

进入：`<prefix> [`（或 `<prefix> Enter`）。鼠标已开，**滚轮上翻、拖拽选中即复制**最省事。

键盘为 **emacs 风格**：

| 在 copy mode 里 | 键 |
| --- | --- |
| 开始选择 | `C-Space` |
| 复制并退出 | `M-w` 或 `Enter` |
| 向上翻页 | `PageUp` / `M-v` |
| 搜索（后 / 前） | `C-r` / `C-s` |
| 退出 | `q` 或 `Escape` |

| copy mode 外 | 键 |
| --- | --- |
| 粘贴 | `<prefix> ]` |
| 缓冲区存入系统剪贴板 | `<prefix> y`（需 `xclip`） |
| 列出/选择缓冲区 | `<prefix> #` / `<prefix> =` |

---

## 5. 其他实用功能

| 操作 | 按键 |
| --- | --- |
| 命令行模式（输入 tmux 命令） | `<prefix> :` |
| 查看所有快捷键（帮助） | `<prefix> ?` |
| 查某个键做什么 | `<prefix> /` |
| 交互式设置菜单 | `<prefix> C` |
| 时钟 | `<prefix> t` |
| 切换鼠标开关 | `<prefix> m`（oh-my-tmux） |
| 重载配置 | `<prefix> r` |
| 编辑本地配置 | `<prefix> e` |

**同步输入**（没绑快捷键）：`<prefix> :` 后输入 `setw synchronize-panes on`，此后在一个面板打字会同时发给该窗口所有面板；`off` 关闭。批量在多目标执行同样命令时很有用。

---

## 如果只先记 5 个

`<prefix> d`（断开）、`<prefix> c`（新窗口）、`<prefix> -` / `_`（分屏）、`<prefix> z`（面板最大化）、`<prefix> s`（会话切换）。其余用 `<prefix> ?` 随时查。
