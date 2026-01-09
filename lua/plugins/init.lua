local plugins = {
	"gruvbox",
	"conform",
	"cord",
	"mason",
	"mini",
	"treesitter",

	"autocmds",
}

for _, plugin in ipairs(plugins) do
	require("plugins." .. plugin)
end
