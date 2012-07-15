syntax on                 " Enable syntax highlighting

filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
 " required!
 Bundle 'gmarik/vundle'

 " My Bundles here:
 "
 " original repos on github
 Bundle 'tpope/vim-fugitive'
 Bundle 'Lokaltog/vim-easymotion'
 Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
 Bundle 'tpope/vim-rails.git'
 " vim-scripts repos
 Bundle 'L9'
 Bundle 'FuzzyFinder'
 Bundle 'vividchalk.vim'
 " non github repos
 Bundle 'git://git.wincent.com/command-t.git'
 " ...

 filetype plugin indent on     " required!
 "
 " Brief help
 " :BundleList          - list configured bundles
 " :BundleInstall(!)    - install(update) bundles
 " :BundleSearch(!) foo - search(or refresh cache first) for foo
 " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed..

set autoread
set number
set smartindent
set nobackup
set incsearch
" set hlsearch
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

" colorscheme vividchalk
" colorscheme desert
" colorscheme github
highlight comment ctermfg=darkgreen
hi Cursor guifg=#000000 guibg=#888888

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

runtime! macros/matchit.vim

" Remove trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

" Highlight trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
highlight CursorLine guibg=#1D2747
match ExtraWhitespace /\s\+\%#\@<!$/
autocmd BufRead,BufNewFile,ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
autocmd BufRead,BufNewFile,InsertLeave * redraw!


map ,cd :cd %:p:h<CR>

" --- mappings ---
map <Leader>b :BufExplorer<CR>
map <Leader>f :Find<space>
map <Leader>n :NERDTreeToggle<CR>
" map <Leader>t :tabnew<CR>

" --- Window control ---
map <silent> <unique> + <C-w>+
map <silent> <unique> - <C-w>-

" --- Erlang ---
map <Leader>gf :0r ~/.vim/templates/gen_server_template.full<CR>:set filetype=erlang<CR>
map <Leader>gm :0r ~/.vim/templates/gen_server_template.mini<CR>:set filetype=erlang<CR>

" --- Rspec ---
map <Leader>ofs :%s/ it / xit <CR>''?xit<CR>x:w<CR>
map <Leader>ons :%s/ xit / it /<CR>'':w<CR>

" --- Align ---

" From inside a hash, autoindents, then aligns on =>
nmap <silent> <Leader>ih <ESC>:AlignPush<CR>:AlignCtrl lp1P1l<CR>mmviB:Align =><CR>:AlignPop<CR>'mvaB=

" Autoformats a single line hash
nmap <Leader>fh <ESC>^:s/{/{\r/<CR>:s/}$/\r}<CR>vaB:s/\v,\s*:/,\r:/g<CR><Leader>ih

" Aligns visual block on =
vmap <silent> <Leader>i= <ESC>:AlignPush<CR>:AlignCtrl lp1P1l<CR>:'<,'>Align =<CR>:AlignPop<CR>

" Aligns visual block on ,
vmap <silent> <Leader>i, <ESC>:AlignPush<CR>:AlignCtrl lp0P1l<CR>:'<,'>Align ,<CR>:AlignPop<CR>

" Aligns visual block on (
vmap <silent> <Leader>i( <ESC>:AlignPush<CR>:AlignCtrl lp0P0l<CR>:'<,'>Align (<CR>:AlignPop<CR>
