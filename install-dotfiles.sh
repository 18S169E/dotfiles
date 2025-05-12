#!/bin/bash

set -e  # 出错即退出

GIT_REPO="git@github.com:18S169E/dotfiles.git"
DOTFILES_DIR="$HOME/.dotfiles"
BACKUP_DIR="$HOME/.dotfiles-backup"

echo "==> 克隆 dotfiles 仓库为裸仓库..."
git clone --bare "$GIT_REPO" "$DOTFILES_DIR"

function dotfiles {
   /usr/bin/git --git-dir="$DOTFILES_DIR" --work-tree="$HOME" "$@"
}

echo "==> 创建备份文件夹: $BACKUP_DIR"
mkdir -p "$BACKUP_DIR"

echo "==> 备份可能冲突的文件..."
dotfiles checkout 2>&1 | grep -E "^\s+\." | awk {'print $1'} | \
  while read -r file; do
    mv "$HOME/$file" "$BACKUP_DIR/"
done

echo "==> 检出 dotfiles..."
dotfiles checkout

echo "==> 配置 Git 忽略未跟踪文件"
dotfiles config --local status.showUntrackedFiles no

echo "==> 设置别名，可添加到 .bashrc 或 .zshrc:"
echo "alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'"

