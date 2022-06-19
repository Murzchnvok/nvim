require("dapui").setup({
	layouts = {
		{
			elements = {
				{ id = "scopes", size = 0.25 },
				{ id = "breakpoints", size = 0.25 },
				{ id = "stacks", size = 0.25 },
				{ id = "watches", size = 0.25 },
			},
			size = 50,
			position = "left",
		},
		{
			elements = {},
			size = 10,
			position = "bottom",
		},
	},
})
