-------------------------------------------------
-- Keymaps of Neovim and Plugins
-------------------------------------------------

-------------------------------------------------
-- Common settings
-------------------------------------------------

-- Change leader key to comma
vim.g.mapleader = ','

-- Define local map function
local function map(mode, lhs, rhs, opts)
    local options = { noremap = true, silent = true }
--    if opts then
--        options = vim.tbl_extend('force', options, opts)
--    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-------------------------------------------------
-- Neovim keymaps
-------------------------------------------------

-- Clear search highlight with <leader>c
map('n', '<leader>c', ':nohl<CR>')

-- Move around splits using Ctrl + {h,j,k,l}
_G.win_move = function(key)
    local curr_win = vim.fn.winnr()
    vim.api.nvim_command("wincmd "..key)
    if curr_win == vim.fn.winnr() then
        if key == 'j' or key == 'k' then
            vim.api.nvim_command("wincmd s")
        else
            vim.api.nvim_command("wincmd v")
        end
        vim.api.nvim_command("wincmd "..key)
    end
end

map('n', '<C-h>', ':lua win_move("h")<CR>')
map('n', '<C-j>', ':lua win_move("j")<CR>')
map('n', '<C-k>', ':lua win_move("k")<CR>')
map('n', '<C-l>', ':lua win_move("l")<CR>')

-------------------------------------------------
-- Applications and Plugins keymaps
-------------------------------------------------

-- Nvim-tree
map('n', '<C-n>', ':NvimTreeToggle<CR>')        -- open/close
map('n', '<leader>r', ':NvimTreeRefresh<CR>')   -- refresh
map('n', '<leader>n', ':NvimTreeFindFile<CR>')  -- search file
