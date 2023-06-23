require('plugins/cmp')
require('plugins/init')
require('plugins/lsp')
require('plugins/lspconfig')
require('keymaps')
require('settings')

function _G.dump(...)
    local objects = vim.tbl_map(vim.inspect, {...})
    print(unpack(objects))
end
