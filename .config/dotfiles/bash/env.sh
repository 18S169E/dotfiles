# ~/.config/dotfiles/bash/env.sh

# 字符集
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# 编辑器设置
export EDITOR="nvim"
export VISUAL="nvim"

# 路径扩展
export PATH="$HOME/bin:$HOME/.local/bin:$PATH"
export PATH="/usr/local/musl/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/lib/ccache:$PATH"
export PATH="/home/cc/Linux_learning/pup:$PATH"
export PATH="/usr/local/go/bin:$PATH"
export PATH="/mnt/c/Windows/System32/WindowsPowerShell/v1.0:$PATH"
export PATH="$PATH:/home/cc/Linux_learning/pup"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/local/bin:$PATH"
export PATH="/usr/local/cuda/bin:$PATH"


# 工作目录
export NEMU_HOME=/home/cc/ysyx-workbench/nemu
export AM_HOME=/home/cc/ysyx-workbench/abstract-machine
export NPC_HOME=/home/cc/ysyx-workbench/npc
export NVBOARD_HOME=/home/cc/ysyx-workbench/nvboard
export LD_LIBRARY_PATH=/usr/local/cuda/lib64:$LD_LIBRARY_PATH
