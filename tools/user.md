# 用户创建及删除

这部分主要介绍用户创建、赋予管理员权限及用户删除的内容。这些操作都建议在`root`用户下进行

## 用户创建

```bash
# -m参数表示自动创建home目录，如果省略这个参数，即使指定目录系统也可能不会自动创建。
# -d指定home目录路径
# -s指定用户的默认shell
$ useradd -m -d /path/to/your/home/directory -s /usr/bin/bash username

# 设置用户密码
$ passwd username

# 赋予Sudo权限，arch linux下其实就是加入到wheel组
$ usermod -aG wheel username
```

## 用户删除

```bash
# 加上-r是递归删除的意思，不仅会删除用户的账户信息，还会自动删除用户的Home目录和邮件文件
# 不加的话就只会在/etc/passwd和/etc/shadow中删除相关信息
$ sudo userdel -r username
```
