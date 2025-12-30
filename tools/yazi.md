# yazi

这是`yazi`一些问题的解决

## 打开文本文档设置默认使用Vim打开

```bash
# 导入环境变量EDITOR，可以将其放入.bashrc或者.zshrc
export EDITOR=vim
```

## yazi终端预览图片

Reference: <https://yazi-rs.github.io/docs/image-preview/>

- **x11/wayland**下图片预览依赖于终端图片显示协议ueberzugpp

通过以下方式来进行安装:

```bash
sudo pacman -S ueberzugpp
```

- tmux下运行yazi预览图片支持

在`~/.tmux.conf`中添加支持:

```bash
set -g allow-passthrough on
set -ga update-environment TERM
set -ga update-environment TERM_PROGRAM
```
