vim.pack.add({
	"https://github.com/mason-org/mason.nvim",
	"https://github.com/neovim/nvim-lspconfig",
	"https://github.com/mason-org/mason-lspconfig.nvim",
})

require("mason").setup()
require("mason-lspconfig").setup()

vim.diagnostic.config({
	update_in_insert = false,
	virtual_text = {
		prefix = "●",
		spacing = 4,
	},

	signs = {
		active = true,
		text = {
			[vim.diagnostic.severity.ERROR] = "▎",
			[vim.diagnostic.severity.WARN] = "▎",
			[vim.diagnostic.severity.INFO] = "▎",
			[vim.diagnostic.severity.HINT] = "▎",
		},
	},
})
