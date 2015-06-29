execute pathogen#infect()
syntax on
filetype plugin indent on

" Theme setup
colorscheme atom-dark

" Basic settings
set showcmd
set ttyfast				"-- redraw faster
set number
set numberwidth=5

let mapleader = ","
let g:session_autoload = 'no'		"-- disables session autoload for vim scripts
let g:EasyMotion_smartcase = 1

" Mapping
map <leader>q :qall<CR>			"-- quit application
map <Leader>w :update<CR>		"-- update file
" nmap s <Plug>(easymotion-s)		"-- easymotion, search all characters
" mapsymotion, search all characters <Leader>j <Plug>(easymotion-j)	"-- easymotion, search lines downwards

" Toggle nerdtree with F10
map <F10> :NERDTreeToggle<CR>

" Current file in nerdtree
map <F9> :NERDTreeFind<CR>

" EASYMOTION:

" Search linewise upwards
map <Leader>k <Plug>(easymotion-k)

" Search linewise downwards
map <Leader>j <Plug>(easymotion-j)

" Search for a single character inside an area
nmap s <Plug>(easymotion-s)
