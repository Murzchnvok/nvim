local lspconfig, capabilities, on_attach = require("plugins/config/lsp")

lspconfig.emmet_ls.setup({
	capabilities = capabilities,
	on_attach = on_attach,
	filetypes = { "html", "css", "typescriptreact", "javascriptreact" },
})
