local vim = vim
local execute = vim.api.nvim_command
local fn = vim.fn
-- ensure that packer is installed
local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
    execute 'packadd packer.nvim'
end
vim.cmd('packadd packer.nvim')
local packer = require'packer'
local util = require'packer.util'
packer.init({
  package_root = util.join_paths(vim.fn.stdpath('data'), 'site', 'pack')
})
--- startup and add configure plugins
packer.startup(function()
  local use = use
  use 'wbthomason/packer.nvim'
	-- набор Lua функций, используется как зависимость в большинстве
  -- плагинов, где есть работа с асинхронщиной
  use 'nvim-lua/plenary.nvim'
  -- Навигация внутри файла по классам и функциям
  use 'majutsushi/tagbar'
  -- Замена fzf и ack
  use { 'nvim-telescope/telescope.nvim',
  requires = { {'nvim-lua/plenary.nvim'} },
  config = function() require'telescope'.setup {} end, } 
  -- конфиги для LSP серверов, нужен для простой настройки и
  -- возможности добавления новых серверов
  use 'neovim/nvim-lspconfig'
  -- use 'yorickpeterse/happy_hacking.vim'
  --use 'ellisonleao/gruvbox.nvim'
	use 'cocopon/iceberg.vim'
  -- зависимости для движка автодополнения
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
	use 'hrsh7th/nvim-cmp'
  -- парсер для всех языков программирования, цветной код как в твоем
  -- любимом IDE
  use {
	'nvim-treesitter/nvim-treesitter',
-- ~/.config/nvim/lua/plugins/init.lua
      run = ':TSUpdate',
      config = function()
   		-- так подгружается конфигурация конкретного плагина
      -- ~/.config/nvim/lua/plugins/treesitter.lua
      require('treesitter').setup {} 
  end,
  }
  use 'hrsh7th/vim-vsnip'    
  --автосохранение
  use({
  	"Pocco81/auto-save.nvim",
  	config = function()
	  	 require("auto-save").setup {
	  		-- your config goes here
	  		-- or just leave it empty :)
	  	 }
	  end,
  })
  end
)
