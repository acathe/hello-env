# lazydocker 常用快捷键速查（默认键位）

> 基准：**lazydocker v0.25.2** 源码默认键位；撰写时本机未安装 lazydocker，未做本机实测，也不代表用户自定义键位。
> 字母区分大小写；`C-c` 表示 Ctrl-c，`S-Tab` 表示 Shift-Tab。操作通常作用于当前高亮资源。

---

## 1. 启动

| 用途 | 命令 |
| --- | --- |
| 默认启动 | `lazydocker` |
| 指定一个或多个 Compose 文件（每个文件重复 `-f`） | `lazydocker -f compose.yaml -f compose.override.yaml` |
| 指定 Compose 项目名 | `lazydocker -p my-project` |

---

## 2. 导航与面板

| 操作 | 按键 |
| --- | --- |
| 上移 / 下移 | `k` / `j` 或 `↑` / `↓` |
| 上一个 / 下一个左侧资源面板 | `h` / `l`、`←` / `→` 或 `S-Tab` / `Tab` |
| 直接聚焦 Projects / Services / Containers / Images / Volumes / Networks | `1` / `2` / `3` / `4` / `5` / `6` |
| 进入右侧 Main / 返回左侧面板 | `Enter` / `Esc` |
| 左侧聚焦时，切换右侧详情的上一个 / 下一个标签 | `[` / `]` |
| 过滤当前列表 | `/` |
| 打开当前面板的操作与快捷键菜单 | `?` / `x` |
| 下一个 / 上一个屏幕布局 | `+` / `_` |
| 输入并执行任意 shell 命令 | `X` |
| 退出 lazydocker | `q` / `C-c` |

---

## 3. 容器与 Compose 服务

| 作用范围与操作 | 按键 |
| --- | --- |
| Containers 面板：显示 / 隐藏已停止容器 | `e` |
| 当前容器或 Compose 服务：停止 / 暂停或恢复 | `s` / `p` |
| 当前容器：直接重启 | `r` |
| 当前 Compose 服务：创建并后台启动（不存在时会创建）/ 只启动已有服务容器 | `u` / `S` |
| 当前 Compose 服务：直接 restart / 打开 restart、recreate、rebuild 菜单 | `r` / `R` |
| 当前容器或 Compose 服务：删除 / attach / 查看日志 | `d` / `a` / `m` |
| 当前容器或 Compose 服务：进入容器 shell / 浏览器打开首个端口（HTTP） | `E` / `w` |
| 当前容器或 Compose 服务：运行预定义自定义命令 | `c` |
| Containers 面板：打开容器批量命令菜单 | `b` |
| Services 面板：打开 Compose 批量命令菜单（含全项目 up、stop、pull、build、down） | `b` |
| 整个 Compose 项目：创建并后台启动全部服务 / down 全项目 | `U` / `D` |

---

## 4. 其他资源

| 作用范围与操作 | 按键 |
| --- | --- |
| Projects（`1`）：编辑配置 / 用系统默认程序打开配置 / 查看项目全部日志 | `e` / `o` / `m` |
| Images、Volumes、Networks（`4` / `5` / `6`）：删除当前资源 / 运行预定义自定义命令 / 打开批量命令菜单 | `d` / `c` / `b` |

> **删除警告：** `d` 会删除当前高亮的容器、服务容器、镜像、卷或网络，`D` 会 down 整个 Compose 项目；相关菜单可能同时删除卷。执行前确认对象、项目范围和删卷选项；使用中的资源可能无法删除。

---

## 5. Main 与日志

| 操作 | 按键 |
| --- | --- |
| Main 聚焦时，向上 / 向下滚动 | `k` / `j` 或 `↑` / `↓` |
| Main 聚焦时，向左 / 向右滚动 | `h` / `l` 或 `←` / `→` |
| 无论焦点在哪，直接让 Main 向上 / 下 / 左 / 右滚动 | `K` / `J` / `H` / `L` |
| Main 向上 / 向下翻页 | `PageUp` / `PageDown` 或 `C-u` / `C-d` |
| 跳到顶部并停止日志跟随 / 跳到底部并恢复日志跟随 | `Home` / `End` |

---

## 如果只先记 5 组

`j/k`（选择资源）、`h/l`（切换面板）、`Enter/Esc`（进入 / 返回 Main）、`?`（查看当前操作）、`q`（退出）。容器常用动作再记 `s/r/p/d/E`，Compose 服务与项目操作再记 `u/S`、`U/D`。
