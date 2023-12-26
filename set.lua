vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true


vim.opt.termguicolors = true

--disable virtual_text since its redundant due to lsp_lines
vim.diagnostic.config({
    virtual_text = false,
})
