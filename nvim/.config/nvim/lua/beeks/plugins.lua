local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {

    "sbdchd/neoformat",

    -- Simple plugins can be specified as strings
    "TimUntersberger/neogit",

    -- TJ created lodash of neovim
    "nvim-lua/plenary.nvim",
    "nvim-lua/popup.nvim",
    "nvim-telescope/telescope.nvim",

    -- All the things
    "neovim/nvim-lspconfig",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/nvim-cmp",
    --"tzachar/cmp-tabnine", { run = "./install.sh" }
    "onsails/lspkind-nvim",
    "nvim-lua/lsp_extensions.nvim",
    "glepnir/lspsaga.nvim",
    "simrat39/symbols-outline.nvim",
    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip",

    -- Primeagen doesn"t create lodash
    "ThePrimeagen/git-worktree.nvim",
    "ThePrimeagen/harpoon",

    "mbbill/undotree",

    -- Colorscheme section
    -- "gruvbox-community/gruvbox"
    -- "morhetz/gruvbox"
    "ellisonleao/gruvbox.nvim",
    "sainnhe/gruvbox-material",
    "folke/tokyonight.nvim",
    "olimorris/onedarkpro.nvim",
    "edeneast/nightfox.nvim",
    "catppuccin/nvim",
    "Mofiqul/vscode.nvim",
    "tomasiser/vim-code-dark",
    "marko-cerovac/material.nvim",
    "sainnhe/sonokai",
    "rebelot/kanagawa.nvim",
    -- Fancy start screen with cow
    "mhinz/vim-startify",

    -- "nvim-treesitter/nvim-treesitter", {
    --     run = "TSUpdate"
    -- },

    "nvim-treesitter/playground",
    "nvim-treesitter/nvim-treesitter",
    "romgrk/nvim-treesitter-context",

    "mfussenegger/nvim-dap",
    "rcarriga/nvim-dap-ui",
    "theHamsta/nvim-dap-virtual-text",

    -- Git section
    "tpope/vim-fugitive",
    "cedarbaum/fugitive-azure-devops.vim",
    "shumphrey/fugitive-gitlab.vim",
    "tpope/vim-rhubarb",
    -- "airblade/vim-gitgutter",
    "lewis6991/gitsigns.nvim",
    "kdheepak/lazygit.nvim",




	-- text editing
	-- comments
	"tpope/vim-commentary",
    -- surround
	-- "kylechui/nvim-surround",
	"tpope/vim-surround",
	-- multiple cursors,
	"mg979/vim-visual-multi",
    -- find and replace
    "nvim-pack/nvim-spectre",
    -- search and jump to text
    "ggandor/leap.nvim",


    -- filetree
    "nvim-tree/nvim-tree.lua",
    -- optional, for file icons
    -- "nvim-tree/nvim-web-devicons",
    -- statusline
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons', opt = true }
    },

    -- floating terminal
    "voldikss/vim-floaterm",
	-- allow terminal Esc
	"sychen52/smart-term-esc.nvim",

    -- Autocomplete stuff
    -- "ms-jpq/coq_nvim"
    --  {'neoclide/coc.nvim', branch = 'release'}
    -- "neoclide/coc.nvim", {branch = "release"}
    -- "neoclide/coc-html"
    -- "neoclide/coc-emmet"
    -- "neoclide/coc-json"
    -- "neoclide/coc-css"
    -- "neoclide/coc-tabnine"
    -- This includes JS as well
    -- "neoclide/coc-tsserver"
    -- "neoclide/coc-python"
    -- improved JS indentation+syntax highlighting
    -- "pangloss/vim-javascript"
    "mxw/vim-jsx",
    "mattn/emmet-vim",



    -- code formatting
    -- prettier
    "neovim/nvim-lspconfig",
    "jose-elias-alvarez/null-ls.nvim",
    "MunifTanjim/prettier.nvim",







    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
     {
        'VonHeikemen/lsp-zero.nvim',
        dependencies = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    },

    -- colors on hex values
    "NvChad/nvim-colorizer.lua",


     {
        'KadoBOT/nvim-spotify', 
        dependencies = 'nvim-telescope/telescope.nvim',
        config = function()
            local spotify = require'nvim-spotify'
    
            spotify.setup {
                -- default opts
                status = {
                    update_interval = 10000, -- the interval (ms) to check for what's currently playing
                    format = '%s %t by %a' -- spotify-tui --format argument
                }
            }
        end,
        run = 'make'
    },


    -- QOL
    -- smooth scrolling
    "psliwka/vim-smoothie",
    -- line indents
    "Yggdroot/indentLine",
    
    -- split resizer
     { "beauwilliams/focus.nvim", config = function() require("focus").setup() end },
    -- Or lazy load with `module` option. See further down for info on how to lazy load when using FocusSplit commands
    -- Or lazy load this plugin by creating an arbitrary command using the cmd option in packer.nvim
    --  { 'beauwilliams/focus.nvim', cmd = { "FocusSplitNicely", "FocusSplitCycle" }, module = "focus",
    --     config = function()
    --         require("focus").setup({hybridnumber = true})
    --     end
    -- }

	--[[
    --
	-- Lazy loading:
	-- Load on specific commands
	 {'tpope/vim-dispatch', opt = true, cmd = {'Dispatch', 'Make', 'Focus', 'Start'}}
	-- Load on an autocommand event
	 {'andymass/vim-matchup', event = 'VimEnter'}
	-- Load on a combination of conditions: specific filetypes or commands
	-- Also run code after load (see the "config" key)
	 {
	'w0rp/ale',
	ft = {'sh', 'zsh', 'bash', 'c', 'cpp', 'cmake', 'html', 'markdown', 'racket', 'vim', 'tex'},
	cmd = 'ALEEnable',
	config = 'vim.cmd[[ALEEnable]]--[['
	}
	-- Plugins can have dependencies on other plugins
	 {
	'haorenW1025/completion-nvim',
	opt = true,
	dependencies = {{'hrsh7th/vim-vsnip', opt = true}, {'hrsh7th/vim-vsnip-integ', opt = true}}
	}
	-- Plugins can also depend on rocks from luarocks.org:
	 {
	'my/supercoolplugin',
	rocks = {'lpeg', {'lua-cjson', version = '2.1.0'}}
	}
	-- You can specify rocks in isolation
	_rocks 'penlight'
	_rocks {'lua-resty-http', 'lpeg'}
	-- Local plugins can be included
	 '~/projects/personal/hover.nvim'
	-- Plugins can have post-install/update hooks
	 {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install', cmd = 'MarkdownPreview'}
	-- Post-install/update hook with neovim command
	 { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
	-- Post-install/update hook with call of vimscript function with argument
	 { 'glacambre/firenvim', run = function() vim.fn['firenvim#install'](0) end }
	-- Use specific branch, dependency and run lua file after load
	use {
	'glepnir/galaxyline.nvim', branch = 'main', config = function() require'statusline' end,
	dependencies = {'kyazdani42/nvim-web-devicons'}
	}
	-- Use dependency and run lua function after load
	{
	'lewis6991/gitsigns.nvim', dependencies = { 'nvim-lua/plenary.nvim' },
	config = function() require('gitsigns').setup() end
	}
	-- You can specify multiple plugins in a single call
	{'tjdevries/colorbuddy.vim', {'nvim-treesitter/nvim-treesitter', opt = true}}
	-- You can alias plugin names
	{'dracula/vim', as = 'dracula'}
	end)
	--]]

    -- fun stuff
    -- animation
    "eandrju/cellular-automaton.nvim",




}

local opts = {}

require("lazy").setup(plugins, opts)
