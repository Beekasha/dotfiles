local nnoremap = require("beeks.keymap").nnoremap



-- file actions
nnoremap(" w", "<cmd>up<CR>")
nnoremap(" q", "<cmd>q<CR>")
-- file explorer
-- nnoremap("<leader>pv", "<cmd>Ex<CR>")
nnoremap("<C-f>", "<cmd>NvimTreeToggle<CR>")
-- floating terminal
nnoremap("<C-t>", "<cmd>FloatermToggle! cd %:p:h<CR>")



-- git
nnoremap("<space>gb", ":GBrowse<CR>")


-- We can use different key mappings for easy navigation between splits to save
-- a keystroke. So instead of ctrl-w then j, it’s just ctrl-j:
nnoremap ("<C-J>", "<C-W><C-J>")
nnoremap ("<C-K>", "<C-W><C-K>")
nnoremap ("<C-L>", "<C-W><C-L>")
nnoremap ("<C-H>", "<C-W><C-H>")
