" Change the leader key to SPACE
let mapleader=" "

" Make SPACE a no-op
nnoremap <SPACE> <Nop>

" Make jj the escape key
inoremap JJ <ESC>
inoremap jj <ESC>
" Split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap <silent><leader>k :resize +5<CR>
nnoremap <silent><leader>j :resize -5<CR>
nnoremap <silent><leader>h :vertical resize +5<CR>
nnoremap <silent><leader>l :vertical resize -5<CR>

" Fzf Search in All Files and Search Files
" nnoremap <leader>t :Files<CR>
" nnoremap <leader>r :Rg<CR>

nmap <Leader>ss :<C-u>SessionSave<CR>
nmap <Leader>sl :<C-u>SessionLoad<CR>
nnoremap <silent> <Leader>fh :DashboardFindHistory<CR>
nnoremap <silent> <Leader>ff :DashboardFindFile<CR>
nnoremap <silent> <Leader>tc :DashboardChangeColorscheme<CR>
nnoremap <silent> <Leader>fa :DashboardFindWord<CR>
nnoremap <silent> <Leader>fb :DashboardJumpMark<CR>
nnoremap <silent> <Leader>cn :DashboardNewFile<CR>

" Tagbar Toggle
nmap <F8> :TagbarToggle<CR>
" NvimTree Toggle
nnoremap <C-n> :NvimTreeToggle<CR>

" Tabs keybindings
" Move to previous/next
nnoremap <silent>    “ :BufferPrevious<CR>
nnoremap <silent>    ‘ :BufferNext<CR>
" Goto buffer in position...
nnoremap <silent>    ¡ :BufferGoto 1<CR>
nnoremap <silent>    ™ :BufferGoto 2<CR>
nnoremap <silent>    £ :BufferGoto 3<CR>
nnoremap <silent>    ¢ :BufferGoto 4<CR>
nnoremap <silent>    ∞ :BufferGoto 5<CR>
nnoremap <silent>    § :BufferGoto 6<CR>
nnoremap <silent>    ¶ :BufferGoto 7<CR>
nnoremap <silent>    • :BufferGoto 8<CR>
nnoremap <silent>    ª :BufferLast<CR>
" Close buffer
nnoremap <silent>    ç :BufferClose<CR>

" lspsaga
" when the finder is open
" o: open the selection
" s: vertical split
" i: split
" q: quit
" <c-f>: scroll down
" <c-b>: scroll up
nnoremap <silent> gh <cmd>lua require'lspsaga.provider'.lsp_finder()<CR>

nnoremap <silent><leader>ca <cmd>lua require('lspsaga.codeaction').code_action()<CR>
vnoremap <silent><leader>ca :<C-U>lua require('lspsaga.codeaction').range_code_action()<CR>
