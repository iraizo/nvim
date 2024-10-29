require("config.lazy")
require("lazy")
require("mason").setup()
require("mason-lspconfig").setup()
require'lspconfig'.typst_lsp.setup{
	settings = {
		exportPdf = "onType" -- Choose onType, onSave or never.
        -- serverPath = "" -- Normally, there is no need to uncomment it.
	}
}

vim.cmd("colorscheme rose-pine")

vim.wo.relativenumber = true

local map = vim.keymap.set

map("", "<C-f>", ":Files<CR>")
