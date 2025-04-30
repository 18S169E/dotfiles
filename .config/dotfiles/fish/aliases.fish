# ~/.config/dotfiles/fish/aliases.fish

# ls 颜色与简易别名
alias ll 'ls -alF'
alias la 'ls -A'
alias l 'ls -CF'

# 编辑器快捷
alias nv 'nvim'
# alias vim 'nvim'

# Git 可视化
alias gl 'git log --graph --decorate'

# Hugo 博客目录快速跳转
alias log 'cd ~/CPP_learning/blog_hugo/content/posts/'

# 项目快捷
alias x 'cd ~/ysyx-workbench/nemu/'
alias .. 'cd .. && pwd'
alias ... 'cd ../.. && pwd'
alias v 'vim'
alias p 'pwd'
alias nvconfig 'cd ~/.config/nvim'

# 用来管理dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
