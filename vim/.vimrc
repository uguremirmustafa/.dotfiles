set clipboard=unnamedplus
syntax on
" set cursorline
" move vertically by visual line
nnoremap j gj
nnoremap k gk
"bu dört satır arrow keyleri iptal ediyor ki acemi vim userlar hjkl tuşlarına
"alışsın.
noremap <Up>    <Nop>
noremap <Down>  <Nop>
noremap <Left>  <Nop>
noremap <Right> <Nop>
"bu kod satır numaralarını gösteriyor, relative de relative olarak gösteriyor.
set number relativenumber
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartcase
set noswapfile
set nobackup
set incsearch
""set colorcolumn=80
set nu
set smartindent
"PLUGINS START HERE"
call plug#begin()
"emmet
Plug 'mattn/emmet-vim'
"prettier
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
"coc-autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"nerdtree for file navigation
Plug 'preservim/nerdtree'
Plug 'sainnhe/gruvbox-material'
Plug 'phanviet/vim-monokai-pro'
Plug 'vim-airline/vim-airline'
Plug 'flazz/vim-colorschemes'
Plug 'tomasiser/vim-code-dark'
Plug '/home/mpaulson/personal/vim-be-good'
"goyo plugin for writing
Plug 'junegunn/goyo.vim'
"latex-live-preview
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
call plug#end()
"------------------------------------
"latex-live-preview settings down here
"------------------------------------
autocmd Filetype tex setl updatetime=1
let g:livepreview_previewer = 'okular'
"------------------------------------

"remapping emmet leader key to comma
"(by this way i ll be able to call the
"emmet with double comma hits)--------
let g:user_emmet_leader_key=','
"mapping nerd tree
map <C-n> :NERDTreeToggle<CR>
"remapping the leader key to comma
let mapleader = ","
"autobrackets-------------------------
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
"autobrackets end here------------------
set t_Co=256
set t_ut=
colorscheme koehler
"hi! Normal ctermbg=NONE guibg=NONE
"hi! NonText ctermbg=NONE guibg=NONE
set nobackup
set linebreak
