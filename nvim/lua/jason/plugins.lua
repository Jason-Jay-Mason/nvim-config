vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")

	-- You can alias plugin names
	use({ "dracula/vim", as = "dracula" })

	-- Language server stuff
	-- Lsp
	use("/williamboman/nvim-lsp-installer")
	use("neovim/nvim-lspconfig")
	--nvim cmp
	use("hrsh7th/nvim-cmp")
	-- Completes words in current buffer
	use("hrsh7th/cmp-buffer")
	-- Autocomplete paths when referencing files
	use("hrsh7th/cmp-path")
	-- Provides neovim api autocomplete in lua files. Nice!
	use("hrsh7th/cmp-nvim-lua")
	-- Auto import on complete etc
	use("hrsh7th/cmp-nvim-lsp")
	-- For snippets
	use("L3MON4D3/LuaSnip")
	use("saadparwaiz1/cmp_luasnip")
	-- For autocomplete
  use("jose-elias-alvarez/null-ls.nvim")

	-- Telescope
	use({
		"nvim-telescope/telescope.nvim",
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	use("nvim-telescope/telescope-media-files.nvim")

	-- Treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})

	-- autopairs
	use("windwp/nvim-autopairs")
	use("windwp/nvim-ts-autotag")

	-- comments
	use("numToStr/Comment.nvim")
	use("JoosepAlviste/nvim-ts-context-commentstring")

	--codi is a coding scratchpad
	use("metakirby5/codi.vim")

	--git
	use("lewis6991/gitsigns.nvim")

	-- dev icons
	use("kyazdani42/nvim-web-devicons")

	-- bufferline
	use("akinsho/bufferline.nvim")
	use("moll/vim-bbye")

	--lualine
	use("hoob3rt/lualine.nvim")

	--nvim tree
	use("kyazdani42/nvim-tree.lua")
end)
