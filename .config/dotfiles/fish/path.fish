# 覆盖系统常用目录
set -gx PATH /usr/local/bin /usr/bin /bin \
             /usr/local/sbin /usr/sbin /sbin

# 按需追加自定义目录
for p in $HOME/bin $HOME/.local/bin \
	 $HOME/local/bin \
         /usr/local/musl/bin \
         /usr/lib/ccache \
         /home/cc/Linux_learning/pup \
         /usr/local/go/bin \
         /mnt/c/Windows/System32/WindowsPowerShell/v1.0
    if test -d $p
        set -gx PATH $p $PATH
    end
end
