require('telescope').setup{
  defaults = {
  mappings = {
    i = {
        -- map actions.which_key to <C-h> (default: <C-/>)
        -- actions.which_key shows the mappings for your picker,
        -- e.g. git_{create, delete, ...}_branch for the git_branches picker
     ["<C-h>"] = "which_key"
    }
  }
  },
	pickers = {
		buffers = {
			initial_mode = 'normal'
		}
	}
}
local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}
map('n', 'C-g', '<cmd>Telescope live_grep<CR>', opts)
map('', 'ff', '<cmd>Telescope find_files<CR>', opts)
map('', 'bb', '<cmd>Telescope buffers<CR>', opts)
