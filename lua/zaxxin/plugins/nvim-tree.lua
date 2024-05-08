return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  
  config = function()
    -- 
    local function config(bufnr)
	local api = require "nvim-tree.api"
    --
    local function opts(desc)
    	return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end

    -- default mappings
    api.config.mappings.default_on_attach(bufnr)
    --custom mappings
    vim.keymap.set('n', '<C-u>', api.tree.change_root_to_parent,        opts('Up'))
    vim.keymap.set('n', '<C-d>', api.tree.change_root_to_node,          opts('Down'))
    vim.keymap.set('n', '?',     api.tree.toggle_help,                  opts('Help')) 
    end

    require("nvim-tree").setup {
	on_attach = config,
    view = {
            number = true,
            relativenumber = true,
        },
    }
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
 end,
}
