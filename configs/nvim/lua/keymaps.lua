local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}

-- System clipboard shift - Y
map('v', 'S-Y', '"+y', {})
-- jj quic comman(Analogue Esc)
map('i', 'jj', '<Esc>', {noremap = true})
-- Off arrows
map('', '<up>', ':echoe "Use k"<CR>', {noremap = true, silent = false})
map('', '<down>', ':echoe "Use j"<CR>', {noremap = true, silent = false})
map('', '<left>', ':echoe "Use h"<CR>', {noremap = true, silent = false})
map('', '<right>', ':echoe "Use l"<CR>', {noremap = true, silent = false})
-- Autoformat + Normal/Insart mode Ctrl+S save file
map('n', '<C-s>', ':Autoformat<CR>:w<CR>',  default_opts)
map('i', '<C-s>', '<esc>:Autoformat<CR>:w<CR>', default_opts)
-- Switching tabs from TAB or shift-tab (akinsho/bufferline.nvim)
map('n', '<Tab>', ':BufferLineCycleNext<CR>', default_opts)
map('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', default_opts)
-- Swipe down / up on the page (as in browsers)
map('n', '<Space>', '<PageDown> zz', default_opts)
map('n', '<C-Space>', '<PageUp> zz', default_opts)
-- " Translate rus to eng
map('v', 't', '<Plug>(VTranslate)', {})
-- fzf module
map('n', '<C-a>', [[ <cmd>lua require('telescope.builtin').find_files()<cr> ]], default_opts)
map('n', '<C-p>', [[ <cmd>lua require('telescope.builtin').buffers()<cr> ]], default_opts)

-----------------------------------------------------------
-- F1 .. F12
-----------------------------------------------------------
-- By F1 we clear the last search with highlighting
map('n', '<F1>', ':nohl<CR>', default_opts)
-- shift + F1 = delete  empty lines
map('n', '<S-F1>', ':g/^$/d<CR>', default_opts)
-- <F2> to temporarily insert from the buffer to disable auto-id
vim.o.pastetoggle='<F2>'
-- <F3> reread the nvim configuration May not work if echo $TERM xterm-256color
map('n', '<F3>', ':so ~/.config/nvim/init.lua<CR>:so ~/.config/nvim/lua/plugins.lua<CR>:so ~/.config/nvim/lua/settings.lua<CR>:so ~/.config/nvim/lua/keymaps.lua<CR>', { noremap = true })
-- <S-F3> Open the whole nvim configuration for editing
map('n', '<S-F3>', ':e ~/.config/nvim/init.lua<CR>:e ~/.config/nvim/lua/plugins.lua<CR>:e ~/.config/nvim/lua/settings.lua<CR>:e ~/.config/nvim/lua/keymaps.lua<CR>', { noremap = true })
-- <F4> Search for a word under the cursor
map('n', '<F4>', [[<cmd>lua require('telescope.builtin').grep_string()<cr>]], default_opts)
-- <S-F4> Search for a word in the modal box
map('n', '<S-F4>', [[<cmd>lua require('telescope.builtin').live_grep()<cr>]], default_opts)
-- <F5> different variations of line numbering, you can switch
map('n', '<F5>', ':exec &nu==&rnu? "se nu!" : "se rnu!"<CR>', default_opts)
-- <F6> tree files.
map('n', '<F6>', ':NvimTreeRefresh<CR>:NvimTreeToggle<CR>', default_opts)
-- <F8>  Showing the tree of classes and functions, majutsushi/tagbar plugin
map('n', '<F8>', ':TagbarToggle<CR>', default_opts)
-- <F11> Spell Checker for Russian and English
map('n', '<F11>', ':set spell!<CR>', default_opts)
map('i', '<F11>', '<C-O>:set spell!<CR>', default_opts)
