vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    -- Packer
    use 'wbthomason/packer.nvim'

    -----------------------------------------------------------
    -- APPEARANCE PLUGINS
    -----------------------------------------------------------
    -- color pallete
    use 'morhetz/gruvbox'
    --- Status bar
    use { 'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true},
    config = function()
        require('lualine').setup()
    end, }
    -- Tabs
    use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons',
    config = function()
        require("bufferline").setup{}
    end, }
    -- Backlightning tabulation
    use 'nathanaelkane/vim-indent-guides'

    -----------------------------------------------------------
    -- Navigation
    -----------------------------------------------------------
    -- File system
    use { 'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function() require'nvim-tree'.setup {} end, }
    -- Navigating within a file by classes and functions
    use 'majutsushi/tagbar'
    -- replace fzf and ack
    use { 'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} },
    config = function() require'telescope'.setup {} end, }


    -----------------------------------------------------------
    -- LSP and autocomplete
    -----------------------------------------------------------
    -- Highlight, edit, and navigate code using a fast incremental parsing library
    use 'nvim-treesitter/nvim-treesitter'
    -- Collection of configurations for built-in LSP client
    use 'neovim/nvim-lspconfig'
    use 'williamboman/nvim-lsp-installer'
    -- Autocomplete
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'saadparwaiz1/cmp_luasnip'
    --- File system autocomplete
    use 'hrsh7th/cmp-path'
    -- Snippets plugin
    use 'L3MON4D3/LuaSnip'



    -----------------------------------------------------------
    -- PYTHON
    -----------------------------------------------------------
    -- Support tamplate jinja2
    use 'mitsuhiko/vim-jinja'


    -----------------------------------------------------------
    -- HTML and CSS
    -----------------------------------------------------------
    -- It highlights the closing and opening tags. If something is not closed somewhere, it is not highlighted.
    use 'idanarye/breeze.vim'
    -- It automatically closes html and xml tags. Write <h1> and it automatically closes </h1>.
    use 'alvan/vim-closetag'
    -- Backlightning #ffffff
    use 'ap/vim-css-color'
    
    -----------------------------------------------------------
    -- React
    -----------------------------------------------------------
    -- Snippets for React / React-Native (ES7+)
    use {'dsznajder/vscode-es7-javascript-react-snippets',
      run = 'yarn install --frozen-lockfile && yarn compile'
    }

    -----------------------------------------------------------
    -- MISCELLANEOUS
    -----------------------------------------------------------
    -- Even if the russian layout of vim is enabled, the commands will work
    use 'powerman/vim-plugin-ruscmd'
    -- 'Auto-formatting' code for all languages
    use 'Chiel92/vim-autoformat'
    -- ]p - insert one line above, [p - below
    use 'tpope/vim-unimpaired'
    -- Translate rus - en
    use 'skanehira/translate.vim'
    --- popup window
    use 'nvim-lua/popup.nvim'
    -- Frames or removes the frame. Highlight a word, press S and type <h1>.
    use 'tpope/vim-surround'
    -- Counts the number of matches in the search
    use 'google/vim-searchindex'
    -- Can repeat through . vimsurround
    use 'tpope/vim-repeat'
    -- Start page if you just type vim in the console
    use 'mhinz/vim-startify'
    -- Comments on gc everything, regardless of the programming language
    use { 'numToStr/Comment.nvim',
    config = function() require('Comment').setup() end }
    -- Frame a line in tags by ctrl- y + ,
    use 'mattn/emmet-vim'
    -- Auto closed brackets
    use 'cohama/lexima.vim'
    -- Linter, works for all languages
    use 'dense-analysis/ale'
    -- Wakatime module
    use 'wakatime/vim-wakatime'
end)
