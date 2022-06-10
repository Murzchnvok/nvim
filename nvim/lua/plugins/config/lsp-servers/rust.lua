local lspconfig, capabilities, on_attach = require("plugins/config/lsp")

require("rust-tools").setup({
	server = {
		capabilities = capabilities,
		on_attach = on_attach,
		settings = {
			["rust-analyzer"] = {
				assist = {
					importPrefix = "by_self",
				},
				cargo = {
					loadOutDirsFromCheck = true,
					allFeatures = true,
				},
				procMacro = {
					enable = true,
				},
				checkOnSave = {
					command = "clippy",
				},
			},
		},
	},
})
