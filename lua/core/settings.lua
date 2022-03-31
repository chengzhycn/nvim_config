-------------------------------------------------
-- Neovim configuration
-------------------------------------------------

local g = vim.g                 -- Global variables
local opt = vim.opt             -- Set options

-------------------------------------------------
-- Neovim UI
-------------------------------------------------
opt.number = true               -- Show line number
opt.relativenumber = true       -- Show relative line number
opt.colorcolumn = '120'         -- Line length marker at 120 columns

-------------------------------------------------
-- Tabs, indent
-------------------------------------------------
opt.expandtab = true            -- Use spaces instead of tabs
opt.shiftwidth = 4              -- Shift 4 spaces when tab
opt.tabstop = 4                 -- Set 1 tab equal to 4 spaces
opt.smartindent = true          -- Autoindent new lines

-------------------------------------------------
-- Search
-------------------------------------------------
opt.ignorecase = true           -- Ignore case letters when search
opt.smartcase = true            -- Ignore lowercase for whole pattern

-------------------------------------------------
-- Startup
-------------------------------------------------
opt.shortmess:append "sI"       -- Disable nvim intro
