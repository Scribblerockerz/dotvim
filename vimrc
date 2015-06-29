execute pathogen#infect()
syntax on
filetype plugin indent on

" Theme setup
colorscheme atom-dark

" Basic settings
set showcmd
set ttyfast				"-- redraw faster
let mapleader = ","
let g:session_autoload = 'no'		"-- disables session autoload for vim scripts

" Mapping
map <Leader> <Plug>s
map <leader>q :qall<CR>
map <Leader>w :update<CR>
:nnoremap <leader>d dd
