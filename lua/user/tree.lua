local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap
keymap("n", "<leader>t", ":NvimTreeResize 30 <CR>", opts)
