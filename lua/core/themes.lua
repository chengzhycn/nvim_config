-------------------------------------------------
-- Color schemes configuration file
-------------------------------------------------

-- Load nvim color schemes:
--- OneDark styles: dark, darker, cool, deep, warm, warmer, light
--- url: https://github.com/navarasu/onedark.nvim
require('onedark').setup {
    style = 'darker'
}
require('onedark').load()

-- Import color scheme for other components with:
--- require('themes').colorscheme_name

local M = {}

-- Theme: OneDark
--- See: https://github.com/navarasu/onedark.nvim/blob/master/lua/onedark/colors.lua
M.onedark = {
    bg = '#282c34',
    fg = '#abb2bf',
    pink = '#c678dd',
    green = '#98c379',
    cyan = '#56b6c2',
    yellow = '#e5c07b',
    orange = '#d19a66',
    purple = '#8a3fa0',
    red = '#e86671',
}

return M
