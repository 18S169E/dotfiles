# Dotfiles 管理方式

本项目采用 Git 的裸仓库（bare repository）方式管理 dotfiles（配置文件），参考了 [Best way to manage your dotfiles](https://medium.com/@simontoth/best-way-to-manage-your-dotfiles-TPM2c45bb2800g9)

## 管理方式简介

使用 Git 裸仓库（bare repo）将 `$HOME` 目录当作工作区，仓库本身存储在 `$HOME/.dotfiles` 中。
这里对dotfiels进行管理的git仓库并不影响其使用，e.g. ~/.bashrc 还是放置在原位，bash仍然访问其进行初始化。
这个仓库只是用来备份和管理dotfiles的。

## dotfiles结构说明

dotfiles 结构为XDG模式，即启动点文件（如bash的~/.bashrc)只用来启动真正的配置文件，本身不进行配置，具体配置放在了
.config文件中。具体文件结构可以用 dotfils ls-files 查看追踪的文件。

## 使用说明
设置了一个简洁的别名：
```bash
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

1.  ~/.bashrc等初始化文件用来启动真正的配置
2.  .config文件夹内包含真正的配置
3.  用dotfiles快捷方式， 且 $HOME 就是工作区，所有文件要放在这里

