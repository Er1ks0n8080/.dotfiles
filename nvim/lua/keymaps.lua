local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}


map('i','fj','<Esc>',{noremap = true})  
 -- упрощенная индентация
 -- отключение стрелочек (только hjkl)
map('', '<up>', '', opts)
map('', '<down>', '', opts)
map('', '<left>', '', opts)
map('', '<right>', '', opts)
