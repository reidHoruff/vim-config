set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"bundles here
Bundle 'gmarik/vundle'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'FuzzyFinder'
Bundle 'desert-warm-256' 
Bundle 'Valloric/YouCompleteMe'

filetype plugin indent on

"pane navigation
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

"no arrow keys!
noremap <Up> ""
noremap! <Up> <Esc>
noremap <Down> ""
noremap! <Down> <Esc>
noremap <Left> ""
noremap! <Left> <Esc>
noremap <Right> ""
noremap! <Right> <Esc>

"some useful shortcuts
map go :CtrlP<CR>
map gl :FufLine<CR>
map gb :FufBuffer<CR>
map gh <Leader>bej
map gs :w<CR>
map gj <Leader><Leader>w
map gk <Leader><Leader>b
map qq :q!<CR>
map cc ciw
map gg ggzz
map G Gzz
map n nzz
map N Nzz
map gp gh<CR>
map :vs :vs<CR>:set cursorline<CR>
map :sp :sp<CR>:set cursorline<CR>
map gnu:NERDTreeToggle<CR>
map [ }
map ] {
map gU gUiwe
map gu guiwe
nnoremap + /\$\w\+_<CR>
nnoremap _ f_x~

"allows hidden bufers (dont have to save before hiding)
set hidden

"syntax coloring
syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme molokai

"highlight line on current pane
autocmd WinEnter * set cursorline
autocmd WinLeave * set nocursorline

"ignore search/replace case
set ignorecase
set hlsearch

"all things relating to tabs
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent
set smartindent

"ctrl+p stuff
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn))|venv$',
  \ 'file': '\v\.(exe|so|pyc)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

"fuck swap files
set noswapfile

"macvim stuff
set noantialias
set guioptions-=r
set guioptions-=R
set go-=L
set guifont=andale\ mono
set vb

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

"nerd tree
map gn :NERDTreeToggle<CR>

"save on escape key
imap <Esc> <Esc>:w<Cr>
vmap <Esc> <Esc>:w<Cr>
map <Esc> <Esc>:w<Cr>

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
