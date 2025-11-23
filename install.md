# 实用性配置

- numlockx：小键盘on/off

- [fcitx5 主题](https://github.com/thep0y/fcitx5-themes-candlelight)

- sdcv：命令行字典查询，[配套离线字典下载](http://download.huzheng.org/zh_CN/)
  - Ctrl+S 行首添加sdcv

```sh
insert-sdcv() {
	# 光标移动到行首
	zle beginning-of-line
	# 替换光标左侧文本
	LBUFFER="sdcv -c $LBUFFER"
	# 模拟Enter
	zle accept-line
}

# 注册小部件
zle -N insert-sdcv
# 禁用 Ctrl+S/Q 的默认暂停/恢复功能
stty -ixon
# 绑定 Ctrl+S
bindkey '^S' insert-sdcv

```

- jq：json格式化

- [zimfw](https://zimfw.sh/docs/modules/): 额外插件

```sh
zmodule ohmyzsh/ohmyzsh --root plugins/sudo
zmodule run-help
zmodule Aloxaf/fzf-tab
zmodule archive
```

- 终端emas键盘布局快捷键

```sh
Alt + N/P 		# 历史next/prev
Ctrl + A/E		# 行首/尾
```

> zsh `bindkey`命令查看当前所有的键绑定, ^表示Ctrl, ^[表示Alt

- grub: grub2-themes-master

- flatpak:

```sh
# 安装 flatpak 及图形化管理工具
sudo apt install flatpak gnome-software-plugin-flatpak
# 更换源
flatpak remote-modify flathub --url=https://mirrors.ustc.edu.cn/flathub
# 验证
flatpak remotes --show-details
# 维护
flatpak uninstall --unused
flatpak update
```

## gnome

gnome自带：

gnome-control-center：设置中心

gnome-software：软件中心

gnome-text-editor：文本编辑器

gnome-terminal：终端

gnome-session-properties: 程序自启 `~/.config/autostart`

## git

ssh代理：

```sh
# 临时配置
git -c core.sshCommand="ssh -o ProxyCommand='nc -X 5 -x 127.0.0.1:7890 %h %p'" clone git@github.com:your-username/your-repo.git
# 永久配置 ~/.ssh/config 添加
    Host github.com
        HostName github.com
        User git
        Port 22
        ProxyCommand nc -X 5 -x 127.0.0.1:7890 %h %p
```



