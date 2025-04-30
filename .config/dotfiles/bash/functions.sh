# ~/.config/dotfiles/bash/functions.sh

# 创建并进入目录
mkcd() {
  mkdir -p "$1" && cd "$1"
}

# 动态路径提示

PR_DIR() {
  local sub=${1:-3}
  local full=$(pwd)
  local dirs=(${full//\// })
  local len=${#dirs[@]}
  local current=""
  if (( len > sub )); then
    local start=$((len - sub))
    current=".../${dirs[@]:start:sub}"
  else
    current="${dirs[*]}"
  fi
  echo -e "\[\033[32m\]${current}\[\033[0m\]"
}


# 其他项目相关函数可放此处

