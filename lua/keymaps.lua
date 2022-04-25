-- 快捷键映射

local opts = {noremap = true, silent = true}
-- local term_opts = {silent = true}

-- 缩短函数名
local keymap = vim.api.nvim_set_keymap

-- 把空格键作为 leader 键
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
keymap("n", "<leader>q", ":q<CR>", opts)   -- 退出 Nvim
keymap("n", "<leader>qb", ":bd<CR>", opts) -- 退出当前 buffer
keymap("n", "<leader>w", ":w<CR>", opts)   -- 保存

-- 分屏
keymap("n", "wv", "<C-w>v", opts) -- 垂直分割窗口到右侧
keymap("n", "ws", "<C-w>s", opts) -- 横向分割窗口到下侧

-- 光标在分屏间跳转
keymap("n", "wh", "<C-w>h", opts)
keymap("n", "wj", "<C-w>j", opts)
keymap("n", "wk", "<C-w>k", opts)
keymap("n", "wl", "<C-w>l", opts)
-- 打开位于左侧的文件浏览
keymap("n", "<leader>e", ":Lexplore 30<cr>", opts)

-- 用上下左右箭头调整分屏大小
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

keymap("n", "<S-h>", "^", opts) -- 跳转到行首
keymap("n", "<S-l>", "$", opts) -- 跳转到行尾

-- Buffer 跳转
keymap("n", "<A-l>", ":bnext<CR>", opts)
keymap("n", "<A-h>", ":bprevious<CR>", opts)

-- Insert --
-- 按 jk 返回 normal 模式
keymap("i", "jk", "<ESC>", opts)

-- Visual --
-- ">" "<" 调整缩进
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- 上下移动文本
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
-- keymap("v", "p", '"_dP', opts) -- 只粘贴不复制

-- Visual Block --
-- Move text up and down
-- keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
-- keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
-- keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
-- keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
-- keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
-- keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
-- keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
-- keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)
