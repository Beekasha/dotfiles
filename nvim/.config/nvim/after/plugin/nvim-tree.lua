-- empty setup using defaults
require("nvim-tree").setup()

-- disable netrw at the very start of your init.lua (strongly advised)
-- BK NOTE: commenting out to allow :GBrowse
-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- open on startup for directories
local function open_nvim_tree(data)

    -- buffer is a directory
    local directory = vim.fn.isdirectory(data.file) == 1
  
    if not directory then
      return
    end
  
    -- change to the directory
    vim.cmd.cd(data.file)
  
    -- open the tree
    require("nvim-tree.api").tree.open()
end
vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })


