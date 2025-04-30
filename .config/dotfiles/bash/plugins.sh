# ~/.config/dotfiles/bash/plugins.sh

# 历史记录配置
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000

# 窗口大小检测
shopt -s checkwinsize

# lesspipe
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# 自动补全与插件加载
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    source /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    source /etc/bash_completion
  fi
fi

# fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

