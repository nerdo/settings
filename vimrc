" =======
" PLUGINS
" =======

" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sleuth'
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'preservim/nerdcommenter'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'thaerkh/vim-workspace'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-syntastic/syntastic'
Plug 'morhetz/gruvbox'
Plug 'prettier/vim-prettier', { 'do': 'npm install' },

" List ends here. Plugins become visible to Vim after this call.
call plug#end()


" ========
" SETTINGS
" ========

" vim
" set termguicolors
set background=dark
let g:gruvbox_italic=1
color gruvbox

set number
let mapleader = ","

" Show tab line when there is only one file open
set showtabline=2

" NERDTree
" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

" Open the existing NERDTree on each new tab.
" autocmd BufWinEnter * silent NERDTreeMirror

" NERDcommenter
" Create default mappings
let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" vim-gitgutter
" Use fontawesome icons as signs
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '>'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '^'
let g:gitgutter_sign_modified_removed = '<'

" Cycle through all hunks in the buffer
function! GitGutterNextHunkCycle()
  let line = line('.')
  silent! GitGutterNextHunk
  if line('.') == line
    1
    GitGutterNextHunk
  endif
endfunction

function! GitGutterPrevHunkCycle()
  let line = line('.')
  silent! GitGutterPrevHunk
  if line('.') == line
    normal! G
    GitGutterPrevHunk
  endif
endfunction

" Set background color of sign column to general bg color
let g:gitgutter_override_sign_column_highlight = 1
highlight SignColumn guibg=bg
highlight SignColumn ctermbg=bg

" Update sign column every quarter second
set updatetime=250

" vim-workspace
" save all session files to ~/.vim/sessions
let g:workspace_session_directory = $HOME . '/.vim/sessions/'

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" =======
" KEYMAPS
" =======

" vim
nnoremap <C-t> :tabnew<CR>
nnoremap t :tabnext<CR>
nnoremap T :tabprev<CR>

" NERDTree keymaps
" alt+b
nnoremap <Esc>b :NERDTreeToggle<CR>

" NERDcommenter keymaps
" ctrl+/
map <C-_> <plug>NERDCommenterToggle

" FZF
" ctrl+p
nnoremap <C-p> :FZF<CR>
nnoremap <C-F> :Ag<CR>

" vim-gitgutter
" Cycle through hunks
nmap gn :call GitGutterNextHunkCycle()<CR>
nmap gN :call GitGutterPrevHunkCycle()<CR>

" Hunk-add and hunk-revert for chunk staging
nmap <Leader>ga <Plug>(GitGutterStageHunk)
nmap <Leader>gu <Plug>(GitGutterUndoHunk)

" vim-workspace
nnoremap <leader>s :ToggleWorkspace<CR>

