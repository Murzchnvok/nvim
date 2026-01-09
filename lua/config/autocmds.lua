local autocmd = vim.api.nvim_create_autocmd

autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank({ timeout = 150 })
	end,
})

autocmd("VimResized", {
	callback = function()
		vim.cmd("tabdo wincmd =")
	end,
})
