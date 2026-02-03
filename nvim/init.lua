vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.wo.number = true                                                                      -- number lines enable
vim.g.mapleader = " "                                                                     -- leader set to space
vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left<CR>', {})                   -- Neotree toggler
vim.keymap.set('n', '<leader>cc', '<cmd>ClaudeCode<CR>', { desc = 'Toggle Claude Code' }) -- Claude code initiator
vim.api.nvim_create_autocmd("BufWritePre", {
  callback = function()
    vim.lsp.buf.format()
  end,
})

require("config.lazy")
