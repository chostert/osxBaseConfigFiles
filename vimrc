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

Plugin 'Townk/vim-autoclose'

Plugin 'tpope/vim-sensible'

" make json pretty
Plugin 'elzr/vim-json'

" make vim pretty 4 python
Plugin 'klen/python-mode'

" Now we can turn our filetype functionality back on
filetype plugin indent on

" quick tweaks
nmap <silent> <c-n> :NERDTreeToggle<CR>
syntax enable
set laststatus=2
filetype on                          " try to detect filetypes 

" set globally so it covers things like .proto files (which get linted)
" set other specific filetypes to overwrite this below.
set tabstop=4
set shiftwidth=4
set expandtab

" ruby settings: place this after the globals as they overwrite them 4 ruby
" files for ts and sw
autocmd Filetype ruby setlocal ts=2 sw=2 expandtab

" python settings
" highlight things via autogroup instead of that annoying vertical line
autocmd FileType python set colorcolumn=0
" make the lint know 100 is our max and to not nag us about >80. 
let g:pymode_options_max_line_length = 100

" make vim look good w iterm2 and solarized
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans = 1
set t_Co=256
colorscheme solarized


" python-mode syntax highlighting
let python_highlight_all = 1
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all
" python-mode Don't autofold code
let g:pymode_folding = 0

" bail on rope, makes git dirs dirty 
let g:pymode_rope = 0

augroup vimrc_autocmds
    autocmd!
    " highlight characters past column 100
    autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType python match Excess /\%100v.*/
    autocmd FileType python set nowrap
    augroup END

