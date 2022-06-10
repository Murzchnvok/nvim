local lspconfig, capabilities, on_attach = require("plugins/config/lsp")

lspconfig.clangd.setup({
	capabilities = capabilities,
	on_attach = on_attach,
})
