require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n","<leader>e", "<CMD>NvimTreeToggle<CR>",{desc = "Toggle Sidebar"})

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
