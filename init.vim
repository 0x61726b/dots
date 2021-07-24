set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

" Install plugins using Plug
"
call plug#begin(stdpath('data') . '/plugged')

" Adds gcc to comment/comment out stuff
Plug 'tpope/vim-commentary'
" Fancy Bottom bar
" Plug 'vim-airline/vim-airline'
" Shows register and values in it on the right side (very nice)
Plug 'junegunn/vim-peekaboo'
" Fuzzing
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Tabs
Plug 'romgrk/barbar.nvim'
Plug 'kyazdani42/nvim-web-devicons'
" Tree
Plug 'kyazdani42/nvim-tree.lua'
" Changes CWD to project root
Plug 'airblade/vim-rooter'
" Start screen
Plug 'mhinz/vim-startify'
" Session Manager
Plug 'tpope/vim-obsession'
" Smooth scrolling
Plug 'psliwka/vim-smoothie'
" Tagbar
" Plug 'preservim/tagbar'
" Git gutter
Plug 'airblade/vim-gitgutter'
" " Themes and Icons
" Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
" Plug 'kaicataldo/material.vim', { 'branch': 'main' }
" Plug 'savq/melange'
" Plug 'rafamadriz/neon'

call plug#end()

" Plugin options
source ~/.config/nvim/plugin_conf.vim

" Themes
source ~/.config/nvim/theming.vim

" General SET stuff
source ~/.config/nvim/general.vim

" Key Remapping configs
source ~/.config/nvim/keys.vim
