-----------------------------------------------------------
-- LeaderF configuration file
-----------------------------------------------------------

-- Plugin: LeaderF
-- url: https://github.com/Yggdroot/LeaderF

local g = vim.g
local cmd = vim.cmd

g.Lf_ShowRelativePath = 0
g.Lf_HideHelp = 1
g.Lf_PreviewResult = {Function = 0, Colorscheme = 1}
g.Lf_NormalMap = {
    File = {{"<ESC>", ':exec g:Lf_py "fileExplManager.quit()"<CR>'}},
    Buffer = {{"<ESC>", ':exec g:Lf_py "bufExplManager.quit()"<CR>'}},
    Mru = {{"<ESC>", ':exec g:Lf_py "mruExplManager.quit()"<CR>'}},
    Tag = {{"<ESC>", ':exec g:Lf_py "tagExplManager.quit()"<CR>'}},
    Function = {{"<ESC>", ':exec g:Lf_py "functionExplManager.quit()"<CR>'}},
    Colorscheme = {{"<ESC>", ':exec g:Lf_py "colorschemeExplManager.quit()"<CR>'}},
}

cmd [[autocmd VimEnter * ++once Leaderf]]
