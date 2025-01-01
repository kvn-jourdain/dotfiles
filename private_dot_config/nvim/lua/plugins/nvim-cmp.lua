return {
  {
    "zbirenbaum/copilot-cmp",
    config = function()
      require("copilot_cmp").setup({
        event = { "InsertEnter", "LspAttach" },
        fixpairs = true,
        suggestion = { enabled = false },
        panel = { enabled = false },
      })
    end,
  },
  {
    "nvim-cmp",
    dependencies = { "hrsh7th/nvim-cmp" },
    opts = function(_, opts)
      opts.sources = vim.tbl_filter(function(v)
        return not vim.tbl_contains({ "copilot" }, v.name)
      end, opts.sources)
      table.insert(opts.sources, { name = "emoji" })
      table.insert(opts.sources, { name = "supermaven" })
    end,
  },
}
