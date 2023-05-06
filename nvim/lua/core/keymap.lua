vim.g.mapleader = " "

local opt = {
  noremap = true,
  silent = true,
}

-- 本地变量
local map = vim.api.nvim_set_keymap

map('v', '<', '<gv', opt)
map('v', '>', '>gv', opt)

map('n', '<C-m>', ':NvimTreeToggle<CR>', opt)
map('i', 'jk', '<ESC>', opt)

-- bufferline 左右Tab切换
map("n", "<C-h>", ":BufferLineCyclePrev<CR>", opt)
map("n", "<C-l>", ":BufferLineCycleNext<CR>", opt)
map("n", "<leader>bc", ":bd %<CR>", {noremap = true, silent = true})
map("n", "<C-p>", ":Telescope find_files<CR>", opt)
map("n", "<C-f>", ":Telescope live_grep<CR>", opt)

