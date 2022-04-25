-------------------------------------------------
-- Nvim terminal configuration file
-------------------------------------------------

-- Plugin: toggleterm.nvim
-- url: https://github.com/akinsho/toggleterm.nvim

require("toggleterm").setup {
    size = function (term)
        if term.direction == "horizontal" then
            return 15
        elseif term.direction == "vertical" then
            return vim.o.columns * 0.4
        end
    end,
    open_mapping = [[<c-\>]],
    direction = "float", -- 'vertical' | 'horizontal' | 'tab' | 'float'
}

-- toggle lazygit windows. need lazygit command
local Terminal  = require('toggleterm.terminal').Terminal
local lazygit = Terminal:new({
    cmd = "lazygit",
    dir = "git_dir",
    direction = "float",
    float_opts = {
        border = "double",
    },
})

function _lazygit_toggle()
    lazygit:toggle()
end

