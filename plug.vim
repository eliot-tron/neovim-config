" plug-vim conf:
" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Declare the list of plugins.

" Git
Plug 'tpope/vim-fugitive'
" Parentheses and stuff
Plug 'tpope/vim-surround'
" A tree explorer
Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'
" Indent lines for guide
" Plug 'nathanaelkane/vim-indent-guides'
" Auto-indent stuff
Plug 'godlygeek/tabular'
Plug 'hynek/vim-python-pep8-indent'
" Retro groove color scheme
Plug 'morhetz/gruvbox'
" Status/tab bar
Plug 'vim-airline/vim-airline'
" Linter
Plug 'w0rp/ale'
" Autocompletion
" had do do `conda install -c anaconda libstdcxx-ng`
" Plug 'valloric/youcompleteme'
Plug 'shougo/deoplete.nvim'
Plug 'deoplete-plugins/deoplete-jedi'
" To Comment stuff
Plug 'scrooloose/nerdcommenter'
" Snipsets
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
" LaTeX
Plug 'lervag/vimtex'
" Auto Pair
Plug 'jiangmiao/auto-pairs'
" Start menu
Plug 'mhinz/vim-startify'
" Highlighting
" Plug 'sheerun/vim-polyglot'
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}

" List ends here. Plugins become visible to Vim after this call.
call plug#end()
