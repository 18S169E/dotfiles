# ~/.bashrc

# 一次性标记，防止重复加载（可选）
[ -n "$DOTFILES_LOADED" ] && return
export DOTFILES_LOADED=1

# XDG 目录设置
export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"

# 加载所有的 bash 模块
for module in "$XDG_CONFIG_HOME"/dotfiles/bash/*.sh; do
    [ -r "$module" ] && source "$module"
done




export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
. "$HOME/.cargo/env"
