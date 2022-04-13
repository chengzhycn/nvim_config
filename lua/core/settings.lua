-------------------------------------------------
-- Neovim configuration
-------------------------------------------------

local g = vim.g                 -- Global variables
local opt = vim.opt             -- Set options
local cmd = vim.cmd             -- Execute Vim commands
local exec = vim.api.nvim_exec 	-- Execute Vimscript
local fn = vim.fn               -- Call Vim functions

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

-- Disable builtins plugins
local disabled_built_ins = {
    "netrw",
    "netrwPlugin",
    "netrwSettings",
    "netrwFileHandlers",
    "gzip",
    "zip",
    "zipPlugin",
    "tar",
    "tarPlugin",
    "getscript",
    "getscriptPlugin",
    "vimball",
    "vimballPlugin",
    "2html_plugin",
    "logipat",
    "rrhelper",
    "spellfile_plugin",
    "matchit"
}

for _, plugin in pairs(disabled_built_ins) do
    g["loaded_" .. plugin] = 1
end

-------------------------------------------------
-- Autocommands
-------------------------------------------------

-- Remove whitespace on save
cmd [[autocmd BufWritePre * :%s/\s\+$//e]]

-- Don't auto commenting new lines
cmd [[autocmd BufEnter * set fo-=c fo-=r fo-=o]]

-- Remove line lenght marker for selected filetypes
cmd [[
autocmd FileType text,markdown,html,xhtml,javascript setlocal cc=0
]]

-- Close quickfix list when leaving quickfix buffer
cmd [[autocmd BufLeave * if  &buftype == "quickfix" | q | endif]]
