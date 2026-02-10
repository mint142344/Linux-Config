"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" 原生vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 显示行号
set number
" 启用鼠标支持
set mouse+=a
" 显示vim模式
set showmode
" 始终显示状态栏, 如文件路径
set laststatus=2
" 右下角显示光标位置
set ruler
" 语法高亮
syntax enable
" 文件类型检查
filetype indent on
" 高亮括号
set showmatch
" 不兼容vi
set nocompatible
" 编码
set encoding=utf-8
" 自动缩进
set autoindent
" 缩进
set tabstop=4
set shiftwidth=4
" 颜色主题亮色zellner
colorscheme retrobox


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" IDE + 原生Vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 显示相对行号
set relativenumber
" 高亮当前行
set cursorline
" 上下窗口边缘至少保留5行
set scrolloff=5
" Incremental search
set incsearch
" 高亮匹配
set hlsearch
" 共享到系统剪贴板
set clipboard=unnamedplus
" 不区分大小写搜索
set ignorecase


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" 自定义映射
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 保存文件
noremap <C-s> :w<CR>

" 退出vim
nnoremap <C-w> :q<CR>
" 强制退出vim
nnoremap <C-q> :q!<CR>
" 命令模式
nnoremap <A-j> :
" 缩进
nnoremap <C-[> <<
" 反缩进
nnoremap <C-]> >>

" Visual 模式下缩进
vnoremap <C-[> <
" Visual 模式下反缩进
vnoremap <C-]> >
" Visual 模式下，p 映射为粘贴而不覆盖匿名寄存器
vnoremap p "_dP"
" 复制
vnoremap <C-c> "+y

" 插入模式下映射 Ctrl-A 为 '全选'
inoremap <C-A> <ESC>ggVG
" 插入模式下映射 Ctrl-X 剪切当前行
inoremap <C-X> <ESC>ddi
" 回到Normal模式
inoremap jk <ESC>l
" 回到Normal模式
inoremap sd <ESC>l


" Normal 模式 跳转行首/尾
nmap H ^
" Normal 模式 跳转行首/尾
nmap L $

" Visual 模式 跳转行首/尾
vmap L $
" Visual 模式 跳转行首/尾
vmap H ^

" leader key 设置为空格
let mapleader = " "
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
