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

--- default mappings
local list = {
  { key = {"<CR>", "o", "<2-LeftMouse>"}, action = "edit" },
  { key = "<C-e>",                        action = "edit_in_place" },
  { key = {"O"},                          action = "edit_no_picker" },
  { key = {"<2-RightMouse>", "<C-]>"},    action = "cd" },
  { key = "<C-v>",                        action = "vsplit" },
  { key = "<C-x>",                        action = "split" },
  { key = "<C-t>",                        action = "tabnew" },
  { key = "<",                            action = "prev_sibling" },
  { key = ">",                            action = "next_sibling" },
  { key = "P",                            action = "parent_node" },
  { key = "<BS>",                         action = "close_node" },
  { key = "<Tab>",                        action = "preview" },
  { key = "K",                            action = "first_sibling" },
  { key = "J",                            action = "last_sibling" },
  { key = "I",                            action = "toggle_git_ignored" },
  { key = "H",                            action = "toggle_dotfiles" },
  { key = "R",                            action = "refresh" },
  { key = "a",                            action = "create" },
  { key = "d",                            action = "remove" },
  { key = "D",                            action = "trash" },
  { key = "r",                            action = "rename" },
  { key = "<C-r>",                        action = "full_rename" },
  { key = "x",                            action = "cut" },
  { key = "c",                            action = "copy" },
  { key = "p",                            action = "paste" },
  { key = "y",                            action = "copy_name" },
  { key = "Y",                            action = "copy_path" },
  { key = "gy",                           action = "copy_absolute_path" },
  { key = "[c",                           action = "prev_git_item" },
  { key = "]c",                           action = "next_git_item" },
  { key = "-",                            action = "dir_up" },
  { key = "s",                            action = "system_open" },
  { key = "q",                            action = "close" },
  { key = "g?",                           action = "toggle_help" },
  { key = "W",                            action = "collapse_all" },
  { key = "S",                            action = "search_node" },
  { key = "<C-k>",                        action = "toggle_file_info" },
  { key = ".",                            action = "run_file_command" }
}

-- LeaderF
map('n', '<F2>', ":LeaderfFunction!<CR>")       -- view mode for functions
map('n', '<F3>', ":LeaderfFunction<CR>")        -- fuzzy mode for functions
map('n', '<F4>', ":LeaderfBuffer<CR>")          -- fuzzy mode for buffer
map('n', '<F5>', ":LeaderfFile<CR>")            -- fuzzy mode for file
map('n', '<F6>', ":LeaderfMru<CR>")             -- fuzzy mode for mru file

map('n', '<leader>g', ":Leaderf rg")            -- ripgrep search
