set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install plugins
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'
Plugin 'scrooloose/syntastic'

" 绑定键位
" nmap <C-a> <home>
" nmap <C-e> <end>
" nmap <C-d> <Delet>
imap jj <Esc>
imap ;; <Esc>
nmap XX :q<CR>	" 不保存退出
nmap XXX :q!<CR>	" 不保存退出
nmap ZW :w<CR>  " 不退出vim保存


filetype plugin indent on     " equired
" 插件管理
Bundle "mattn/emmet-vim"
Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'
Bundle 'Lokaltog/vim-easymotion'

let g:user_emmet_install_global = 0
let g:EasyMotion_leader_key = 'f'
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map n <Plug>(easymotion-next)
map N <Plug>(easymotion-prev)
nmap s <Plug>(easymotion-s2)
nmap t <Plug>(easymotion-t2)
autocmd FileType html,css EmmetInstall


" 基础
syntax on
set ai
set history=100
set hlsearch		" 高亮搜索结果
filetype plugin on
set number "显示行数
set cursorline
set foldenable
set foldmethod=syntax
set mouse=a
set clipboard=unnamed
set matchpairs+=<:>
set laststatus=2
set autoindent
set smartindent     " indent when
set tabstop=4       " 设置一个TAB字符长度
set softtabstop=4   " backspace
set shiftwidth=4    " indent width
set ignorecase		" 搜索忽略大小写
set confirm			" 当 :q, :w, 或:wq 失败的时候提示
" enable filetype dectection and ft specific plugin/indent
filetype plugin indent on

autocmd FileType php setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType php setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType coffee,javascript setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType html,htmldjango,xhtml,haml,tpl setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=0
autocmd FileType sass,scss,css setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120



