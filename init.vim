
set nocompatible
syntax on 
filetype plugin indent on
set hlsearch 
set nu
set cindent 
set autoindent 
set smartindent 
set tabstop=2
set shiftwidth=2 
set expandtab 
set cursorline 
set t_Co=256 
autocmd FileType typescript setlocal completeopt-=menu
set nobackup
set nowritebackup
set clipboard=unnamed
set number
set mouse=a
set numberwidth=1
set showcmd
set ruler
set cursorline
set encoding=utf-8
set showmatch
set relativenumber
set noerrorbells visualbell
so ~/.vim/plugins.vim
so ~/.vim/maps.vim
so ~/.vim/plugin-config.vim

"colorscheme gruvbox
colorscheme onedark
let g:gruvbox_contrast_dark = "hard"
highlight Normal ctermbg=NONE
set laststatus=2
set noshowmode

" Javascript
"autocmd bufnewfile,bufread *.tsx set filetype=typescript.tsx
"autocmd bufnewfile,bufread *.ts set filetype=typescript.tsx
"autocmd bufnewfile,bufread *.jsx set filetype=javascript.jsx
"autocmd bufnewfile,bufread *.js set filetype=javascript.jsx

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

" Git
let blamer_enabled=1
let blamer_delay=200

" NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_int") | NERDTreeToggle | endif
map <C-a> :NERDTreeToggle<CR>
let NERDTreeShowBookmarks=1
let NERDTreeWinSize=50

