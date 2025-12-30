# Network

## networkmanager安装

### Installation

```bash
sudo pacman -S networkmanager
sudo systemctl enable --now NetworkManager
```

### networkmanager状态查看

```bash
sudo systemctl status NetworkManager
```

## WIFI连接

### 利用nmcli

```bash
# 查看网卡设备
nmcli device list

# 检测当前地区WIFI
nmcli wifi list

# 连接其中的一个WIFI, 假设为ASUS_5G, 密码是cyber626, 使用网卡wlp0s20f3
nmcli device wifi connect "ASUS_5G" password "cyber626" ifname wlp0s20f3 

# 查看连接状态
nmcli connection show --active

# 检测网络连接情况
ping -c 5 www.baidu.com
```

## 其他知识

### IP查看

```bash
# 方式一: 使用ifconfig
ifconfig

# 方式二: 使用ip addr show
ip addr show

# 方式三: 使用ip route show，本方法还可以查看路由表信息
ip route show
```

### dns解析

```bash
# 安装bind
sudo pacman -S bind

# 解析指定域名
dig +short www.baidu.com
```

