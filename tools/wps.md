# wps

## wps下载

```bash
yay -S wps-office-cn wps-office-mui-zh-cn
```

## wps下载之后无法输入中文

```text
正常下载wps都无法输入中文，需要以下配置:
1. ~/.xprofile配置
vim ~/.xprofile

然后加入三行内容：
export GTK_IN_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XIMODIFIERS=@im=fcitx

2. 环境变量设置:
chmod 777 /etc/environment
sudo vim /etc/environment

添加fcitx5配置:
GTK_IM_MODULE=fcitx
QT_IM_MODULE=fcitx
XMODIFIERS=@im=fcitx
INPUT_METHOD=fcitx

3. wps配置
vim /usr/bin/wps

文件开头加入两行代码：
export XMODIFIERS="@im=fcitx"
export QT_IM_MODULE="fcitx"

4. reboot
```
