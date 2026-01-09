local lua_folders = {
	"config",
	"plugins",
}

for _, folder in ipairs(lua_folders) do
	require(folder)
end
