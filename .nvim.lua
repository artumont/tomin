-- Configure dartls LSP
vim.lsp.config("dartls", {
	init_options = {
		closingLabels = true,
	},
})
vim.lsp.enable("dartls")

-- Fix Dart indentation behavior locally
vim.api.nvim_create_autocmd("FileType", {
	pattern = "dart",
	callback = function(args)
		vim.opt_local.expandtab = true
		vim.opt_local.shiftwidth = 2
		vim.opt_local.tabstop = 2
		vim.opt_local.smartindent = true
		local ts_indent = pcall(require, "nvim-treesitter.indent")
		if ts_indent then
			vim.opt_local.indentexpr = ""
		end
	end,
})
