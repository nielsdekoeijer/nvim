-- global variables
Config_path = vim.fn.stdpath('config')
Init_path = Config_path .. '/init.lua'

-- load bindings
dofile(Config_path .. '/' .. 'src/defaults.lua')
dofile(Config_path .. '/' .. 'src/debug.lua')
dofile(Config_path .. '/' .. 'src/search.lua')
dofile(Config_path .. '/' .. 'src/grep.lua')
dofile(Config_path .. '/' .. 'src/lsp.lua')
dofile(Config_path .. '/' .. 'src/keybinds.lua')
