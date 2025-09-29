# bash_tools

一组轻量级 Bash 实用函数，专注彩色输出与结构化日志。既可直接运行演示脚本，也能被其他脚本 `source`。

## 功能亮点

- **颜色工具** —— `color::green`、`color::red` 等函数一行搞定彩色输出。
- **结构化日志** —— `log` 模块输出带时间戳的 `INFO`、`WARN`、`ERROR`、`NOTICE`。
- **示例脚本** —— 执行 `tools.sh` 体验全部能力，或在你的脚本中复用。

## 目录结构

```
.
├── lib/
│   ├── color/color.sh    # ANSI 颜色封装
│   ├── log/log.sh        # 基于颜色模块的日志工具
│   └── source_all.sh     # 批量加载全部模块的便捷入口
└── tools.sh              # 展示所有工具的 CLI 入口
```

## 快速上手

```bash
# 克隆仓库并进入项目目录
 git clone <repo-url>
 cd bash_tools

# 运行示例，预览日志输出样式
 ./tools.sh demo
```

不带参数（或传入 `help`）运行 `./tools.sh` 可查看内置帮助。脚本依赖标准 Bash 环境，无需额外安装。

## 在你的脚本中使用

可按需加载模块，或使用 `source_all.sh` 一次导入：

```bash
#!/usr/bin/env bash

# 加载全部模块
source "$(dirname "${BASH_SOURCE[0]}")/lib/source_all.sh"

log::info "应用启动"
log::warn "可能需要注意的问题"
if ! log::error "发生了可恢复的错误"; then
    # 处理错误
    :
fi
```

### 控制日志详尽程度

通过环境变量 `LOG_VERBOSE` 控制日志详尽程度，`0` 时仅保留警告与错误：

```bash
export LOG_VERBOSE=0
./tools.sh demo
```

