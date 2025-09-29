" 启用系统剪贴板
set clipboard=unnamedplus

" 显示行号
set number

" 高亮搜索
set hlsearch

" 语法高亮
syntax on

" 自动缩进
set autoindent
set smartindent

" 高亮当前行
set cursorline

" 智能缩进
set shiftwidth=4
set tabstop=4

" 插入模式下 Ctrl-a 跳到行首
inoremap <C-a> <Esc>I

" 插入模式下 Ctrl-e 跳到行尾
inoremap <C-e> <Esc>A

" 普通模式下 Ctrl-a 跳到行首
nnoremap <C-a> ^

" 普通模式下 Ctrl-e 跳到行尾
nnoremap <C-e> $
