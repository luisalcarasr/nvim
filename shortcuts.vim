let mapleader=" "

" testing
nnoremap <Leader>t :TestNearest<CR>
nnoremap <Leader>T :TestFile<CR>
nnoremap <Leader>TT :TestSuite<CR>

" split resize
nnoremap <Leader>> 10<C-w>>
nnoremap <Leader>< 10<C-w><

" quick semi
nnoremap <Leader>; $a;<Esc>

nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>qa :qa<CR>
nnoremap <Leader>x :x<CR>
nnoremap <Leader>\ :source ~/.config/nvim/init.vim<CR>
" shorter commands
cnoreabbrev tree NERDTreeToggle
cnoreabbrev blame Gblame
cnoreabbrev find NERDTreeFind
cnoreabbrev diff Gdiff

" plugs
map <Leader>nt :NERDTreeFind<CR>
map <Leader>p :Files<CR>
map <Leader>rg :Rg<CR>
map <Leader>ag :Ag<CR>

" Use <c-space> to trigger completion.
"inoremap <silent><expr> <c-space> coc#refresh()
 
" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" diagnostics
nnoremap <leader>kp :let @*=expand("%")<CR>

" tabs navigation
map <Leader>h :tabprevious<cr>
map <Leader>l :tabnext<cr>
map <Leader>t :tabnew<cr>

" buffers
map <Leader>ob :Buffers<cr>


" faster scrolling
nnoremap <silent> <C-e> 10<C-e>
nnoremap <silent> <C-y> 10<C-y>
nmap <Leader>s <Plug>(easymotion-s2)

" git
nnoremap <Leader>G :G<cr>
nnoremap <Leader>gp :Gpush<cr>
nnoremap <Leader>gl :Gpull<cr>

" run current file
" nnoremap <Leader>x :!node %<cr>

" Use <c-space> to trigger completion.
if &filetype == "javascript" || &filetype == "python"
  inoremap <c-space> <C-x><C-u>
else
  inoremap <silent><expr> <c-space> coc#refresh()
endif


set splitright
function! OpenTerminal()
  let bufNum = bufnr("%")
  let bufType = getbufvar(bufNum, "&buftype", "not found")

  execute "e term://zsh"

  " turn off numbers
  execute "set nonu"
  execute "set nornu"

  " toggle insert on enter/exit
  silent au BufLeave <buffer> stopinsert!
  silent au BufWinEnter,WinEnter <buffer> startinsert!

  " set maps inside terminal buffer
  execute "tnoremap <buffer> <C-h> <C-\\><C-n><C-w><C-h>"
  execute "tnoremap <buffer> <C-t> <C-\\><C-n>:q<CR>"
  execute "tnoremap <buffer> <C-\\><C-\\> <C-\\><C-n>"

  startinsert!
endfunction
nnoremap <C-t> :call OpenTerminal()<CR>
