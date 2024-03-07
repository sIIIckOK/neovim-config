--bootstrap lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

--plugins
require("lazy").setup(
{
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
        dependencies = { 
            'nvim-lua/plenary.nvim',
        }
	},
	{ 
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},
    { 
        "catppuccin/nvim", 
        name = "catppuccin", 
        priority = 1000 
    },
    {
        "williamboman/mason.nvim",
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    },
	{
		'nvim-lualine/lualine.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons' },
    },
    {
        'nvim-treesitter/nvim-treesitter'
    },
}
)
