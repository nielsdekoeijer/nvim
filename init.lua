-- global variables
config_path = vim.fn.stdpath('config')
init_path = config_path .. '/init.lua'

-- load bindings
dofile(config_path .. '/' .. 'defaults.lua')
dofile(config_path .. '/' .. 'debug.lua')
dofile(config_path .. '/' .. 'search.lua')
dofile(config_path .. '/' .. 'grep.lua')
dofile(config_path .. '/' .. 'keybinds.lua')
