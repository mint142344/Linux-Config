# 实用性配置

## sdcv

- 命令行字典查询，[配套离线字典下载](http://download.huzheng.org/zh_CN/)
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

## [zimfw](https://zimfw.sh/docs/modules/)

额外插件

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

## flatpak

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

## KDE

`~/.config/autostart/`：自启项目录

## git

ssh代理：

```sh
# 临时配置
git -c core.sshCommand="ssh -o ProxyCommand='nc -X 5 -x 127.0.0.1:7897 %h %p'" clone git@github.com:your-username/your-repo.git
# 永久配置 ~/.ssh/config 添加
# Linux 
    Host github.com
        HostName github.com
        User git
        Port 22
        ProxyCommand nc -X 5 -x 127.0.0.1:7897 %h %p

# Windows (使用"C:\Program Files\Git\mingw64\bin\connect.exe"代替nc)
Host github.com
    HostName github.com
    User git
    Port 22
    ProxyCommand connect -S 127.0.0.1:7897 %h %p
```

## vcpkg

```sh
sudo pacman -Syu base-devel git curl zip unzip tar cmake ninja
# vim ~/.zshrc
export VCPKG_ROOT=~/.local/vcpkg
export PATH=$VCPKG_ROOT:$PATH
```

## :star: Other

numlockx包：小键盘on/off

openbsd-netcatb包：nc网络命令

jq包：json格式化

cloc包：统计代码行数

nvidia-inst包：`nvidia-inst -o`开源驱动

qqmusic-electron：支持键盘快捷键

grub2主题：grub2-themes-master

OCR：sudo apt install tesseract-ocr tesseract-ocr-chi-sim

# QA

## fcitx5

:red_circle:  [wayland支持：](https://fcitx-im.org/wiki/Using_Fcitx_5_on_Wayland#KDE_Plasma)

- Set `XMODIFIERS=@im=fcitx` for XWayland application （`/etc/environment`）
- Run chromium/electron application with `--enable-features=UseOzonePlatform --ozone-platform=wayland  --enable-wayland-ime`

[fcitx5 主题](https://github.com/thep0y/fcitx5-themes-candlelight)

## clipboard

Wayland下neovim剪切板集成：`sudo pacman -S wl-clipboard`

> `:chekhealth`：检查剪切板集成状态

## pacman & yay

添加AUR源

`yay --aururl "https://aur.tuna.tsinghua.edu.cn" --save`

`~/.cache/yay`：yay的AUR包源码编译目录

>  此时目录 ~/.config/yay/ 下会生成 config.json 文件（如果之前没有的话）。
>  `yay -P -g`: 查看配置

## pacman

`/var/cache/pacman/pkg`：pacman 官方包的`.pkg.tar.zst`目录

`paccache -r`：清理缓存包，默认会**保留最近 3 个版本**的旧包，删除更老的

`paccache -ruk0`：清理**所有“已卸载软件”的缓存包**

## 家目录英文

`vim .config/user-dirs.dirs` 

`xdg-user-dirs-update` 

```sh 
XDG_DESKTOP_DIR="$HOME/Desktop"
XDG_DOWNLOAD_DIR="$HOME/Download"
XDG_TEMPLATES_DIR="$HOME/Templates"
XDG_PUBLICSHARE_DIR="$HOME/Public"
XDG_DOCUMENTS_DIR="$HOME/Documents"
XDG_MUSIC_DIR="$HOME/Music"
XDG_PICTURES_DIR="$HOME/Pictures"
XDG_VIDEOS_DIR="$HOME/Videos"
```



# Software

## [localsend](https://localsend.org/zh-CN)

局域网共享文件

## [octopi](https://github.com/aarnt/octopi)

Pacman/AUR 前端 by Qt

## [witr](https://github.com/pranshuparmar/witr)

Why is this running?**为什么这个程序在运行**

## onlyoffice

## typora

## cutecom

串口工具 By Qt

## [pandoc](https://pandoc.org/)

文件格式转换

## xdotool & wtype

X11/Wayland 键盘鼠标模拟

## [upscayl](https://upscayl.org/)

AI 图像增强(收费)

## [NormCap](https://dynobo.github.io/normcap/)

划选屏幕区域 OCR

## Tesseract

光学字符识别 OCR 引擎

简体中文`pacman -S tesseract tesseract-data-chi_sim`

## [pixelorama](https://aur.archlinux.org/pkgbase/pixelorama)

2D 像素精灵动画绘制

## [Krokiet](https://github.com/qarmin/czkawka)

文件查重清理

## [Vicinae](https://docs.vicinae.com/)

快速查找 类似Utools

## [subtitleedit](https://www.nikse.dk/subtitleedit)

字幕编辑
