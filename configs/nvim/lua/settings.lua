local cmd = vim.cmd             -- execute Vim commands
local exec = vim.api.nvim_exec  -- execute Vimscript
local g = vim.g                 -- global variables
local opt = vim.opt             -- global/buffer/windows-scoped options
-- Direction of translation from Russian to English
g.translate_source = 'ru'
g.translate_target = 'en'
-- Compact view in tagbar and otk. sorting by name in tagbar
g.tagbar_compact = 1
g.tagbar_sort = 0

-- Config ale + eslint
g.ale_fixers = { javascript= { 'eslint' } }
g.ale_sign_error = '❌'
g.ale_sign_warning = '⚠️'
g.ale_fix_on_save = 1
-- Starting the linter, only when saving
g.ale_lint_on_text_changed = 'never'
g.ale_lint_on_insert_leave = 0

-----------------------------------------------------------
-- General
-----------------------------------------------------------
opt.colorcolumn = '80'              -- Separator for 80 characters
opt.cursorline = true               -- Highlight the cursor line
opt.spelllang= { 'en_us', 'ru' }    -- Russian eng dictionary
opt.number = true                   -- Enable line numbering
opt.relativenumber = true           -- Enable relative line numbering
opt.so=999                          -- The cursor is always in the center of the screen
opt.undofile = true                 -- Rollback feature
opt.splitright = true               -- vertical split вправо
opt.splitbelow = true               -- horizontal split вниз
-----------------------------------------------------------
-- Color pallete
-----------------------------------------------------------
opt.termguicolors = true      --  24-bit RGB colors
vim.opt.background = "dark"
vim.cmd([[colorscheme gruvbox]])
-----------------------------------------------------------
-- Tabs and indents
-----------------------------------------------------------
cmd([[
filetype indent plugin on
syntax enable
]])
opt.expandtab = true      -- use spaces instead of tabs
opt.shiftwidth = 4        -- shift 4 spaces when tab
opt.tabstop = 4           -- 1 tab == 4 spaces
opt.smartindent = true    -- autoindent new lines
-- don't auto commenting new lines
cmd [[au BufEnter * set fo-=c fo-=r fo-=o]]
-- remove line lenght marker for selected filetypes
cmd [[autocmd FileType text,markdown,html,xhtml,javascript setlocal cc=0]]
-- 2 spaces for selected filetypes
cmd [[
autocmd FileType xml,html,xhtml,css,scss,javascript,lua,yaml,htmljinja setlocal shiftwidth=2 tabstop=2
]]
-- With this line it perfectly formats the html file that contains jinja2
cmd[[ autocmd BufNewFile,BufRead *.html set filetype=htmldjango ]]
-----------------------------------------------------------
-- Useful tricks
-----------------------------------------------------------
-- Remembers where nvim last edited the file
cmd [[
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
]]
-- Lights up the copied part of the text for a fraction of a second
exec([[
augroup YankHighlight
autocmd!
autocmd TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=700}
augroup end
]], false)

-----------------------------------------------------------
-- Installs for plugins
-----------------------------------------------------------
-- LSP settings
local lsp_installer = require("nvim-lsp-installer")
lsp_installer.on_server_ready(function(server)
    local opts = {}
    if server.name == "sumneko_lua" then
        -- only apply these settings for the "sumneko_lua" server
        opts.settings = {
            Lua = {
                diagnostics = {
                    -- Get the language server to recognize the 'vim', 'use' global
                    globals = {'vim', 'use'},
                },
                workspace = {
                    -- Make the server aware of Neovim runtime files
                    library = vim.api.nvim_get_runtime_file("", true),
                },
                -- Do not send telemetry data containing a randomized but unique identifier
                telemetry = {
                    enable = false,
                },
            },
        }
    end
    server:setup(opts)
end)


-- nvim-cmp supports additional completion capabilities
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)
vim.o.completeopt = 'menuone,noselect'
-- luasnip setup
local luasnip = require 'luasnip'
-- nvim-cmp setup
local cmp = require 'cmp'
cmp.setup {
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end,
    },
    sources = {
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
        { name = 'path' },
        { name = 'buffer', opts = {
            get_bufnrs = function()
                return vim.api.nvim_list_bufs()
            end
        },
    },
},
}
