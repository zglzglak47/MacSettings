   "Vundle插件管理

   set nocompatible              " be iMproved, required
   filetype off                  " required

   " set the runtime path to include Vundle and initialize
   set rtp+=~/.vim/bundle/Vundle.vim
   call vundle#begin()
   " alternatively, pass a path where Vundle should install plugins
   "call vundle#begin('~/some/path/here')

   " let Vundle manage Vundle, required
   Plugin 'VundleVim/Vundle.vim'

   Plugin 'fatih/vim-go'

   Plugin 'majutsushi/tagbar'
   Plugin 'scrooloose/syntastic'

   " All of your Plugins must be added before the following line
   call vundle#end()            " required
   filetype plugin indent on    " required
   " To ignore plugin indent changes, instead use:
   "filetype plugin on
   "
   " Brief help
   " :PluginList       - lists configured plugins
   " :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
   " :PluginSearch foo - searches for foo; append `!` to refresh local cache
   " :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
   "
   " see :h vundle for more details or wiki for FAQ
   " Put your non-Plugin stuff after this line
   

"Tagbar setting
" === tagbar setting =======
nmap <C-m> :TagbarToggle<CR>   " shortcut
let g:tagbar_width = 45      " tagbar's width, default 20
let g:tagbar_ctags_bin='/usr/local/bin/ctags'

autocmd BufReadPost *.go,*.cpp,*.c,*.h,*.hpp,*.cc,*.cxx call tagbar#autoopen()
"VimEnter * nested :call tagbar#autoopen(1)  "automate to open tagbar
"
"let g:tagbar_left = 1       " on the left side
let g:tagbar_right = 1     " on the right side
" let NERDTreeIgnore=['\.pyc', '\.pyo', '\.swp', '\~'] " ignore *.py[co],
" *.swp and *~
" " =======end==================


"ZGL的配置

syntax on
syntax enable
set background=dark
colorscheme solarized
" 语法高亮

autocmd InsertLeave * se nocul
autocmd InsertEnter * se cul
" 用浅色高亮当前行

set smartindent
" 智能对齐

set autoindent
" 自动对齐

set confirm
" 在处理未保存或只读文件的时候，弹出确认

set tabstop=4
" Tab键的宽度

set softtabstop=4
set shiftwidth=4
"   统一缩进为4

set noexpandtab
" 不要用空格代替制表符

set number
" 显示行号
