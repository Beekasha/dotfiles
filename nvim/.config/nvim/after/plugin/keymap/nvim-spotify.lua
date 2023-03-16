local Remap = require("beeks.keymap")
local nnoremap = Remap.nnoremap

-- vim.api.nvim_set_keymap("n", "<leader>sn", "<Plug>(SpotifySkip)", { silent = true }) -- Skip the current track
-- vim.api.nvim_set_keymap("n", "<leader>sp", "<Plug>(SpotifyPause)", { silent = true }) -- Pause/Resume the current track
-- vim.api.nvim_set_keymap("n", "<leader>ss", "<Plug>(SpotifySave)", { silent = true }) -- Add the current track to your library
-- vim.api.nvim_set_keymap("n", "<leader>so", ":Spotify<CR>", { silent = true }) -- Open Spotify Search window
-- vim.api.nvim_set_keymap("n", "<leader>sd", ":SpotifyDevices<CR>", { silent = true }) -- Open Spotify Devices window
-- vim.api.nvim_set_keymap("n", "<leader>sb", "<Plug>(SpotifyPrev)", { silent = true }) -- Go back to the previous track
-- vim.api.nvim_set_keymap("n", "<leader>sh", "<Plug>(SpotifyShuffle)", { silent = true }) -- Toggles shuffle mode

nnoremap(" sn", "<Plug>(SpotifySkip)", { silent = true }) -- Skip the current track"
nnoremap(" sp", "<Plug>(SpotifyPause)", { silent = true }) -- Pause/Resume the current track
nnoremap(" ss", "<Plug>(SpotifySave)", { silent = true }) -- Add the current track to your library
nnoremap(" so", ":Spotify<CR>", { silent = true }) -- Open Spotify Search window
nnoremap(" sd", ":SpotifyDevices<CR>", { silent = true }) -- Open Spotify Devices window
nnoremap(" sb", "<Plug>(SpotifyPrev)", { silent = true }) -- Go back to the previous track
nnoremap(" sh", "<Plug>(SpotifyShuffle)", { silent = true }) -- Toggles shuffle mode
