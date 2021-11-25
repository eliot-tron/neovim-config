let g:ale_disable_lsp = 1

" plug-Vim conf:
source ~/.config/nvim/plug.vim

" Color scheme
let g:gruvbox_italic=1
colorscheme gruvbox
set termguicolors

" Random settings
set mouse=a
set number " relativenumber
" set tabstop=4
set clipboard=unnamedplus
set ignorecase	" Do case insensitive matching
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

" ALE linter options
" ------------------
" let g:ale_sign_error = '●'
" let g:ale_sign_warning = '.'
let g:ale_fixers = {
		\'python': ['yapf'],
		\'tex': ['latexindent'],
		\ '*': ['remove_trailing_lines', 'trim_whitespace'],
		\}

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
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
inoremap <expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"
inoremap <silent><expr> <c-space> coc#refresh()

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
let g:UltiSnipsJumpForwardTrigger="<a-j>"
let g:UltiSnipsJumpBackwardTrigger="<a-k>"
" to use <cr> as expand trigger - https://github.com/SirVer/ultisnips/issues/376
let g:UltiSnipsExpandTrigger="<nop>"
let g:ulti_expand_or_jump_res = 0
function! <SID>ExpandSnippetOrReturn()
  let snippet = UltiSnips#ExpandSnippetOrJump()
  if g:ulti_expand_or_jump_res > 0
    return snippet
  else
    return "\<CR>"
  endif
endfunction
inoremap <expr> <CR> pumvisible() ? "<C-R>=<SID>ExpandSnippetOrReturn()<CR>" : "\<CR>"

" Ranger options
" --------------
"  disable numbers and stuff when in terminal
autocmd TermOpen * setlocal nonumber norelativenumber signcolumn=no
" autocmd TermOpen * setlocal g:indentLine_enabled=0 " TODO: doesn't work
" autocmd TermOpen * IndentLinesDisable  " TODO: works but disable for everything

" VimTex
let g:tex_flavor = 'latex'
