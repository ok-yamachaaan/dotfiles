return {
    {
        "vhyrro/luarocks.nvim",
        priority = 1000, -- Very high priority is required, luarocks.nvim should run as the first plugin in your config.
        config = true,
    },
    { 
        "danymat/neogen", 
        config = true,
    },
    {
        "windwp/nvim-autopairs",
        event = "VeryLazy",
        config = function() require("nvim-autopairs").setup {} end
    },
    {
        'tpope/vim-surround',
        event = 'VeryLazy',
    },
}
