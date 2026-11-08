#!/usr/bin/env bash

set -euo pipefail

CONFIG_DIR="$HOME/.config"
SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"

cp -a "$SCRIPT_DIR/lazygit" "$CONFIG_DIR/"
cp -a "$SCRIPT_DIR/nvim" "$CONFIG_DIR/"
cp -a "$SCRIPT_DIR/tmux/.tmux.conf" "$HOME/.tmux.conf"

echo "配置加载完成！"
