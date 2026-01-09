vim.pack.add({ "https://github.com/nvim-mini/mini.nvim" })

local modules = {
	"comment",
	"completion",
	"cursorword",
	"diff",
	"files",
	"git",
	"icons",
	"indentscope",
	"hipatterns",
	"move",
	"notify",
	"pairs",
	"pick",
	"snippets",
	"splitjoin",
	"statusline",
	"statusline",
	"surround",
	"tabline",
	"trailspace",
}

for _, mod in ipairs(modules) do
	if mod == "notify" then
		require("mini." .. mod).setup({
			lsp_progress = { enable = false },
		})
	else
		require("mini." .. mod).setup()
	end
end
