set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin  'Lokaltog/vim-powerline'
Plugin  'Mizuchi/STL-Syntax'

call vundle#end()
filetype plugin indent on

nmap <C-M> :<C-U>CtrlP<CR>

" if &t_Co > 1
    syntax enable
    syntax on
    filetype plugin on
" endif
set ts=4    " tab stop
set shiftwidth=4    " shift width
set expandtab
set noautochdir
set nocompatible    " Use Vim defaults
set autoindent  " auto indent
set ignorecase      " ignore case
set incsearch       " display when you still typing
set hlsearch        " hight light search
set wrapscan      " stop the scan at the end of file
set wrap
set hidden
set number
set ruler   "display cursor position in the right corner of the vim window
set title
" set titlestring=%t%(\ %M%)%(\ (%{expand(\"%:~:.:h\")})%)%(\ %a%)
" set titlestring=%F
set tags=.tags,tags
set cscopequickfix=s-,c-,d-,i-,t-,e-,g-
cs add cscope.out
nmap <C-T> :tabnew<CR>
nmap <S-T> :tabnew %<CR>
nmap <C-M> :<C-U>CtrlP<CR>
nmap <C-C> :ClearAllCtrlPCaches<CR>
nmap <C-H> :hide<CR>
nmap <C-N> :tabnext<CR>
nmap <C-P> :tabprev<CR>
nmap <C-X> :w<CR>
nmap <C-J> :cn<CR>
nmap <C-K> :cp<CR>
nmap <C-L> :cd .<CR>
nmap <C-F10> :cs add cscope.out<CR>
nmap <C-F11> :!cscope -Rbq<CR>
nmap <C-F12> :!ctags -f .tags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
nmap <LEADER>n :nohlsearch<CR>
nmap <LEADER>s :cs find s <C-R>=expand("<cword>")<CR><CR>	
nmap <LEADER>g :cs find g <C-R>=expand("<cword>")<CR><CR>	
nmap <LEADER>c :cs find c <C-R>=expand("<cword>")<CR><CR>	
nmap <LEADER>t :cs find t <C-R>=expand("<cword>")<CR><CR>	
nmap <LEADER>e :cs find e <C-R>=expand("<cword>")<CR><CR>	
nmap <LEADER>f :cs find f <C-R>=expand("<cfile>")<CR><CR>	
nmap <LEADER>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <LEADER>d :cs find d <C-R>=expand("<cword>")<CR><CR>	


set laststatus=2
let g:Powerline_colorscheme='solarized256'
set t_Co=256
set background=dark
colorscheme solarized
let g:solarized_termcolors=256
" set gcr=a:block-blinkon0


" set cursorline
" set cursorcolumn
set guifont=YaHei\ Consolas\ Hybrid\ 11.5



