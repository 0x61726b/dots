set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

" Install plugins using Plug
"
call plug#begin(stdpath('data') . '/plugged')

" Adds gcc to comment/comment out stuff
Plug 'tpope/vim-commentary'
" Fancy Bottom bar
Plug 'vim-airline/vim-airline' " this causes some slow startup
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
" Smooth scrolling
Plug 'psliwka/vim-smoothie'
" Tagbar
" Plug 'preservim/tagbar'
" Git gutter
Plug 'airblade/vim-gitgutter'

" Seamless integration with tmux pane switching and vim splits
Plug 'christoomey/vim-tmux-navigator'

" Highlights the yanked region
Plug 'machakann/vim-highlightedyank'

" LSP
Plug 'neovim/nvim-lspconfig'
Plug 'glepnir/lspsaga.nvim'

" Code Completion / Snippets / Syntax Highlighting
Plug 'hrsh7th/nvim-compe'
Plug 'L3MON4D3/LuaSnip'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" An informative popup of keybindings i guess?
" Plug 'folke/which-key.nvim'
"
" Dashboard that provides some nice stuff
Plug 'glepnir/dashboard-nvim'

" git-blame like visual studio code
Plug 'APZelos/blamer.nvim'

" git diff
Plug 'sindrets/diffview.nvim'

" Distraction free text editing!
Plug 'Pocco81/TrueZen.nvim'

" Themes
Plug 'rakr/vim-one'
" Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
" Plug 'kaicataldo/material.vim', { 'branch': 'main' }
" Plug 'savq/melange'
" Plug 'rafamadriz/neon'


call plug#end()

" LSP config
source ~/.config/nvim/lsp.vim

" Plugin options
source ~/.config/nvim/plugin_conf.vim

" Themes
source ~/.config/nvim/theming.vim

" General SET stuff
source ~/.config/nvim/general.vim

" Key Remapping configs
source ~/.config/nvim/keys.vim

source ~/.config/nvim/airline.vim
