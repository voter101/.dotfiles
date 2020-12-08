" Inspirations:
"   - https://github.com/garybernhardt/dotfiles/blob/master/.vimrc

set nocompatible

""" PLUGINS
call plug#begin()

Plug 'ctrlpvim/ctrlp.vim' 
Plug 'preservim/nerdtree'

" disables search highlighting when you are done searching and re-enables it when you search again
Plug 'romainl/vim-cool'

" Theme
Plug 'joshdick/onedark.vim'

" Improved syntax hightlighting
Plug 'sheerun/vim-polyglot'

" Typescript
Plug 'leafgarland/typescript-vim'
Plug 'Quramy/tsuquyomi'
Plug 'w0rp/ale'

" Initialize plugin system
call plug#end()

""" SETTINGS

" allow unsaved background buffers and remember marks/undo for them
set hidden
set number
set history=10000
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set laststatus=2
set showmatch
set incsearch
set hlsearch
set cursorline
set showtabline=2
set winwidth=79
set nobackup
set nowritebackup
set scrolloff=3
set backspace=indent,eol,start
set showcmd
filetype plugin indent on
set wildmode=longest,list
set wildmenu
let mapleader=","
set timeout timeoutlen=1000 ttimeoutlen=100
set modeline
set modelines=3
set foldmethod=manual
set nofoldenable
set nojoinspaces
set autoread
set signcolumn=no
:set updatetime=200
:set termguicolors

" Theme settings
syntax on
colorscheme onedark

""" KEY MAPS
" Move around splits with <c-hjkl>
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
" Can't be bothered to understand ESC vs <c-c> in insert mode
inoremap <c-c> <esc>
" Insert a hash rocket with <c-l>
imap <c-l> <space>=><space>
" %% -> current file path
cnoremap <expr> %% expand('%:h').'/'
map <C-n> :NERDTreeToggle<CR>

""" VIM-ALE config
let g:ale_linters = {'javascript': ['eslint'], 'typescript': ['tsserver', 'eslint'], 'typescript.tsx': ['tsserver', 'eslint']}
let g:ale_fixers = {'javascript': ['prettier'], 'typescript': ['prettier'], 'typescript.tsx': ['prettier'], 'json': ['prettier']}
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1
let g:ale_lint_delay = 0
let g:ale_set_quickfix = 0
let g:ale_set_loclist = 0
let g:ale_javascript_eslint_executable = 'eslint --cache'
let g:ale_lint_on_save = 1
let g:ale_fix_on_save = 1

" Vim-ale handles TypeScript quickfix, so tell Tsuquyomi not to do it.
let g:tsuquyomi_disable_quickfix = 1

""" NERDTree config
let g:NERDTreeWinPos = "right"
" Close vim if NERDTree is the only window left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


""" Ctrl-p config
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
