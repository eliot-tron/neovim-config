" LaTeX specific commands

setlocal tabstop=2
let g:vimtex_compiler_engine='lualatex'
let g:vimtex_fold_manual = 'true'
let g:vimtex_view_method = "zathura"
let g:vimtex_quickfix_open_on_warning = 0
let g:vimtex_fold_enabled = 1
" let g:vimtex_indent_enabled = 0
let g:vimtex_compiler_progname = 'nvr'
let g:vimetex_quickfix_method = "pplatex"
" let g:vimetex_au

" To enable automatic completion with youcompleteme
if !exists('g:ycm_semantic_triggers')
	let g:ycm_semantic_triggers = {}
endif
au VimEnter * let g:ycm_semantic_triggers.tex=g:vimtex#re#youcompleteme

nnoremap <leader>t :VimtexTocToggle <cr>
