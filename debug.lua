-- debug, a debug scratch
local debug_buffer = vim.api.nvim_create_buf(false, true)
vim.api.nvim_buf_set_lines(debug_buffer, 0, -1, false, { "DEBUG LOG" })

function open_debug_buffer() 
    local current_window = vim.fn.winnr()
    local height = 40
    local width = 100
    local row = math.floor((vim.fn.winheight(current_window) - height) / 2)
    local col = math.floor((vim.fn.winwidth(current_window) - width) / 2)

    vim.api.nvim_open_win(debug_buffer, true, {
        relative = "editor",
        height = height, 
        width = width,  
        col = col,
        row = row, 
        style = "minimal", 
        focusable = true
      })
end

function log(message) 
    vim.api.nvim_buf_set_lines(debug_buffer, -1, -1, false, { os.date("%Y-%m-%d %H:%M:%S") .. " ::",  "-> " .. message })
end
