return {
  {
    "rebelot/kanagawa.nvim",
    enabled = false,
    config = function()
      -- Default options:
      require('kanagawa').setup({
        compile = false,  -- enable compiling the colorscheme
        undercurl = true, -- enable undercurls
        commentStyle = { italic = true },
        functionStyle = {},
        keywordStyle = { italic = true },
        statementStyle = { bold = true },
        typeStyle = {},
        transparent = false,   -- do not set background color
        dimInactive = false,   -- dim inactive window `:h hl-NormalNC`
        terminalColors = true, -- define vim.g.terminal_color_{0,17}
        colors = {             -- add/modify theme and palette colors
          palette = {},
          theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
        },
        overrides = function(colors) -- add/modify highlights
          return {}
        end,
        theme = "dragon", -- Load "wave" theme when 'background' option is not set
        background = {    -- map the value of 'background' option to a theme
          dark = "wave",  -- try "dragon" !
          light = "lotus"
        },
      })

      -- setup must be called before loading
      vim.cmd("colorscheme kanagawa")
      vim.cmd.colorscheme "kanagawa"
    end,
  },
  {
    "EdenEast/nightfox.nvim",
    enabled = false,
    config = function()
      vim.cmd.colorscheme "nightfox"
    end
  },
  {
    "rose-pine/neovim",
    enabled = false,
    config = function()
      require('rose-pine').setup({
        styles = {
          italic = false,
        },
      })
      vim.cmd.colorscheme "rose-pine-moon"
    end
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    opts = {},
    config = function()
      vim.cmd.colorscheme "tokyonight-moon"
    end
  },
  {
    "ellisonleao/gruvbox.nvim",
    enabled = false,
    config = function()
      vim.cmd.colorscheme "gruvbox"
    end
  }
}
