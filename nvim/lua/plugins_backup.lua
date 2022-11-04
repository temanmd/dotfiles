return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- speeding up
  use { 'lewis6991/impatient.nvim' }
  use { 'nathom/filetype.nvim' }
  use { 'tpope/vim-sensible' }

  use { 'nvim-lua/plenary.nvim' }

  use { 'kyazdani42/nvim-web-devicons' }

  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons'
    },
    config = function()
      require('nvim-tree').setup {}
    end
  }

  use {
    'akinsho/bufferline.nvim',
    config = function()
      require("bufferline").setup{}
    end,
    tag = "v2.*",
    requires = 'kyazdani42/nvim-web-devicons',
  }

  use { 'ntpeters/vim-better-whitespace' }
  use 'tpope/vim-sleuth'

  use {
    'lukas-reineke/indent-blankline.nvim',
    config = function()
      require('indent_blankline').setup {
        char = '┊',
        show_trailing_blankline_indent = false,
      }
    end
  }

  require('plugins.treesitter').run(use)
  require('plugins.lsp').run(use)
  require('plugins.specific').run(use)


  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use {
    'nvim-telescope/telescope.nvim',
    config = function()
      local telescope = require('telescope')
      telescope.load_extension('fzf')
      telescope.load_extension('refactoring')

      local trouble = require("trouble.providers.telescope")

      telescope.setup {
        defaults = {
          sorting_strategy = "ascending",
          mappings = {
            -- restore default behavior
            i = {
              ['<C-u>'] = false,
              ['<C-d>'] = false,
              ["<c-t>"] = trouble.open_with_trouble
            },
            n = {
              ["<c-t>"] = trouble.open_with_trouble
            }
          },
        },
        pickers = {
          buffers = {
            ignore_current_buffer = true,
            sort_mru = true
          }
        },
      }
    end,
    requires = { 'nvim-lua/plenary.nvim' }
  }

end)
