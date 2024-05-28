-- vim.cmd([[
-- source ~/.config/nvim/init.vim
-- ]])

-- plug-vim conf
vim.cmd([[
source ~/.config/nvim/plug.vim
]])

-- load exteral files
require("coc-settings")
require("treesitter-settings")
require("orgmode-settings")
require("dap-settings")
require("nerdcommenter-settings")
require("mappings")

-- Color scheme
vim.g.gruvbox_italic = 1
vim.opt.termguicolors = true
vim.cmd 'colorscheme gruvbox'
vim.g.airline_theme = 'gruvbox'

-- Random settings
vim.opt.encoding = 'UTF-8'
vim.opt.mouse = 'a'
vim.opt.number = true
vim.opt.clipboard = 'unnamedplus'
vim.opt.smartcase = true
vim.opt.foldmethod = 'expr'
vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.ruler = true
vim.opt.linebreak = true

-- spell check
vim.opt.spell = true
vim.opt.spelllang = 'en,fr'

-- popup option
vim.opt.pumblend = 30
vim.opt.pumheight = 5

vim.cmd 'filetype plugin on'

-- disable numbers and stuff when in terminal
vim.api.nvim_create_autocmd('TermOpen', {
	pattern = "*",
	command = "setlocal nonumber norelativenumber signcolumn=no"
})

-- VimTex
vim.g.tex_flavor = 'latex'
