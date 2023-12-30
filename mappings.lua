---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
  v = {
    [">"] = { ">gv", "indent" },
  },
}

M.telescope = {
  n = {
    ["<leader>fs"] = { "<cmd> Telescope grep_string <CR>", "Grep String" },
  },
}

-- more keybinds!

return M
