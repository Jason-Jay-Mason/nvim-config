local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local map = vim.api.nvim_set_keymap

--Remap space as leader key
map("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   command_mode = "c",
--   term_mode = "t",

-- Make sure deleting things does not yank them as well because that is redundat functionality with c this is the main thing I hate about vim
map("n", "x", '"_x', opts)
map("v", "x", '"_x', opts)
--saving with ctrs
map("n", "<C-s>", "<cmd>lua vim.lsp.buf.formatting_sync() vim.cmd('w') <cr>", opts)
--discard changes
map("n", "<C-d>", "<cmd>edit!<cr>", opts)
-- bufferline
map("n", "<C-w>", "<cmd>Bdelete<cr>", opts)
-- Navigate buffers
map("n", "<S-l>", ":bnext<CR>", opts)
map("n", "<S-h>", ":bprevious<CR>", opts)

-- keymap("n", "<leader>f", "<cmd>Telescope find_files<cr>", opts)
map("n", "<Leader>f", "<cmd>lua require'telescope.builtin'.find_files()<cr>", opts)
map("n", "<Leader>g", "<cmd>Telescope live_grep<cr>", opts)

-- I would like to get used to the default here so I am disabling for now
--map("i", "lk", "<Esc>", opts)

map("i", "<C-s>", "<Esc> <cmd>lua vim.lsp.buf.formatting_sync() vim.cmd('w') <cr>", opts)
-- Insert --

map("n", "<leader>t", ":NvimTreeToggle<cr>", opts)
