local separator = "/"
local entre = "<CR>"
local noh = ":noh" .. entre

local function is_line_commented(line, comment_character)
    local pattern = "^%s*" .. vim.pesc(comment_character)
    return string.find(line, pattern) ~= nil
end

local function escape_caracter(char)
    if char == "//" then
        return "\\/\\/"
    end
    return char
end

local function comment_lines()
    local file_extension = vim.fn.expand("%:e")
    local comment_characters = {
        py   = "#",
        sh   = "#",
        conf = "#",
        toml = "#",
        rs   = "//",
        c    = "//",
        cpp  = "//",
        h    = "//",
        js   = "//",
        ts   = "//",
        lua  = "--",
    }

    local comment_character = comment_characters[file_extension]

    if not comment_character then
        comment_character = "#"
    end

    local cursor_line = vim.fn.line(".")
    local line = vim.fn.getline(cursor_line)

    local mode = vim.api.nvim_get_mode().mode
    if mode == "n" then
        vim.fn.expand(":V")
    end

    if is_line_commented(line, comment_character) then
        return ":s" .. separator .. escape_caracter(comment_character) .. " " .. separator .. entre .. noh
    else
        return ":s" ..
            separator .. "\\(^\\)" .. separator .. escape_caracter(comment_character) .. " " .. separator .. entre .. noh
    end
end

vim.keymap.set("v", "<C-c>", comment_lines, { expr = true })
vim.keymap.set("n", "<C-c>", comment_lines, { expr = true })
