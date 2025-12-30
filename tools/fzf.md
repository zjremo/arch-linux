# fzf

fzf是一款文件快速查找工具，可以进行模糊搜索等操作

## 目录快速跳转

fzf可以结合fd等工具实现终端中的目录快速跳转，实现方式就是在`.zshrc`中添加相关写好的fzf脚本配置或者是利用终端命令

```bash
cd $(fd --type d | fzf)
```

```bash
# 加载 fzf 默认的 zsh keybindings（含 fzf-cd-widget）
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

# fd + fzf 的 Alt-C（改写 fzf-cd-widget），兼容取消时重绘 prompt
fzf-cd-widget() {
  local dir ret

  # 调用 fd -> fzf
  dir=$(fd . --type d --hidden --follow --exclude .git 2>/dev/null \
        | fzf --height 40% --layout=reverse +m)
  ret=$?   # 保存 fzf 的退出状态

  # 如果用户没有选择（按 Esc/Ctrl-C）或 fzf 出错，重绘后返回
  if [[ $ret -ne 0 || -z $dir ]]; then
    zle reset-prompt 2>/dev/null || true
    zle -R 2>/dev/null || true
    return
  fi

  # 如果选择了目录，使用 builtin cd 切换；失败也重绘后返回
  if ! builtin cd -- "$dir"; then
    zle reset-prompt 2>/dev/null || true
    zle -R 2>/dev/null || true
    return
  fi

  # 切换成功后，确保 prompt/命令行立即更新
  zle reset-prompt 2>/dev/null || true
  zle -R 2>/dev/null || true
}

zle -N fzf-cd-widget
bindkey '\ec' fzf-cd-widget
```

最后的快捷键为:

```text
Ctrl-T 用 fzf 选择文件/目录插入命令行
Alt-C 用 fzf 选择目录并 cd到那个目录下
Ctrl-R 模糊搜索命令历史
```
