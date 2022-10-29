require("nvim-lsp-installer").setup({})

local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.colorProvider = {
	dynamicRegistration = true,
}

local buf_map = vim.api.nvim_buf_set_keymap
local opts = { noremap = true, silent = true }

vim.diagnostic.config({
	virtual_text = true,
	signs = true,
	underline = true,
	update_in_insert = false,
	severity_sort = false,
	virtual_text = {
		-- ■ ● x ▎
		prefix = "●",
	},
})

local signs = { Error = "▎", Warn = "▎", Hint = "▎", Info = "▎" }
for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

local on_attach = function(client, bufnr)
	buf_map(bufnr, "n", "<Leader>lD", ":lua vim.lsp.buf.declaration()<CR>", opts)
	buf_map(bufnr, "n", "<Leader>ld", ":lua vim.lsp.buf.definition()<CR>", opts)
	buf_map(bufnr, "n", "<Leader>lh", ":lua vim.lsp.buf.hover()<CR>", opts)
	buf_map(bufnr, "n", "<Leader>lr", ":lua vim.lsp.buf.rename()<CR>", opts)
	buf_map(bufnr, "n", "<Leader>lR", ":lua vim.lsp.buf.references()<CR>", opts)
	buf_map(bufnr, "n", "<Leader>lc", ":lua vim.lsp.buf.code_action()<CR>", opts)

	if client.server_capabilities.colorProvider then
		require("document-color").buf_attach(bufnr)
	end
end

local servers = {
	"clangd",
	"cssls",
	"cssmodules_ls",
	"emmet_ls",
	"gopls",
	"html",
	"pyright",
	"tailwindcss",
	"tsserver",
}
for _, server in pairs(servers) do
	lspconfig[server].setup({
		capabilities = capabilities,
		on_attach = on_attach,
	})
end

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
