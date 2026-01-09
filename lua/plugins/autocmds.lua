local autocmd = vim.api.nvim_create_autocmd

local commands = {
	"Cord update",
	"TSUpdate",
}

autocmd("PackChanged", {
	callback = function(event)
		if event.data.kind == "update" then
			for _, command in ipairs(commands) do
				local ok = pcall(vim.cmd, command)
				if ok then
					vim.notify(command .. " ok", vim.log.levels.INFO)
				else
					vim.notify(command .. " fail", vim.log.levels.WARN)
				end
			end
		end
	end,
})
