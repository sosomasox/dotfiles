"""""""""""
" setting "
""""""""""
set encoding=utf-8
set nobackup
set noswapfile
set autoread
set hidden
set showcmd


""""""""""
" visual "
"""""""""
syntax on
set title
set number
set virtualedit=onemore
set smartindent
set visualbell
set showmatch
set laststatus=2
set wildmode=list:longest
nnoremap j gj
nnoremap k gk
hi Comment ctermfg=blue

"""""""
" tab "
"""""""
set list listchars=tab:\>\-
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

""""""""""
" search "
""""""""""
set smartcase
set incsearch
set wrapscan
set hlsearch
nmap <Esc><Esc><Esc> :nohlsearch<CR><Esc>
inoremap <silent> jj <Esc>

"""""""""""""""""""
" filetype plugin "
"""""""""""""""""""
filetype plugin indent on
augroup fileTypeIndent
    autocmd!
    autocmd BufNewFile,BufRead *.json setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
    autocmd BufNewFile,BufRead *.yml  setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
    autocmd BufNewFile,BufRead *.yaml setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
    autocmd BufNewFile,BufRead *.j2   setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
    autocmd BufNewFile,BufRead *.html setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
    autocmd BufNewFile,BufRead *.py   setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
    autocmd BufNewFile,BufRead *.tf   setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
    autocmd BufNewFile,BufRead *.sh   setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
    autocmd BufNewFile,BufRead *.go   setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
    autocmd BufNewFile,BufRead *.js   setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
    autocmd BufNewFile,BufRead *.tsx  setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
augroup END


"viとの互換性を無効にする(INSERT中にカーソルキーが有効になる)
set nocompatible
""カーソルを行頭，行末で止まらないようにする
set whichwrap=b,s,h,l,<,>,[,]
"BSで削除できるものを指定する
" indent  : 行頭の空白
" eol     : 改行
" start   : 挿入モード開始位置より手前の文字
set backspace=indent,eol,start
