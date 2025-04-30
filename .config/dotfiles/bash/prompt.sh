# ~/.config/dotfiles/bash/prompt.sh

# 每次显示提示符前更新 PS1
update_PS1() {
  PS1="$(PR_DIR 3) > "
}

PROMPT_COMMAND=update_PS1

