return {
    "hrsh7th/nvim-cmp",
    event = "insertEnter",
    dependencies = {
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "l3M0N4D3/LuaSnip",
        "saadparwaiz1/cmp_luasnip",
        "rafamadriz/friendly-snippets",
    },

    config = function()
        local cmp = require("cmp")
        
        local luasnip = require("luasnip")
        
        
}
