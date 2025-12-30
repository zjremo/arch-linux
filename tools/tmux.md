# tmux

这是部分有关tmux的使用技巧

## 后台运行

```bash
# 开启一个后台tmux进程
tmux new -s [name]

# 重新进入名为jrz的tmux会话
tmux attach -t [name]

# 查看所有会话
tmux ls

# 关闭名为jrz的会话
tmux kill-session -t jrz

# 关闭所有会话
tmux kill-server
```

