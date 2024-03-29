-- https://github.com/kyazdani42/nvim-tree.lua

local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
    vim.notify("Can not find 'nvim-tree'!")
    return
end

local options = {
    -- Keeps the cursor on the first letter of the filename when moving in the tree
    hijack_cursor = true,
    -- 完全禁止内置 netrw
    disable_netrw = true,
    -- git 状态图标
    git = {
        enable = true,
    },
    -- Change cwd of nvim-tree to that of new buffer's when opening nvim-tree.
    respect_buf_cwd = true,
    -- Changes the tree root directory on `DirChanged` and refreshes the tree.
    -- also required by 'project.nvim'
    sync_root_with_cwd = true,
    update_focused_file = {
        enable = true,
        update_root = true,
    },
    view = {
        adaptive_size = true,
        width = 25,
    },
    renderer = {
        highlight_git = true,
    },
}

nvim_tree.setup(options)
