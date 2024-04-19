" plug-vim conf:
" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Declare the list of plugins.
" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
" Parentheses and stuff
Plug 'tpope/vim-surround'
" A tree explorer
Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'
" A sidebar
Plug 'preservim/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
" A sidesearch
Plug 'ddrscott/vim-side-search'
" Indent lines for guide
" Plug 'nathanaelkane/vim-indent-guides'
" Auto-indent stuff
Plug 'godlygeek/tabular'
Plug 'hynek/vim-python-pep8-indent'
" Retro groove color scheme
Plug 'morhetz/gruvbox'
" Status/tab bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Linter
" Plug 'w0rp/ale'
" Autocompletion
" had do do `conda install -c anaconda libstdcxx-ng`
" Plug 'valloric/youcompleteme'
" Plug 'shougo/deoplete.nvim'
" Plug 'deoplete-plugins/deoplete-jedi'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" need to run coc-install coc-snippets
" Debuger
Plug 'mfussenegger/nvim-dap'
Plug 'mfussenegger/nvim-dap-python'
Plug 'nvim-neotest/nvim-nio'
Plug 'rcarriga/nvim-dap-ui'

" To go faster
Plug 'easymotion/vim-easymotion'

" To Comment stuff
Plug 'scrooloose/nerdcommenter'
" Snipsets
" Plug 'sirver/ultisnips'
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
" Makdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

" Nerdfont Icons
Plug 'ryanoasis/vim-devicons'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()
