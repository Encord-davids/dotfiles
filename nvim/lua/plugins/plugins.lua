local packer = require "plugins.packer"

local function plugins(use)
    use {"wbthomason/packer.nvim"}

    use {
        "kyazdani42/nvim-web-devicons",
        config = [[require("nvim-web-devicons").setup({default = true})]]
    }

    use {"nvim-lua/plenary.nvim", module = "plenary"}
    use {"nvim-lua/popup.nvim", module = "popup"}

    -- LSP
    -- use(
    --     {
    --         "neovim/nvim-lspconfig",
    --         opt = true,
    --         event = "BufReadPre",
    --         wants = {"nvim-lsp.json", "nvim-lsp-ts-utils", "null-ls.nvim", "lua-dev.nvim"},
    --         config = function()
    --             require("config.lsp")
    --         end,
    --         requires = {
    --             "folke/nvim-lsp.json",
    --             "jose-elias-alvarez/nvim-lsp-ts-utils",
    --             "jose-elias-alvarez/null-ls.nvim",
    --             "folke/lua-dev.nvim"
    --         }
    --     }
    -- )

    -- use(
    --     {
    --         "hrsh7th/nvim-compe",
    --         event = "InsertEnter",
    --         opt = true,
    --         config = function()
    --             require("config.compe")
    --         end,
    --         wants = {"LuaSnip"},
    --         requires = {
    --             {
    --                 "L3MON4D3/LuaSnip",
    --                 wants = "friendly-snippets",
    --                 config = function()
    --                     require("config.snippets")
    --                 end
    --             },
    --             "rafamadriz/friendly-snippets",
    --             {
    --                 "windwp/nvim-autopairs",
    --                 config = function()
    --                     require("config.autopairs")
    --                 end
    --             }
    --         }
    --     }
    -- )

    use "sbdchd/neoformat"
    use "tpope/vim-repeat"
    use "kevinhwang91/nvim-bqf"
    use "tpope/vim-commentary"
    use {"folke/todo-comments.nvim", config = [[require("plugins.todo-comments")]]}
    use {
        "simrat39/symbols-outline.nvim",
        cmd = {"SymbolsOutline"},
        config = [[require("plugins.symbol-outline")]]
    }
    -- use {"dstein64/startuptime.vim", cmd = "StartupTime"}

    use {
        "glepnir/galaxyline.nvim",
        branch = "main",
        config = [[require("plugins.galaxyline")]],
        requires = "kyazdani42/nvim-web-devicons"
    }

    use {
        "kyazdani42/nvim-tree.lua",
        config = [[require("plugins.tree")]],
        cmd = {"NvimTreeFindFile"}
    }

    use {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
        opt = true,
        event = "BufRead",
        requires = {"windwp/nvim-ts-autotag"},
        config = [[require("plugins.treesitter")]]
    }

    -- Git
    use {
        "tpope/vim-fugitive",
        config = [[require("plugins.git")]],
        {
            "tpope/vim-rhubarb",
            "shumphrey/fugitive-gitlab.vim",
            "junegunn/gv.vim"
        },
        {
            "kdheepak/lazygit.nvim",
            cmd = {"LazyGit"}
        }
    }
    use {
        "lewis6991/gitsigns.nvim",
        event = "BufReadPre",
        requires = {"nvim-lua/plenary.nvim"},
        config = [[require("gitsigns").setup {}]]
    }

    -- color schemes
    use {
        -- "shaunsingh/nord.nvim",
        -- "shaunsingh/moonlight.nvim",
        -- { "olimorris/onedark.nvim", requires = "rktjmp/lush.nvim" },
        -- "joshdick/onedark.vim",
        -- "wadackel/vim-dogrun",
        -- { "npxbr/gruvbox.nvim", requires = "rktjmp/lush.nvim" },
        -- "bluz71/vim-nightfly-guicolors",
        -- { "marko-cerovac/material.nvim" },
        -- "sainnhe/edge",
        -- { "embark-theme/vim", as = "embark" },
        -- "norcalli/nvim-base16.lua",
        -- "RRethy/nvim-base16",
        -- "novakne/kosmikoa.nvim",
        -- "glepnir/zephyr-nvim",
        -- "ghifarit53/tokyonight-vim"
        -- "sainnhe/sonokai",
        -- "morhetz/gruvbox",
        -- "arcticicestudio/nord-vim",
        -- "drewtempelmeyer/palenight.vim",
        -- "Th3Whit3Wolf/onebuddy",
        -- "christianchiarulli/nvcode-color-schemes.vim",
        -- "Th3Whit3Wolf/one-nvim"
        --
        -- Plug 'sainnhe/gruvbox-material'
        -- Plug 'npxbr/gruvbox.nvim'
        -- Plug 'eddyekofo94/gruvbox-flat.nvim'

        -- Plug 'tjdevries/colorbuddy.vim'
        -- Plug 'tjdevries/gruvbuddy.nvim'
        -- "
        -- Plug 'shaunsingh/nord.nvim'
        -- Plug 'ayu-theme/ayu-vim'
        -- Plug 'rktjmp/lush.nvim'
        -- Plug 'drewtempelmeyer/palenight.vim'
        -- Plug 'flazz/vim-colorschemes'
        -- Plug 'sainnhe/sonokai'
        -- Plug 'Dualspc/spaceodyssey'
        -- Plug 'sonph/onehalf', { 'rtp': 'vim' }
        -- Plug 'glepnir/zephyr-nvim'
        -- Plug 'rafamadriz/neon'

        "folke/tokyonight.nvim",
        config = [[vim.cmd("colorscheme tokyonight")]]
    }

    -- use(
    --     {
    --         "windwp/nvim-spectre",
    --         opt = true,
    --         module = "spectre",
    --         wants = {"plenary.nvim", "popup.nvim"},
    --         requires = {"nvim-lua/popup.nvim", "nvim-lua/plenary.nvim"}
    --     }
    -- )

    -- use(
    --     {
    --         "kyazdani42/nvim-tree.lua",
    --         cmd = {"NvimTreeToggle", "NvimTreeClose"},
    --         config = function()
    --             require("config.tree")
    --         end
    --     }
    -- )

    -- -- Fuzzy finder
    -- use(
    --     {
    --         "nvim-telescope/telescope.nvim",
    --         opt = true,
    --         config = function()
    --             require("config.telescope")
    --         end,
    --         cmd = {"Telescope"},
    --         keys = {"<leader><space>", "<leader>fz", "<leader>pp"},
    --         wants = {
    --             "plenary.nvim",
    --             "popup.nvim",
    --             "telescope-z.nvim",
    --             -- "telescope-frecency.nvim",
    --             "telescope-fzy-native.nvim",
    --             "telescope-project.nvim",
    --             "trouble.nvim",
    --             "telescope-symbols.nvim"
    --         },
    --         requires = {
    --             "nvim-telescope/telescope-z.nvim",
    --             "nvim-telescope/telescope-project.nvim",
    --             "nvim-lua/popup.nvim",
    --             "nvim-lua/plenary.nvim",
    --             "nvim-telescope/telescope-symbols.nvim",
    --             "nvim-telescope/telescope-fzy-native.nvim"
    --             -- { "nvim-telescope/telescope-frecency.nvim", requires = "tami5/sql.nvim" }
    --         }
    --     }
    -- )

    -- -- Indent Guides and rainbow brackets
    -- use(
    --     {
    --         "lukas-reineke/indent-blankline.nvim",
    --         event = "BufReadPre",
    --         config = function()
    --             require("config.blankline")
    --         end
    --     }
    -- )

    -- -- Tabs
    -- use(
    --     {
    --         "akinsho/nvim-bufferline.lua",
    --         event = "BufReadPre",
    --         wants = "nvim-web-devicons",
    --         config = function()
    --             require("config.bufferline")
    --         end
    --     }
    -- )

    -- -- Terminal
    -- use(
    --     {
    --         "akinsho/nvim-toggleterm.lua",
    --         keys = "<M-`>",
    --         config = function()
    --             require("config.terminal")
    --         end
    --     }
    -- )

    -- -- Smooth Scrolling
    -- use(
    --     {
    --         "karb94/neoscroll.nvim",
    --         keys = {"<C-u>", "<C-d>", "gg", "G"},
    --         config = function()
    --             require("config.scroll")
    --         end
    --     }
    -- )
    -- use(
    --     {
    --         "edluffy/specs.nvim",
    --         after = "neoscroll.nvim",
    --         config = function()
    --             require("config.specs")
    --         end
    --     }
    -- )
    -- -- use { "Xuyuanp/scrollbar.nvim", config = function() require("config.scrollbar") end }

    -- -- Git Gutter
    -- -- use {
    -- --   "kdheepak/lazygit.nvim",
    -- --   cmd = "LazyGit",
    -- --   config = function() vim.g.lazygit_floating_window_use_plenary = 0 end
    -- -- }
    -- use(
    --     {
    --         "TimUntersberger/neogit",
    --         cmd = "Neogit",
    --         config = function()
    --             require("config.neogit")
    --         end
    --     }
    -- )

    -- -- Statusline
    -- use(
    --     {
    --         "hoob3rt/lualine.nvim",
    --         event = "VimEnter",
    --         config = [[require('config.lualine')]],
    --         wants = "nvim-web-devicons"
    --     }
    -- )

    -- use(
    --     {
    --         "norcalli/nvim-colorizer.lua",
    --         event = "BufReadPre",
    --         config = function()
    --             require("config.colorizer")
    --         end
    --     }
    -- )

    -- use({"npxbr/glow.nvim", cmd = "Glow"})

    -- use(
    --     {
    --         "plasticboy/vim-markdown",
    --         opt = true,
    --         requires = "godlygeek/tabular",
    --         ft = "markdown"
    --     }
    -- )
    -- use(
    --     {
    --         "iamcco/markdown-preview.nvim",
    --         run = function()
    --             vim.fn["mkdp#util#install"]()
    --         end,
    --         cmd = "MarkdownPreview"
    --     }
    -- )

    -- -- use { "tjdevries/train.nvim", cmd = { "TrainClear", "TrainTextObj", "TrainUpDown", "TrainWord" } }

    -- -- use({ "wfxr/minimap.vim", config = function()
    -- --   require("config.minimap")
    -- -- end })

    -- use(
    --     {
    --         "phaazon/hop.nvim",
    --         keys = {"gh", "s"},
    --         cmd = {"HopWord", "HopChar1"},
    --         config = function()
    --             require("util").nmap("gh", "<cmd>HopWord<CR>")
    --             -- require("util").nmap("s", "<cmd>HopChar1<CR>")
    --             -- you can configure Hop the way you like here; see :h hop-config
    --             require("hop").setup({})
    --         end
    --     }
    -- )

    -- use(
    --     {
    --         "folke/trouble.nvim",
    --         event = "BufReadPre",
    --         wants = "nvim-web-devicons",
    --         cmd = {"TroubleToggle", "Trouble"},
    --         config = function()
    --             require("trouble").setup({auto_open = false})
    --         end
    --     }
    -- )

    -- use(
    --     {
    --         "folke/persistence.nvim",
    --         event = "BufReadPre",
    --         module = "persistence",
    --         config = function()
    --             require("persistence").start()
    --         end
    --     }
    -- )

    -- use({"mbbill/undotree", cmd = "UndotreeToggle"})

    -- use({"mjlbach/babelfish.nvim", module = "babelfish"})

    use(
        {
            "folke/zen-mode.nvim",
            cmd = "ZenMode",
            opt = true,
            config = function()
                require("zen-mode").setup({plugins = {tmux = true}})
            end
        }
    )

    use(
        {
            "sindrets/diffview.nvim",
            cmd = {"DiffviewOpen", "DiffviewClose", "DiffviewToggleFiles", "DiffviewFocusFiles"},
            config = function()
                require("plugins.diffview")
            end
        }
    )

    -- use(
    --     {
    --         "RRethy/vim-illuminate",
    --         event = "CursorHold",
    --         module = "illuminate",
    --         config = function()
    --             vim.g.Illuminate_delay = 1000
    --         end
    --     }
    -- )

    -- -- use({ "wellle/targets.vim" })

    -- -- use("DanilaMihailov/vim-tips-wiki")
    -- use("nanotee/luv-vimdocs")
    -- use(
    --     {
    --         "andymass/vim-matchup",
    --         event = "CursorMoved"
    --     }
    -- )
    -- use({"camspiers/snap", rocks = {"fzy"}, module = "snap"})
    -- use("kmonad/kmonad-vim")
end

return packer.setup(plugins)
