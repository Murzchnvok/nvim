local files = {
	"options",
	"keymaps",

	"autocmds",
}

for _, file in ipairs(files) do
	require("config." .. file)
end
