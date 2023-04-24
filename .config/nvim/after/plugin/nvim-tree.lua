local tree = require('nvim-tree')

tree.setup({
    sort_by = "case_sensitive",
    renderer = {
        group_empty = true,
        icons = {
            show = {
                file = false,
                folder = false,
                folder_arrow = false,
                git = false,
                modified = false,
            },
        },
    },
    filters = {
        dotfiles = true,
    },
})

vim.keymap.set('n', '<leader>e', ':NvimTreeFocus<CR>', { noremap = true })
vim.keymap.set('n', '<leader>b', ':NvimTreeToggle<CR>', { noremap = true })
vim.keymap.set('n', '<leader>f', ':NvimTreeFindFile<CR>', { noremap = true })
