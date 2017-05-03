set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')


Plugin 'christoomey/vim-tmux-navigator'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" open new split panes to right and bottom, which feels more natural than Vim's default:
set splitbelow
set splitright

if &diff
    syntax off
else
    syntax enable
endif

colorscheme molokai
highlight DiffAdd cterm=none ctermfg=green ctermbg=black
highlight DiffDelete cterm=none ctermfg=darkred ctermbg=black
highlight DiffChange cterm=none ctermfg=none ctermbg=black
highlight DiffText cterm=none ctermfg=black ctermbg=darkyellow





nnoremap <F2> :syntax off<CR>
nnoremap <F3> :syntax enable<CR>
nnoremap <F4> :highlight DiffAdd cterm=none ctermfg=green ctermbg=black<CR> :highlight DiffDelete cterm=none ctermfg=darkred ctermbg=black<CR> :highlight DiffChange cterm=none ctermfg=none ctermbg=black<CR> :highlight DiffText cterm=none ctermfg=black ctermbg=darkyellow<CR>



