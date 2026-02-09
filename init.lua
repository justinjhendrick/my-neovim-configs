require("config.lazy")

-- whitespace within the code
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.expandtab = true
-- show tabs as »
vim.o.list = true
vim.o.listchars = 'tab:» '

-- whitespace around the code
vim.opt.number = true
vim.opt.wrap = false
vim.opt.signcolumn = "yes"
vim.opt.colorcolumn = "121"

vim.o.guifont = "FiraCode Nerd Font Mono"

-- Rust specific options
vim.lsp.enable("rust-analyzer")

-- Avoid diagnostic overload. Set minimum severities
vim.diagnostic.config({
    severity_sort = true,
    float =        { severity = { min = vim.diagnostic.severity.ERROR } },
    signs =        { severity = { min = vim.diagnostic.severity.WARN } },
    virtual_text = { severity = { min = vim.diagnostic.severity.ERROR } },
    jump =         { severity = { min = vim.diagnostic.severity.ERROR } },
    update_in_insert = false,
    underline = true,
})
