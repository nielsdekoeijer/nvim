-- search, aka homebrew telescope

function interactive_search()
    -- assert fzf installed
    if vim.fn.system("which fzf") == 1 then 
        vim.api.nvim_out_write("command 'fzf' non-zero return, please install fzf!\n")
        return
    end

    -- compute buffer dimensions
    local current_window = vim.fn.winnr()
    local height = 20 
    local width = 80 
    local row = math.floor((vim.fn.winheight(current_window) - height) / 2)
    local col = math.floor((vim.fn.winwidth(current_window) - width) / 2)
    local buf = vim.api.nvim_create_buf(false, true)

    -- make buffer
    vim.api.nvim_open_win(buf, true, {
        relative = "editor",
        width = width,
        height = height,
        col = col,
        row = row
    })

    -- our command
    local dir_path = vim.fn.expand('%:p:h')
    local cmd = "fzf -d " .. dir_path

    log("running 'interactive_search' with cmd '" .. cmd .. "'")

    -- run
    local job_id = vim.fn.termopen(cmd, { buffer = buf,
        on_exit = function(_, exit_code)
            vim.api.nvim_win_close(0, true)
            log("ran 'interactive_search' with exit code '" .. exit_code .. "'")
            if exit_code == 0 then
                -- get output
                local output = vim.api.nvim_buf_get_lines(buf, 0, 1, false)

                -- parse output to vim command
                local current_line = vim.fn.line('.')
                local path = "e " .. dir_path .. "/" .. output[1]
                log("parsed into 'interactive_search' vim command '" .. path .. "'")

                -- execute
                vim.api.nvim_command(path)
            else 
                log("error in 'interactive_search', non-zero exit code...")
            end
        end,
    })

    -- start inserted (no idea how this works)
    vim.cmd [[startinsert]]
end
