#!/usr/bin/env bash
set -euo pipefail

# 遵循 XDG 规范：优先使用 XDG_CONFIG_HOME，否则回退到 ~/.config
CONFIG_DIR="${XDG_CONFIG_HOME:-$HOME/.config}"

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"

# 确保目标目录存在
mkdir -p "$CONFIG_DIR"

# 用 rsync 同步：删除目标中多余文件，避免旧配置残留
# 如果没有 rsync，回退到 cp -a 并先清理目标目录
sync_dir() {
  local src="$1" dest="$2"
  if command -v rsync >/dev/null 2>&1; then
    rsync -a --delete "$src/" "$dest/"
  else
    rm -rf "$dest"
    cp -a "$src" "$dest"
  fi
}

sync_dir "$SCRIPT_DIR/lazygit" "$CONFIG_DIR/lazygit"
sync_dir "$SCRIPT_DIR/nvim" "$CONFIG_DIR/nvim"

# tmux：优先写到 XDG 路径，同时兼容旧路径 ~/.tmux.conf
# 仅当源文件存在时才复制
TMUX_SRC="$SCRIPT_DIR/tmux/.tmux.conf"
if [[ -f "$TMUX_SRC" ]]; then
  mkdir -p "$CONFIG_DIR/tmux"
  cp -f "$TMUX_SRC" "$CONFIG_DIR/tmux/tmux.conf"
  # 旧版本 tmux 或部分配置仍读取 ~/.tmux.conf，保持兼容
  cp -f "$TMUX_SRC" "$HOME/.tmux.conf"
fi

echo "配置加载完成！"
