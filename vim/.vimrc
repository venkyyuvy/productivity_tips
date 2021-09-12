"Mode Settings
let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)
"Cursor settings:

"  1 -> blinking block
"  2 -> solid block 
"  3 -> blinking underscore
"  4 -> solid underscore
"  5 -> blinking vertical bar
"  6 -> solid vertical barset incsearch
syntax on
filetype plugin indent on
set number
set relativenumber
set autoindent
set expandtab
set hlsearch
set smarttab
set confirm
set wrap
set ruler
set tabstop=4
set shiftwidth=4
set expandtab
set wildmenu
set clipboard=unnamed
set backspace=indent,eol,start
set ignorecase
let g:completor_python_binary='/opt/anaconda3/envs/shark/lib/python3.7/site-packages/jedi' 
if empty(glob('~/.vim/autoload/plug.vim'))
      silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
          \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
        autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
    endif
call plug#begin('~/.vim/plugged')
Plug 'sheerun/vim-polyglot'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'joshdick/onedark.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dense-analysis/ale'
Plug 'valloric/youcompleteme'
Plug 'christoomey/vim-tmux-runner'
Plug 'christoomey/vim-tmux-navigator'
Plug 'mhinz/vim-startify'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'thoughtbot/vim-rspec'
call plug#end()
set background=light
let macvim_skip_colorscheme=1
colorscheme onedark
set autochdir
let g:airline#extensions#ale#enabled = 1
let g:airline_theme='onedark'
let g:VtrStripLeadingWhitespace = 0
let g:VtrClearEmptyLines = 0
let g:VtrAppendNewline = 0
let g:VtrUseVtrMaps = 1
let g:rspec_command = "call vtrsendcommand('rspec {spec}')"
nnoremap <leader>b :ls<cr>:b<space>
if has("gui_macvim")
      set guifont=Monaco:h13
endif
noremap n nzz
noremap N Nzz

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

function! XTermPasteBegin()
    set pastetoggle=<Esc>[201~
    set paste
    return ""
endfunction
set tags=./tags,tags;$HOME
