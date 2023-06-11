vim.cmd.packadd("packer.nvim")

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use "EdenEast/nightfox.nvim" -- Theme
  use "rebelot/kanagawa.nvim"  --Theme

  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.1',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }                                                              -- Telescope

  use { 'kyazdani42/nvim-web-devicons' }                         -- File icons

  use('nvim-treesitter/nvim-treesitter', { run = ":TSUpdate" })  -- Treesitter

  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' }, -- Required
      {
        -- Optional
        'williamboman/mason.nvim',
        run = function()
          pcall(vim.cmd, 'MasonUpdate')
        end,
      },
      { 'williamboman/mason-lspconfig.nvim' }, -- Optional

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },             -- Required
      { 'hrsh7th/cmp-nvim-lsp' },         -- Required
      { 'L3MON4D3/LuaSnip' },             -- Required
      { 'hrsh7th/cmp-path' },             -- Required
      { 'hrsh7th/cmp-buffer' },           -- Required
      { 'rafamadriz/friendly-snippets' }, -- Required
      { 'saadparwaiz1/cmp_luasnip' },     -- Required
    }
  }

  use {
    "windwp/nvim-autopairs",
    wants = "nvim-treesitter",
    module = { "nvim-autopairs.completion.cmp", "nvim-autopairs" },
    config = function()
      require("config.autopairs").setup()
    end,
  }
end)
