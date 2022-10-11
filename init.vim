lua require('init')

" TODO: move into init.lua
set nowrapscan
set list                " show trailing whitespace
set listchars=tab:▸\ ,trail:▫
nnoremap <Leader>s :IHS<CR>:A<CR>
noremap <silent> <Left> :bp<CR>
noremap <silent> <Right> :bn<CR>
" 窗口切换
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
" floaterm
nnoremap <silent> <F7> :FloatermToggle<CR>
tnoremap <silent> <F7> <C-\><C-n>:FloatermToggle<CR>
