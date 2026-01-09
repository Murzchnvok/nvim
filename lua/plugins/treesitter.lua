vim.pack.add({ "https://github.com/nvim-treesitter/nvim-treesitter" })

require("nvim-treesitter").setup({
	highlight = {
		enable = true,
	},

	indent = {
		enable = true,
	},
})
