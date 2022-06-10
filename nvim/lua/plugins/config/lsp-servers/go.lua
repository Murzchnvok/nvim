local lspconfig, capabilities, on_attach = require("plugins/config/lsp")

lspconfig.gopls.setup({
	capabilities = capabilities,
	on_attach = on_attach,
})
