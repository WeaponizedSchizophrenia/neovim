local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Move to previous/next
map('n', '<A-h>', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<A-l>', '<Cmd>BufferNext<CR>', opts)

-- Re-order to previous/next
map('n', '<A-k>', '<Cmd>BufferMovePrevious<CR>', opts)
map('n', '<A-j>', '<Cmd>BufferMoveNext<CR>', opts)

-- Close buffer
map('n', '<A-c>', '<Cmd>BufferClose<CR>', opts)

vim.api.nvim_create_autocmd('ColorScheme', {
  callback = function(_)
    vim.cmd.hi 'TabLineFill guibg=none'
    vim.cmd.hi 'BufferTabpageFill guibg=none'

    vim.cmd.hi 'StatusLine guibg=none'
    vim.cmd.hi 'StatusLineNC guibg=none'
  end,
})

return {
  'romgrk/barbar.nvim',
  opts = {
    auto_hide = 1,
    hide = {
      alternate = true,
    },
    icons = {
      button = false,
      diagnostics = {
        [vim.diagnostic.severity.ERROR] = { enabled = true },
        [vim.diagnostic.severity.WARN] = { enabled = true },
        [vim.diagnostic.severity.HINT] = { enabled = true },
      },
      separator_at_end = false,
    },
    sidebar_filetypes = {
      ['neo-tree'] = {
        text = 'File tree',
        align = 'center',
      },
    },
    tabpages = false,
  },
}
