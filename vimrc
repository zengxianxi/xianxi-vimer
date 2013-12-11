"开始使用vUNDle的必须配置
set nocompatible "be iMproved
filetype off "required!f
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
"使用Vundle来管理Vundle "required!
Bundle 'gmarik/vundle'


"" Brief help
" :BundleList          - list configured bundles
" " :BundleInstall(!)    - install (update) bundles
" " :BundleSearch(!) foo - search (or refresh cache first) for foo
" " :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
" "
" " see :h vundle for more details or wiki for FAQ
" " NOTE: comments after Bundle commands are not allowed.

"======================
"自定义安装的插件
"======================
"使用部分关键字查找文件名
Bundle 'lookupfile'
"
Bundle 'genutils'
"保存文件时检查语法的插件
Bundle 'Syntastic'
"生成工程目录树
Bundle 'The-NERD-tree'
Bundle 'The-NERD-Commenter'
"生成函数、变量列表
Bundle 'Tagbar'

Bundle 'vimcdoc'
"jQuery插件
Bundle 'jQuery'
"代码自动补齐插件
Bundle 'UltiSnips'
"状态栏
Bundle 'Lokaltog/vim-powerline'
"
Bundle 'fholgado/minibufexpl.vim'
"java 代码补全插件
Bundle 'javacomplete'

"允许插件required!
filetype plugin indent on     " required!
"

" Rebind <Leader> key
let mapleader = ","


"=================================
" 插件的相关设置
"=================================
" Settings for vim-powerline
set laststatus=2
" Settings for NERDTree
nnoremap <leader>d :NERDTreeToggle<cr>
" Settings Mini Buffer
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
" Settings for Tagbar
nmap <leader>l <ESC>:TagbarToggle<cr>
imap <leader>l <ESC>:TagbarToggle<cr>i

" Settings for Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"根据文件类型及插件设置语法提示
"autocmd FileType python set omnifunc=pythoncomplete#Complete
"autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
"autocmd FileType css set omnifunc=csscomplete#CompleteCSS
"autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType java set omnifunc=javacomplete#Complete





"=================================
"快捷键配置
map <c-j> <c-w>j
map <c-h> <c-w>h
map <c-k> <c-w>k
map <c-l> <c-w>l


"==================================
"设置搜索时忽略大小写
"    Vim基本配置
"===================================
"使vim的配置立即生效
autocmd! bufwritepost .vimrc source %

"关闭vi的一致性模式 避免以前版本的一些Bug和局限
set nocompatible
"配置backspace键工作方式
set backspace=indent,eol,start

"显示行号
set number
"设置在编辑过程中右下角显示光标的行列信息
set ruler
"当一行文字很长时取消换行
"set nowrap

"在状态栏显示正在输入的命令
set showcmd

"设置历史记录条数
set history=1000

"设置取消备份 禁止临时文件生成
set nobackup
set noswapfile

"突出现实当前行列
"set cursorline
"set cursorcolumn

"设置匹配模式 类似当输入一个左括号时会匹配相应的那个右括号
set showmatch

"设置C/C++方式自动对齐
set autoindent
set cindent

"开启语法高亮功能
syntax enable
syntax on

"设置搜索时忽略大小写
set ignorecase

"设置在Vim中可以使用鼠标 防止在Linux终端下无法拷贝
set mouse=a

"设置Tab宽度
set tabstop=4
"设置自动对齐空格数
set shiftwidth=4
"设置按退格键时可以一次删除4个空格
set softtabstop=4
"设置按退格键时可以一次删除4个空格
set smarttab
"将Tab键自动转换成空格 真正需要Tab键时使用[Ctrl + V + Tab]
set expandtab

"设置编码方式
set encoding=utf-8
"自动判断编码时 依次尝试一下编码
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

set helplang=cn
"设置词典的路径
set dictionary=/usr/share/dict/words
"设置窗口标题 
set title

