return {
  "catppuccin/nvim",
  tag = "v1.7.0",
  lazy = false,
  priority = 1000,
  config = function()
    local catppuccin = require("catppuccin")

    catppuccin.setup({
      flavour = "macchiato",
      transparent_background = true,
      Cmp = {
        completion = {
          border = "rounded",
        },
        documentation = {
          border = "rounded",
        },
      },
    })

    vim.cmd("colorscheme catppuccin")
  end,
}
