-- lua lsps
dofile(Config_path .. '/src/' .. 'lsp/clangd.lua')
dofile(Config_path .. '/src/' .. 'lsp/lua_ls.lua')
dofile(Config_path .. '/src/' .. 'lsp/rustanalyzer_ls.lua')
dofile(Config_path .. '/src/' .. 'lsp/zig_ls.lua')
dofile(Config_path .. '/src/' .. 'lsp/python_ls.lua')

-- always format on save
-- vim.lsp.buf.format({ async = false })
-- vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.format()]]
