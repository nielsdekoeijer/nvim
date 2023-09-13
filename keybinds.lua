-- leader
vim.g.mapleader = " "

-- reload init.lua
vim.api.nvim_set_keymap('n'
    , '<Leader>dr'
    , [[<Cmd>luafile ]] .. init_path .. [[<CR>]]
    , { noremap = true, silent = true })

-- edit init.lua
vim.api.nvim_set_keymap('n'
    , '<Leader>de'
    , [[<Cmd>e ]] .. init_path .. [[<CR>]]
    , { noremap = true, silent = true })

-- buffer next
vim.api.nvim_set_keymap('n'
    , '<Leader>j'
    , [[<Cmd>bn<CR>]]
    , { noremap = true, silent = true })

-- buffer next
vim.api.nvim_set_keymap('n'
    , '<Leader>k'
    , [[<Cmd>bp<CR>]]
    , { noremap = true, silent = true })

-- write quit
vim.api.nvim_set_keymap('n'
    , '<Leader>w'
    , [[<Cmd>wqa<CR>]]
    , { noremap = true, silent = true })

-- quit
vim.api.nvim_set_keymap('n'
    , '<Leader>q'
    , [[<Cmd>qa<CR>]]
    , { noremap = true, silent = true })

-- show debug log
vim.api.nvim_set_keymap('n'
    , '<Leader>dl'
    , [[<Cmd>lua open_debug_buffer()<CR>]]
    , { noremap = true, silent = true })

-- interactive file search
vim.api.nvim_set_keymap('n'
    , '<Leader>sf'
    , [[<Cmd>lua interactive_search()<CR>]]
    , { noremap = true, silent = true })

-- interactive file grep
vim.api.nvim_set_keymap('n'
    , '<Leader>sg'
    , [[<Cmd>lua interactive_grep()<CR>]]
    , { noremap = true, silent = true })
