set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()

" This is the Vundle package, which can be found on GitHub.
" For GitHub repos, you specify plugins using the
" 'user/repository' format
Plugin 'gmarik/vundle'

" We could also add repositories with a ".git" extension
Plugin 'scrooloose/nerdtree.git'

" Need newer VIM version
" Plugin 'Valloric/YouCompleteMe'

Plugin 'bling/vim-airline'

Plugin 'altercation/vim-colors-solarized'

Plugin 'Townk/vim-autoclose'

" End up just using autoclose
"Plugin 'tpope/vim-surround'

Plugin 'tpope/vim-sensible'

" Now we can turn our filetype functionality back on
filetype plugin indent on


" be pretty
nmap <silent> <c-n> :NERDTreeToggle<CR>
syntax enable
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans = 1
set t_Co=256

colorscheme solarized
