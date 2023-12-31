local opts = { noremap = true, silent = true }
-- local term_opts = { silent = true }


-- Shorten function name
local keymap = vim.api.nvim_set_keymap
--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Normal --
keymap("n", "x", '"_x', opts) -- for not copying the word when deleting with x

-- Better window navigation
keymap("n", "<C-l>", "<C-w>l", opts)
keymap("n", "<C-h>", "<C-w>h", opts) -- C stands for CTRL
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)

-- Mapping the Lexplorer command to Space + e
-- keymap("n", "<leader>e", ":Lex 22<cr>", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts) -- C stands for CTRL
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)


-- keymap for nvim-tree
keymap("n", "<leader>e", ":NvimTreeToggle <CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts) -- S stands for SHIFT
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- buffer delete
keymap("n", "<leader>;", ":bdelete <CR>", opts)
-- For removing the search highlights
keymap("n", "<leader>nh", ":nohl<CR>", opts)


-- Move text up and down
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts) -- A stands for ALT
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)

-- Insert --
-- Press jk fast to exit insert mode
keymap("i", "jk", "<ESC>", opts)
keymap("i", "kj", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts) -- A stands for ALT
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

--Split window
keymap("n", "vs", ":vsplit <CR>", opts)
keymap("n", "ss", ":split <CR>", opts)
keymap("n", "<leader>dl", ":close <CR>", opts)
-- keymap for saving the buffer
keymap("n", "<leader>s", ":w <cr>", opts)



keymap("n", "<leader>lg", ":Telescope live_grep <CR>", opts)
keymap("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", opts)
keymap("n", "<leader>fb", "<cmd>Telescope buffers<cr>", opts)
keymap("n", "gD", "cmd>lua vim.lsp.buf.declaration()<CR>", opts)
keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)

keymap("n", "<leader>zn", ":ZenMode <CR>", opts) -- zenmode
keymap("n", "<leader>0", ":Git <CR>", opts)      -- fugitive
keymap("n", "<leader>9", "gg<S-V><S-G> <CR>", opts)
-- ys w and "", () , '' for Surrounding using vim surround
-- ds "", () , '' for deleting the Surroundin
