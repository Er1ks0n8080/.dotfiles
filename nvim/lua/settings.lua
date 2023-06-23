local cmd = vim.cmd             
local exec = vim.api.nvim_exec  
local g = vim.g                 
local opt = vim.opt   
local map = vim.api.nvim_set_keymap
-----------------------------------------------------------
--Mapings
-----------------------------------------------------------
map('n', '<F5>', '<cmd>TagbarToggle<CR>', {noremap = true,silent=true})
-----------------------------------------------------------
opt.number = true                   -- Включаем нумерацию строк
opt.relativenumber = true           -- Вкл. относительную нумерацию строк
opt.so=999                          -- Курсор всегда в центре экрана
opt.undofile = true                 -- Возможность отката назад
opt.splitright = true               -- vertical split вправо
opt.splitbelow = true               -- horizontal split вниз
opt.swapfile = false
-----------------------------------------------------------
-- Цветовая схема
-----------------------------------------------------------
vim.opt.termguicolors = true
vim.o.background = "dark"
cmd('colorscheme gruvbox')
-----------------------------------------------------------
-- Табы и отступы
-----------------------------------------------------------
cmd([[
filetype indent plugin on
syntax enable
noswapfile
]])
opt.expandtab = true      -- use spaces instead of tabs
opt.shiftwidth = 2        -- shift 4 spaces when tab
opt.tabstop = 2           -- 1 tab == 4 spaces
opt.smartindent = true    -- autoindent new lines
