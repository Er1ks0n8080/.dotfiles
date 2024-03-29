local lspconfig = require('lspconfig')
local util = require('lspconfig/util')
--
local function config(_config)
  return vim.tbl_deep_extend('force', {
--    capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities()),
    capabilities = require('cmp_nvim_lsp').default_capabilities(),
  },_config or {})
end

local on_attach = require('plugins.lsp')

-- https://github.com/golang/tools/blob/master/gopls/doc/vim.md#neovim-install

lspconfig.pyright.setup(config({
    on_attach = on_attach
}))
lspconfig.rust_analyzer.setup {
    capabilities = capabilities,
    on_attach = on_attach,
    cmd = {
      "rustup", "run", "stable","rust-analyzer"
    }
}
lspconfig.clangd.setup {}
