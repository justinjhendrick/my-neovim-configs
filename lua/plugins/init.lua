return {
    { 'rust-lang/rust.vim' },
    { 'mrcjkb/rustaceanvim', version = '^7', lazy = false, },
    { 'nvim-treesitter/nvim-treesitter', lazy = false, build = ':TSUpdate' },
    {
      "folke/trouble.nvim",
      opts = {
        modes = {
          diagnostics = {
            filter = {
              severity = { min = vim.diagnostic.severity.ERROR },
            },
          },
        },
      },
      cmd = "Trouble",
      keys = {
        {
          "<leader>xx",
          "<cmd>Trouble diagnostics toggle<cr>",
          desc = "Diagnostics (Trouble)",
        },
        {
          "<leader>xX",
          "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
          desc = "Buffer Diagnostics (Trouble)",
        },
        {
          "<leader>cs",
          "<cmd>Trouble symbols toggle focus=false<cr>",
          desc = "Symbols (Trouble)",
        },
        {
          "<leader>cl",
          "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
          desc = "LSP Definitions / references / ... (Trouble)",
        },
        {
          "<leader>xL",
          "<cmd>Trouble loclist toggle<cr>",
          desc = "Location List (Trouble)",
        },
        {
          "<leader>xQ",
          "<cmd>Trouble qflist toggle<cr>",
          desc = "Quickfix List (Trouble)",
        },
      },
    },
}
