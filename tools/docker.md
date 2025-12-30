# docker

## docker配置安装

```bash
# docker安装
sudo pacman -S docker

# docker服务开启
sudo systemctl enable --now docker.service
sudo systemctl start docker.service

# 当前用户使用docker拥有权限设置，避免每次使用docker都要sudo，做法就是将用户加入docker组
sudo usermod -aG docker $USER
```

## docker更换engine镜像源

```bash
docker ps

# 国内镜像配置
sudo mkdir -p /etc/docker
sudo vim /etc/docker/daemon.json

# 写入以下内容并保存：（两种选择）
1. 国内镜像源
{
  "registry-mirrors": [
    "https://docker.m.daocloud.io",
    "https://dockerproxy.com",
    "https://hub-mirror.c.163.com"
  ]
}
2. 轩辕镜像
{
  "registry-mirrors": [
    "https://docker.xuanyuan.me/"
  ]
}

# 重新加载engine，重启docker 
sudo systemctl daemon-reload
sudo systemctl restart docker
```
