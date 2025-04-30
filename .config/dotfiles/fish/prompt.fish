# ~/.config/dotfiles/fish/prompt.fish

# 返回当前路径最后 N 层
function pr_dir
    set -l parts (string split "/" (pwd))
    set -l n (count $parts)
    set -l start (math "max(1, $n - $argv[1] + 1)")
    echo (string join "/" $parts[$start..$n])
end

# 带颜色的提示符
function fish_prompt
    # 调用 pr_dir 得到路径
    set -l cwd (pr_dir 3)

    # 绿色显示路径
    set_color green
    echo -n $cwd

    # 恢复默认（关闭颜色），并追加分隔符
    set_color normal
    echo -n ' > '
end

