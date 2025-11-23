""""""""""""""""""""""""""""""""""""""""" 原生vim
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
" 颜色主题
colorscheme torte


""""""""""""""""""""""""""""""""""""""""" IDE + 原生Vim
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

set clipboard=unnamedplus         " Clipboard sharing with system clipboard
set ignorecase                " Case insensitive search


""""""""""""""""""""""""""""""""""""""""" 自定义映射
" 保存文件
noremap <C-s> :w<CR>    
	
" 退出vim
nnoremap <C-w> :q<CR>
nnoremap <C-q> :q!<CR>
" 命令模式
nnoremap <A-j> :

nnoremap <C-[> <<
nnoremap <C-]> >>

vnoremap <C-[> <
vnoremap <C-]> >

" Visual 模式下，p 映射为粘贴而不覆盖匿名寄存器
vnoremap p "_dP

" 复制
vnoremap <C-c> "+y

" 插入模式下映射 Ctrl-A 为 '全选'
inoremap <C-A> <ESC>ggVG
" 插入模式下映射 Ctrl-X 剪切当前行
inoremap <C-X> <ESC>ddi
" 回到Normal模式
inoremap <A-k> <ESC>

" Normal 模式下映射 H 和 L 快速跳转行首和行尾
nmap H ^
nmap L $
" Visual 模式下映射 H 和 L 快速跳转行首和行尾
vmap L $
vmap H ^
