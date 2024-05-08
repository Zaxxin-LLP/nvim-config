--vim.keymap.set("n", "<leader>fe", vim.cmd.Ex)
vim.g.mapleader = " "

grep = {}
--[[
Normal Keymaps
--]]
vim.keymap.set('n', '<leader>w', ':w<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>q', ':q<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>u', ':u<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>le', ':<CR>', { noremap = true, silent = true })

vim.keymap.set('n', '<leader>fsr',
function() 
    --[[
    --- get a line ---
    local search = vim.fn.input("Search> ")
	local replace = vim.fn.input("Replace> ")
    ------------------
    ]]-- 
    --- to use dressing or other UI plugins which utilises vi.ui.* ---
    vim.ui.input({ prompt = 'Enter Search Key> '},
        function(input)
            local search = tostring(input)
            vim.ui.input({ prompt = 'Enter Replace Key> '}, function(input)
                 local replace = tostring(input)
                 local status err = pcall(function() vim.cmd("%s/".. search .. "/".. replace .. "/g") end)
                 print(err) 
             end)
        end)      
    ------------------------------------------------------------------    
end,
    {desc = "\".\": Expands to any character\n please use escape characters when writing special characters\n"..
        "see :h :substitute for more information"})
--[[
Screen Keymaps
--]]
vim.keymap.set('n', '<leader>hsp', ':split<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>vsp', ':vsplit<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>bt', ':terminal<CR>', { noremap = true, silent = true })

--[[
Visual Keymaps
--]]

--[[
Insert Keymaps
--]]
vim.keymap.set('i', '<C-<BS>>', '<C-w>', { noremap = true, silent = true })

--[[
Nvim Tree Config
--]]
vim.keymap.set('n', '<leader>fe', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>ls', ':ls<CR>', { noremap = true, silent = true })

--[[
Special Keymaps
--]]
vim.keymap.set('n', '<leader>so', function()
    --prompt input for a file
    vim.ui.input({ prompt = 'Enter Filename> '}, 
        function(input)
            local filename = tostring(input)
            --// :lua vim.print(os.getenv("MYVIMRC"))
            local config = string.gsub(os.getenv("MYVIMRC"), "init%.%a+", "") 
            local status err = pcall(function() 
                local command = "\"".. config .. "lua/zaxxin/core/scripts/" .. filename .. ".lua" .. "\""
                -- :lua print("source " .. "\"".. string.gsub(os.getenv("MYVIMRC"), "init.%.%a+"), "") .. "lua/zaxxin/core/scripts/" .. "fold" .. ".lua" .. "\"")
                vim.cmd('source '.. command) 
            end)
            if not status then
                print("something went fucking wrong mate.")
            end
        end) 
 end,
 { desc = "init a keymap from map_modules"}, {noremap = true, silent = true})


