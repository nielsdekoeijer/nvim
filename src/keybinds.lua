-- leader
vim.g.mapleader = " "

-- reload init.lua
vim.api.nvim_set_keymap('n'
, '<Leader>dr'
, [[<Cmd>luafile ]] .. Init_path .. [[<CR>]]
, { noremap = true, silent = true })

-- edit init.lua
vim.api.nvim_set_keymap('n'
, '<Leader>de'
, [[<Cmd>e ]] .. Init_path .. [[<CR>]]
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
, [[<Cmd>lua Open_debug_buffer()<CR>]]
, { noremap = true, silent = true })

-- interactive file search
vim.api.nvim_set_keymap('n'
, '<Leader>sf'
, [[<Cmd>lua Interactive_search("e")<CR>]]
, { noremap = true, silent = true })

vim.api.nvim_set_keymap('n'
, '<Leader>ss'
, [[<Cmd>lua Interactive_search("vsp")<CR>]]
, { noremap = true, silent = true })

-- interactive file grep
vim.api.nvim_set_keymap('n'
, '<Leader>sg'
, [[<Cmd>lua Interactive_grep()<CR>]]
, { noremap = true, silent = true })

-- lsp keybinds
vim.api.nvim_create_autocmd('LspAttach', {
    callback = function()
        vim.keymap.set('n', 'gd', [[<Cmd>lua vim.lsp.buf.definition()<CR>]], { buffer = true, noremap = true })
        vim.keymap.set('n', 'go', [[<Cmd>lua vim.lsp.buf.type_definition()<CR>]], { buffer = true, noremap = true })
        vim.keymap.set('n', 'gi', [[<Cmd>lua vim.lsp.buf.implementation()<CR>]], { buffer = true, noremap = true })
        vim.keymap.set('n', '<leader>ri', [[<Cmd>lua vim.lsp.buf.hover()<CR>]], { buffer = true, noremap = true })
        vim.keymap.set('n', '<leader>rr', [[<Cmd>lua vim.lsp.buf.rename()<CR>]], { buffer = true, noremap = true })
    end,
})
--
