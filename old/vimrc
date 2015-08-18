set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()

" This is the Vundle package, which can be found on GitHub.
" For GitHub repos, you specify plugins using the
" 'user/repository' format
Plugin 'gmarik/Vundle.vim'

" We could also add repositories with a ".git" extension
Plugin 'scrooloose/nerdtree.git'

" better ruby syntax highlighting
Plugin 'vim-ruby/vim-ruby'

" Need newer VIM version
" Plugin 'Valloric/YouCompleteMe'

Plugin 'bling/vim-airline'

Plugin 'altercation/vim-colors-solarized'

" End up just using autoclose
"Plugin 'tpope/vim-surround'
Plugin 'Townk/vim-autoclose'

Plugin 'tpope/vim-sensible'

" make json pretty
Plugin 'elzr/vim-json'

" Now we can turn our filetype functionality back on
filetype plugin indent on


" quick tweaks
nmap <silent> <c-n> :NERDTreeToggle<CR>
syntax enable
set laststatus=2

" make ruby tabs be 2 spaces
autocmd Filetype ruby setlocal ts=2 sw=2 expandtab

" make vim look good w iterm2 and solarized
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans = 1
set t_Co=256
colorscheme solarized
