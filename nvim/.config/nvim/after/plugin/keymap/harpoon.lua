local Remap = require("beeks.keymap")
local nnoremap = Remap.nnoremap
local silent = { silent = true }


-- Terminal commands
-- ueoa is first through fourth finger left hand home row.
-- This just means I can crush, with opposite hand, the 4 terminal positions
--
-- These functions are stored in harpoon.  A plugn that I am developing
nnoremap("<Space><Space>g", function() require("harpoon.mark").add_file() end, silent)
nnoremap("<Space><Space>f", function() require("harpoon.ui").toggle_quick_menu() end, silent)

nnoremap("<Space><Space>j", function() require("harpoon.ui").nav_file(1) end, silent)
nnoremap("<Space><Space>k", function() require("harpoon.ui").nav_file(2) end, silent)
nnoremap("<Space><Space>l", function() require("harpoon.ui").nav_file(3) end, silent)
nnoremap("<Space><Space>;", function() require("harpoon.ui").nav_file(4) end, silent)

