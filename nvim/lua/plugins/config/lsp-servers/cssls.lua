local lspconfig, capabilities, on_attach = require("plugins/config/lsp")

lspconfig.cssls.setup({
	capabilities = capabilities,
	on_attach = on_attach,
	filetypes = { "css", "scss", "less" },
})
