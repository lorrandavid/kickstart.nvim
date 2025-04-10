return {
  {
    "felipeagc/fleet-theme-nvim",
    lazy = false,
    priority = 1000,
    config = function ()
      vim.cmd.colorscheme 'fleet'
    end,
    enabled = false,
  },

  {
    "tjdevries/colorbuddy.nvim",
    lazy = false,
    priority = 1000,
    config = function ()
      vim.cmd.colorscheme 'gruvbuddy'
    end,
    enabled = false,
  },

  {
    "ellisonleao/gruvbox.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme 'gruvbox'
    end,
    enabled = false,
  },

  {
    'sainnhe/gruvbox-material',
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme 'gruvbox-material'
    end,
    enabled = false,
  },

  {
    'sainnhe/sonokai',
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.sonokai_style = 'shusia'
      vim.cmd.colorscheme 'sonokai'
    end,
    enabled = true,
  },

  {
    'catppuccin/nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('catppuccin').setup {
        integrations = {
          cmp = true,
          fidget = true,
          gitsigns = true,
          harpoon = true,
          indent_blankline = {
            enabled = false,
            scope_color = 'sapphire',
            colored_indent_levels = false,
          },
          mason = true,
          native_lsp = { enabled = true },
          noice = true,
          notify = true,
          symbols_outline = true,
          telescope = true,
          treesitter = true,
          treesitter_context = true,
        },
      }

      vim.cmd.colorscheme 'catppuccin-macchiato'

      -- Hide all semantic highlights until upstream issues are resolved (https://github.com/catppuccin/nvim/issues/480)
      for _, group in ipairs(vim.fn.getcompletion('@lsp', 'highlight')) do
        vim.api.nvim_set_hl(0, group, {})
      end
    end,
    enabled = false,
  },

  {
    'rose-pine/neovim',
    name = 'rose-pine',
    lazy = false,
    priority = 1000,
    config = function()
      require('rose-pine').setup {

      }

      vim.cmd.colorscheme 'rose-pine'
    end,
    enabled = false,
  },

  {
    "savq/melange-nvim",
    lazy = false,
    priority = 1000,
    config = function ()
      vim.opt.termguicolors = true
      vim.cmd.colorscheme 'melange'
    end,
    enabled = false,
  },

  {
    "vague2k/vague.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.opt.termguicolors = true
      vim.cmd.colorscheme 'vague'
    end,
    enabled = false,
  },

  {
    'Mofiqul/vscode.nvim',
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      vim.cmd('colorscheme vscode')
    end,
    enabled = false,
  },

  {
    'calind/selenized.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme 'selenized'
    end,
    enabled = false,
  },

  {
    'vague2k/vague.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme 'vague'
    end,
    enabled = false,
  },

  {
    "blazkowolf/gruber-darker.nvim",
    opts = {
      bold = false,
      italic = {
        strings = false,
      },
    },
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme 'gruber-darker'
    end,
    enabled = false,
  },

  {
    'olivercederborg/poimandres.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('poimandres').setup {
        -- leave this setup function empty for default config
        -- or refer to the configuration section
        -- for configuration options
      }
    end,
    enabled = false,
  },

  {
    'datsfilipe/vesper.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme 'vesper'
    end,
    enabled = false,
  },

  {
    "lunacookies/vim-colors-xcode",
    lazy = false,
    priority = 1000,
    config = function()
      vim.defer_fn(function()
        vim.cmd.colorscheme 'xcodedarkhc'
      end, 0)
    end,
    enabled = false,
  }
}
