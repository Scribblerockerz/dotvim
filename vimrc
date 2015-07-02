execute pathogen#infect()
syntax on
filetype plugin indent on

" THEME:
colorscheme hybrid_material

" SETTINGS:
set showcmd
" redraw fast
set ttyfast
set number
set numberwidth=5
" handle backspace like in other programms
set backspace=2
set nobackup
set nowritebackup
set history=500
set incsearch
set laststatus=2
" Display extra whitespace
set list listchars=tab:»·,trail:·
set splitbelow
set splitright
" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab


let mapleader = ","
let g:session_autoload = 'no'
let g:EasyMotion_smartcase = 1
let g:enable_bold_font = 1

" remap emmet's key
let g:user_emmet_leader_key='<C-X>'

" EMMET:
nmap . <C-X>,

" MAPPING:

map <leader>q :qall<CR>
map <Leader>w :update<CR>

" Toggle nerdtree with F10
map <F10> :NERDTreeToggle<CR>
map <C-n> :NERDTreeToggle<CR>

" Current file in nerdtree
map <F9> :NERDTreeFind<CR>



" EASYMOTION:

" Search linewise upwards
map <Leader>k <Plug>(easymotion-k)

" Search linewise downwards
map <Leader>j <Plug>(easymotion-j)

" Search for a single character inside an area
nmap <Leader>s <Plug>(easymotion-s)



" underline the current line
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline 
set cursorline 



" NERDtree:
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif


" Javascript:
let g:javascript_enable_domhtmlcss = 0


" Tweakz:
let g:fuzzy_ignore = "*.png;*.PNG;*.JPG;*.jpg;*.GIF;*.gif;vendor/**;coverage/**;tmp/**;rdoc/**"

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif

" Treat <li> and <p> tags like the block tags they are
let g:html_indent_tags = 'li\|p'


" SNIPPETS:
" Snippets are activated by Shift+Tab
let g:snippetsEmu_key = "<S-Tab>"



if executable('ag')
  set grepprg=ag\ --nogroup
  let g:grep_cmd_opts = '--line-numbers --noheading'

  " Use ag in CtrlP for listing files. Lightning fast and
  respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
end

" Persistent undo
set undodir=~/.vim/undo/
set undofile
set undolevels=1000
set undoreload=10000


" Tab_completion:
" will insert tab at beginning of line,
" will use completion if not at beginning
set wildmode=list:longest,list:full
set complete=.,w,t
function! InsertTabWrapper()
  let col = col('.') - 1
  if !col || getline('.')[col - 1] !~ '\k'
    return "\<tab>"
  else
    return "\<c-p>"
  endif
endfunction
inoremap <Tab> <c-r>=InsertTabWrapper()<cr>



" Tutor:
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>



" Easy navigation between splits. Instead of ctrl-w + j. Just ctrl-j
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
