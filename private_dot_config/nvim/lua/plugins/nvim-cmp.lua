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
}
