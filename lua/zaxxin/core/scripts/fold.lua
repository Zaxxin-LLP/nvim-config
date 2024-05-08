local function params(desc)
    return { desc = "keymap: " .. desc, buffer = true, noremap = true, silent = true}
end

vim.keymap.set({'n', 'v'}, '<leader>zsv', ':mkview', params('Save Fold (:mkview)'))
vim.keymap.set({'n', 'v'}, '<leader>zlv', ':loadview', params('Load Folds (:loadview)')

--[[  --OPTIONS--  --]]
vim.opt.foldcolumn = '3'

