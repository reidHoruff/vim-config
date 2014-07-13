set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"bundles here
"Bundle 'gmarik/vundle'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'ludovicchabant/vim-lawrencium'
"Bundle 'FuzzyFinder'
"Bundle 'desert-warm-256' 
Bundle 'Valloric/YouCompleteMe'
"Bundle 'mxw/vim-jsx'
"Bundle 'pangloss/vim-javascript'

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
map go :CtrlPRoot<CR>
map gl :CtrlPLine<CR>
map gk :CtrlPBuffer<CR>
map gh <Leader>bej
map gs :w<CR>
map qq :q!<CR>
map cc ciw
map G Gzz
map gp gh<CR>
map gf :TBGW<CR>
map gU gUiwe
map gu guiwe
map * <C-]>zz
"noremap '' ''zz
nnoremap + /\$\w\+_<CR>
nnoremap _ f_x~
map ? I//<Esc>

"allows hidden bufers (dont have to save before hiding)
set hidden

"syntax coloring
syntax enable
colorscheme Tomorrow-Night
"colorscheme mustang
"colorscheme codeschool
"colorscheme 256-grayvim


"ignore search/replace case
set ignorecase
set hlsearch
set incsearch

"all things relating to tabs
set expandtab
"set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent
set smartindent
"set solarized_termcolors 

"ctrl+p stuff
let g:ctrlp_custom_ignore = {
 \ 'dir':  '\v[\/](\.(git|hg|svn))|venv|__tests__$',
 \ 'file': '\v\.(exe|so|pyc|png|jpg|ico||gif)$',
 \ 'link': 'some_bad_symbolic_links',
 \ }

let g:ctrlp_by_filename = 1

map <SPACE> <Plug>(easymotion-s2)

"fuck swap files
set noswapfile

"macvim stuff
"set noantialias
set guioptions-=r
set guioptions-=R
set go-=L
"set guifont=andale\ mono
set guifont=menlo
set vb

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/

"nerd tree
map gn :NERDTreeToggle<CR>

"save on escape key
"imap <Esc> <Esc>:w<Cr>
"vmap <Esc> <Esc>:w<Cr>


let g:NERDTreeWinSize = 60
set sessionoptions=buffers

function! MakeSession()
  mksession! ~/.mysession.vim
endfunction

function! LoadSession()
  source ~/.mysession.vim
  "hi StatusLine ctermbg=white ctermfg=darkgray
  "hi StatusLineNC ctermbg=black ctermfg=red
  highlight Search ctermbg=yellow ctermfg=black
endfunction


au VimEnter * nested if argc() == 0 | call LoadSession() | endif
au VimLeave * if argc() == 0 | call MakeSession() | endif

highlight Search ctermbg=yellow ctermfg=black
map gt :TagbarToggle<CR>
let g:ctrlp_max_files = 0
set number

"hi StatusLineNC ctermbg=black ctermfg=red
"hi StatusLine ctermbg=white ctermfg=darkgray

map <Tab> <C-W><C-W>

set t_Co=256

"hi Pmenu ctermbg=gray ctermfg=black
"hi PmenuSel ctermbg=white ctermfg=black
map gd gd``

set mouse=a
set modifiable
map <2-LeftMouse> gd
set nocursorline
set ttymouse=sgr


let g:ycm_min_num_identifier_candidate_chars = 2
let g:ycm_min_num_of_chars_for_completion = 2
let g:ycm_filetype_specific_completion_to_disable = {'_php':1, 'javascript':1}

"highlight DiffAdd    cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
"highlight DiffDelete cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
"highlight DiffChange cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
"highlight DiffText   cterm=bold ctermfg=10 ctermbg=88 gui=none guifg=bg guibg=Red

noremap < <<
noremap > >>

let g:bufExplorerShowDirectories=0
let g:bufExplorerShowRelativePath=1 
let g:bufExplorerSortBy='mru'

autocmd BufRead,BufNewFile *.php set filetype=_php
set tags=tags;/
