vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.smartindent = true

-- Uncomment to remove blinking cursor / insert mode cursor
-- vim.opt.guicursor = ""

vim.opt.wrap = false
-- commenting this out to make default "\" backslash leader
-- vim.gimapleader = " "
vim.gimapleader = "\\"

-- open new split panes to right and below
vim.o.splitright         = true
vim.o.splitbelow         = true


-- emmet (NEED TO FIGURE OUT HOW TO MOVE THIS)
vim.g.user_emmet_mode='n'
-- m then , will make the tags change
vim.g.user_emmet_leader_key='m'

vim.keymap.set("n", "<leader>fml", "<cmd>CellularAutomaton make_it_rain<CR>")