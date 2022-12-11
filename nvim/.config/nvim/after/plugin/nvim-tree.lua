-- empty setup using defaults
require("nvim-tree").setup()

-- disable netrw at the very start of your init.lua (strongly advised)
-- BK NOTE: commenting out to allow :GBrowse
-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

