require("config.lazy")

vim.opt.number = true

-- whitespace
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.expandtab = true

-- show tabs as »
vim.o.list = true
vim.o.listchars = 'tab:» '

vim.o.guifont = "FiraCode Nerd Font Mono"

vim.lsp.enable("rust-analyzer")

vim.diagnostic.config({
    severity_sort = true,
    underline = { severity = vim.diagnostic.severity.ERROR },
    signs = { severity = vim.diagnostic.severity.ERROR },
    jump = { severity = vim.diagnostic.severity.ERROR },
    virtual_text = { severity = vim.diagnostic.severity.ERROR },
    update_in_insert = false, -- Optional: do not update diagnostics while in insert mode
    underline = true, -- Optional: underline diagnostics in the code
})
