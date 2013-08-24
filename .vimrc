set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
set nocp
call pathogen#infect()
colorscheme MonokaiDark
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

noremap <Up> ""
noremap! <Up> <Esc>
noremap <Down> ""
noremap! <Down> <Esc>
noremap <Left> ""
noremap! <Left> <Esc>
noremap <Right> ""
noremap! <Right> <Esc>

map go :CtrlP<CR>
map gl :FufLine<CR>
map gb :FufBuffer<CR>
map gh <Leader>bej
map gs :w<CR>
map gj <Leader><Leader>w
map gk <Leader><Leader>b
map qq :q!<CR>
map cc ciw
set hidden
syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized
Bundle 'Valloric/YouCompleteMe'
map :vs :vs<CR>:set cursorline<CR>
map :sp :sp<CR>:set cursorline<CR>
map :sq :vs<CR>:sp<CR>:wincmd l<CR>:sp<CR>
map gg ggzz

autocmd WinEnter * set cursorline
autocmd WinLeave * set nocursorline

map G Gzz
set ignorecase
map n nzz
map N Nzz
map gp gh<CR>
nnoremap + /\$\w\+_<CR>
nnoremap _ f_x~
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn))|venv$',
  \ 'file': '\v\.(exe|so|pyc)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

set autoindent
set smartindent
