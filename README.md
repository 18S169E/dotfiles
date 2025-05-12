# Dotfiles 管理方式说明

本项目采用 Git 的裸仓库（bare repository）方式管理 dotfiles（配置文件），参考了 [Best way to manage your dotfiles](https://medium.com/@simontoth/best-way-to-manage-your-dotfiles-2c45bb280049)。

## 管理方式简介

使用 Git 裸仓库（bare repo）将 `$HOME` 目录当作工作区，仓库本身存储在 `$HOME/.dotfiles` 中。

设置了一个简洁的别名：
```bash
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

安装：
运行脚本install-dotfiles.sh即可
