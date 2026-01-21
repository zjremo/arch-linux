# todesk

todesk是一款远程控制软件

## 问题修复

### 连接主机问题

这个问题指的是被控端`todesk`版本过高，自己的版本过低。这通常是因为是从官网下载的包版本太低了，应该采用`yay`的官方安装

```bash
yay -S todesk-bin
```

### 网络连接问题

这个问题是因为安装的`todesk`默认是不会自启动服务的，需要手动打开：
```bash
sudo systemctl start todeskd.service
```
