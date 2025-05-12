# ~/.config/fish/config.fish

#if not set -q DOTFILES_LOADED
#    set -gx DOTFILES_LOADED 1  # 设为全局变量
#else
#    exit  # 直接退出更安全
#end

# 设置全局变量
set -gx XDG_CONFIG_HOME $HOME/.config

# 加载子模块（静默忽略不存在的文件）
for module in $XDG_CONFIG_HOME/dotfiles/fish/*.fish
    if [ -f $module ]
        source $module
    end
end


