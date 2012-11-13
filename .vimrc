syntax on
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'vividchalk.vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'tsaleh/vim-align'
Bundle 'ervandew/supertab'
Bundle 'kien/ctrlp.vim'
Bundle 'Lokaltog/vim-powerline'
Bundle 'tpope/vim-haml'
Bundle 'kchmck/vim-coffee-script'
Bundle 'nanotech/jellybeans.vim'
Bundle 'bbommarito/vim-slim'
Bundle "ack.vim"
Bundle "The-NERD-tree"
Bundle "genutils"
"Bundle "buffergator"
Bundle "surround.vim"
Bundle "YankRing.vim"
filetype plugin indent on     " required!

set autoread
set number
set smartindent
set nobackup
set incsearch
set hlsearch
set wrapscan
set smartcase ignorecase
set showcmd
set scrolloff=5
set laststatus=2
set statusline=%F%m\ %y\ l:\%l\/%L\ \%p%%\ c:\%c
set expandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2

set colorcolumn=+3,+4,+5     " highlight column after 'textwidth'
"set colorcolumn=+1,+2  " highlight two columns after 'textwidth'
highlight ColorColumn ctermbg=lightgrey guibg=lightgrey

set list
" set listchars=tab:>-,eol:$
set listchars=tab:>-
set wildmode=longest,list
set guioptions=egmrLt
set guifont=Monaco:h12\\,DejaVu\ Sans\ Mono
let mapleader = ","

" --- Backups & Files ---
set backup                 " Enable creation of backup file.
set backupdir=~/.vim/backups " Where backups will go.
set directory=~/.vim/tmp     " Where temporary files will go.

colorscheme jellybeans

highlight comment ctermfg=darkgreen
hi Cursor guifg=#000000 guibg=#888888

set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

autocmd BufRead *.ru set filetype=ruby
autocmd BufRead *.feature set filetype=ruby
autocmd BufNewFile,BufRead COMMIT_EDITMSG set filetype=gitcommit
autocmd BufNewFile,BufRead *.textile setf textile
autocmd BufNewFile,BufRead *.go setf go
augroup mkd
  autocmd BufRead *.mkd  set ai formatoptions=tcroqn2 comments=n:>
  autocmd BufRead *.markdown  set ai formatoptions=tcroqn2 comments=n:>
  autocmd BufRead *.md  set ai formatoptions=tcroqn2 comments=n:>
augroup END

" Remove trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

" Highlight trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
highlight CursorLine guibg=#1D2747
match ExtraWhitespace /\s\+\%#\@<!$/
autocmd BufRead,BufNewFile,ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
autocmd BufRead,BufNewFile,InsertLeave * redraw!

" Press Space to turn off highlighting and clear any message already displayed.
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

map ,cd :cd %:p:h<CR>

" --- mappings ---

" --- NerdTree ---
map <Leader>n :NERDTreeToggle<CR>

" --- CtrlP ---
map <C-t> :CtrlP<CR>

" --- Window control ---
"map <silent> <unique> + <C-w>+
"map <silent> <unique> - <C-w>-

" --- Rspec ---

" --- Align ---

