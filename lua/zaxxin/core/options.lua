vim.wo.relativenumber = true
vim.wo.number = true

vim.opt.tabstop = 4 -- A TAB character looks like 4 spaces
--vim.opt.expandtab = true -- Pressing the TAB key will insert spaces instead of a TAB character
vim.opt.softtabstop = 4 -- Number of spaces inserted instead of a TAB character
vim.opt.shiftwidth = 4 -- Number of spaces inserted when indenting

vim.opt.wrap = false

--vim.api.nvim_create_autocmd('FileType', {pattern = { "*" },
vim.api.nvim_create_autocmd({'BufEnter', 'BufWinEnter'}, {
    pattern = {"*.c", "*.lua"},
    callback = function(args)
    local ft = vim.bo[args.buf].filetype
    if ft == 'c' then
        vim.opt_local.cindent = true
    elseif ft == 'lua' then
        vim.opt_local.autoindent = false
    end
end
})

vim.opt.clipboard = "unnamedplus"
--[[
opt = { tabstop = 4,
	expandtab = false,
	softtabstop = 4,
	shiftwidth = 4,
	}

options = {
	opt = {
		-- set to true or false etc.
		relativenumber = true, -- sets vim.opt.relativenumber
		number = true, -- sets vim.opt.number
		spell = false, -- sets vim.opt.spell
		signcolumn = "auto", -- sets vim.opt.signcolumn to auto
		wrap = false, -- sets vim.opt.wrap
		shiftwidth = 4,
		tabstop = 4,
	},
	formatting = {
		-- control auto formatting on save
		format_on_save = {
			enabled = false, -- enable or disable format on save globally
		},
	},
}
--]]

