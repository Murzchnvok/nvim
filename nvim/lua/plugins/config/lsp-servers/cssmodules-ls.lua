local lspconfig, capabilities, on_attach = require("plugins/config/lsp")

lspconfig.cssmodules_ls.setup({
	capabilities = capabilities,
	on_attach = on_attach,
	filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
})
