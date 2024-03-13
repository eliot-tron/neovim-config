" let g:ale_disable_lsp = 1

" plug-Vim conf:
source ~/.config/nvim/plug.vim

" Color scheme
let g:gruvbox_italic=1
colorscheme gruvbox
set termguicolors
let g:airline_theme='gruvbox'

" Random settings
set mouse=a
set number " relativenumber
" set tabstop=4
set clipboard=unnamedplus
set ignorecase smartcase	" Do case smart insensitive matching
" Folding
set foldmethod=indent
set smartindent " Indentation intelligente
set autoindent " Conserve l'indentation sur une nouvelle ligne
set ruler " Affiche la position du curseur
set linebreak

" spell check
set spell
set spelllang=en,fr
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

" Popup option
set pumblend=30
set pumheight=5

" ALE linter options
" ------------------
" let g:ale_sign_error = '●'
" let g:ale_sign_warning = '.'
" let g:ale_fixers = {
		" \'python': ['yapf', 'autoimport', 'add_blank_lines_for_python_control_statements', 'isort', 'autopep8'],
		" \'tex': ['latexindent'],
		" \ '*': ['remove_trailing_lines', 'trim_whitespace'],
		" \}

" YouCompleteMe options
" ---------------------
" set encoding=utf-8
" let g:ycm_autoclose_preview_window_after_insertion = 1
" let g:ycm_autoclose_preview_window_after_completion = 1
" let g:ycm_use_ultisnips_completer = 1

" Deoplete options
" ----------------
" let g:deoplete#enable_at_startup = 1
" let g:deoplete#sources#jedi#show_docstring=1
" autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | silent! pclose | endif
" set splitbelow
" inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
" inoremap <expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"

" CoC options
" -----------

" Use <tab> and <S-tab> to navigate completion list: >
function! CheckBackspace() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]  =~ '\s'
endfunction

" Insert <tab> when previous text is space, refresh completion if not.
inoremap <silent><expr> <TAB>
			\ coc#pum#visible() ? coc#pum#next(1):
			\ CheckBackspace() ? "\<Tab>" :
			\ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

inoremap <silent><expr> <c-space> coc#refresh()

" To make <CR> to confirm selection of selected complete item or notify coc.nvim
" to format on enter, use: >
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#_select_confirm()
			\ : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<a-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<a-k>'


" NERD Commenter options
" ----------------------
filetype plugin on
" Create default mappings
let g:NERDCreateDefaultMappings = 1
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1

" Snippets options
" ----------------
let g:UltiSnipsSnippetDirectories=["UltiSnips", "my_snippets"]
" let g:UltiSnipsJumpForwardTrigger="<a-j>"
" let g:UltiSnipsJumpBackwardTrigger="<a-k>"
" let g:UltiSnipsExpandTrigger='<Tab>'
" to use <cr> as expand trigger - https://github.com/SirVer/ultisnips/issues/376
" let g:UltiSnipsExpandTrigger="<nop>"
" let g:ulti_expand_or_jump_res = 0
" function! <SID>ExpandSnippetOrReturn()
  " let snippet = UltiSnips#ExpandSnippetOrJump()
  " if g:ulti_expand_or_jump_res > 0
    " return snippet
  " else
    " return "\<CR>"
  " endif
" endfunction
" inoremap <expr> <CR> pumvisible() ? "<C-R>=<SID>ExpandSnippetOrReturn()<CR>" : "\<CR>"

" Ranger options
" --------------
"  disable numbers and stuff when in terminal
autocmd TermOpen * setlocal nonumber norelativenumber signcolumn=no
" autocmd TermOpen * setlocal g:indentLine_enabled=0 " TODO: doesn't work
" autocmd TermOpen * IndentLinesDisable  " TODO: works but disable for everything

" Markdown Preview Options
" ------------------------
" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
let g:mkdp_auto_start = 0

" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 1

" set to 1, the vim will refresh markdown when save the buffer or
" leave from insert mode, default 0 is auto refresh markdown as you edit or
" move the cursor
" default: 0
let g:mkdp_refresh_slow = 0

" set to 1, the MarkdownPreview command can be use for all files,
" by default it can be use in markdown file
" default: 0
let g:mkdp_command_for_global = 0

" set to 1, preview server available to others in your network
" by default, the server listens on localhost (127.0.0.1)
" default: 0
let g:mkdp_open_to_the_world = 0

" use custom IP to open preview page
" useful when you work in remote vim and preview on local browser
" more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
" default empty
let g:mkdp_open_ip = ''

" specify browser to open preview page
" default: ''
let g:mkdp_browser = ''

" set to 1, echo preview page url in command line when open preview page
" default is 0
let g:mkdp_echo_preview_url = 0

" a custom vim function name to open preview page
" this function will receive url as param
" default is empty
let g:mkdp_browserfunc = ''

" options for markdown render
" mkit: markdown-it options for render
" katex: katex options for math
" uml: markdown-it-plantuml options
" maid: mermaid options
" disable_sync_scroll: if disable sync scroll, default 0
" sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
"   middle: mean the cursor position alway show at the middle of the preview page
"   top: mean the vim top viewport alway show at the top of the preview page
"   relative: mean the cursor position alway show at the relative positon of the preview page
" hide_yaml_meta: if hide yaml metadata, default is 1
" sequence_diagrams: js-sequence-diagrams options
" content_editable: if enable content editable for preview page, default: v:false
" disable_filename: if disable filename header for preview page, default: 0
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {},
    \ 'content_editable': v:false,
    \ 'disable_filename': 0
    \ }

" use a custom markdown style must be absolute path
" like '/Users/username/markdown.css' or expand('~/markdown.css')
let g:mkdp_markdown_css = ''

" use a custom highlight style must absolute path
" like '/Users/username/highlight.css' or expand('~/highlight.css')
let g:mkdp_highlight_css = ''

" use a custom port to start server or random for empty
let g:mkdp_port = ''

" preview page title
" ${name} will be replace with the file name
let g:mkdp_page_title = '「${name}」'

" recognized filetypes
" these filetypes will have MarkdownPreview... commands
let g:mkdp_filetypes = ['markdown']

" VimTex
let g:tex_flavor = 'latex'
