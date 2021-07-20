" HTML, JSX
let g:closetag_filenames = '*.html,*.js,*.jsx,*.ts,*.tsx'
" Lightlane
let g:lightline = {
      \ 'active': {
      \   'left': [['mode', 'paste'], [], ['filename', 'modified']],
      \   'right': [['status'], ['filetype', 'percent', 'lineinfo', 'coc_info', 'coc_hints', 'coc_errors', 'coc_warnings', 'coc_ok'], ['gitbranch']]
      \ },
      \ 'inactive': {
      \   'left': [['inactive'], ['filename']],
      \   'right': [['bufnum']]
      \ },
      \ 'component': {
      \   'bufnum': '%n',
      \   'inactive': 'inactive'
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head',
      \   'kitestatus': 'kite#statusline',
      \   'status': 'coc_errors'
      \ },
      \ 'colorscheme': 'onedark',
      \ 'subseparator': {
      \   'left': '',
      \   'right': ''
      \ }
      \}

call lightline#coc#register()

let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'jinja' : 1,
    \ 'tsx' : 1,
    \ 'jsx' : 1,
    \}

"  nerdtree
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1
let NERDTreeAutoDeleteBuffer=1
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeShowLineNumbers=1
let NERDTreeMapOpenInTab='\t'

let g:javascript_plugin_flow = 1

" kite
let g:kite_supported_languages = ['javascript', 'python']

" coc
autocmd FileType python let b:coc_suggest_disable = 1
autocmd FileType javascript let b:coc_suggest_disable = 1
autocmd FileType scss setl iskeyword+=@-@

" Sessions
let g:session_autosave='yes'
let g:session_autoload='yes'

" vim fugitive
command! -bang -nargs=? -complete=dir GFiles
  \ call fzf#vim#gitfiles(<q-args>, fzf#vim#with_preview(), <bang>0)

command! -bang -nargs=* Ag
  \ call fzf#vim#ag(<q-args>, fzf#vim#with_preview(), <bang>0)

command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=1

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" fugitive always vertical diffing
set diffopt+=vertical

let $FZF_DEFAULT_OPTS="--layout=reverse --preview 'bat --color=always --style=header,grid --line-range :300 {}'"

" Spell
let g:enable_spelunker_vim = 0
let g:spelunker_max_hi_words_each_buf = 2048
