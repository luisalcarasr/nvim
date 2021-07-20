call plug#begin('~/.config/nvim/plugins')

" Syntax
Plug 'ap/vim-css-color'
Plug 'sheerun/vim-polyglot'
Plug 'wavded/vim-stylus'

" Status Bar
Plug 'maximbaz/lightline-ale'
Plug 'itchyny/lightline.vim'
Plug 'josa42/vim-lightline-coc'

" Explorer
Plug 'scrooloose/nerdtree'

" Typing
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'
Plug 'kamykn/spelunker.vim'

" Autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Test
Plug 'tyewang/vimux-jest-test'
Plug 'janko-m/vim-test'

" IDE
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'easymotion/vim-easymotion'
Plug 'yggdroot/indentline'
Plug 'scrooloose/nerdcommenter'
Plug 'adelarsq/vim-matchit'
Plug 'AndrewRadev/tagalong.vim'
Plug 'mattn/emmet-vim'

" Tmux
Plug 'christoomey/vim-tmux-navigator'

" HTTP Client
Plug 'nicwest/vim-http'

" Sessions
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'

" Git
Plug 'tpope/vim-fugitive'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-repeat'
Plug 'APZelos/blamer.nvim'
Plug 'mhinz/vim-signify'

" Themes
Plug 'joshdick/onedark.vim'
Plug 'NovaDev94/lightline-onedark'

call plug#end()
