local separator = "/"
local entre = "<CR>"
local noh = ":noh" .. entre


local function replace()
    local selectedWord = vim.fn.expand('<cword>')
    local replace_by = vim.fn.input("replace -> " .. selectedWord .. " by: ")
    return ":%s" .. separator .. selectedWord .. separator .. replace_by .. separator .. "g" .. entre .. noh
end


vim.keymap.set("n", "<leader>r", replace, { expr = true })
