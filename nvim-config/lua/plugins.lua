return {
  {
    "folke/lazy.nvim",
    lazy = false, -- make sure we load this during startup
    priority = 1000, -- load this before all other plugins
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    config = function()
      require("catppuccin").setup({
        flavour = "macchiato", -- Set the flavor to Macchiato
        transparent_background = true, -- Enable transparent background
        integrations = {
          cmp = true,
          gitsigns = true,
          nvimtree = true,
          telescope = true,
          treesitter = true,
          -- Add other integrations you might use
        }
      })
      vim.cmd.colorscheme("catppuccin") -- Apply the colorscheme
    end
  },
  -- Add your other plugins here
}
