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
