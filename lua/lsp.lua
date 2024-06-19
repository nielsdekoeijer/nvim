-- lua lsps
require 'clangd_ls'
require 'lua_ls'
require 'rustanalyzer_ls'
require 'zig_ls'
require 'python_ls'

-- always format on save
vim.lsp.buf.format({ async = false })
vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.format()]]
