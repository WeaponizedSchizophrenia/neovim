return {
  'voldikss/vim-floaterm',
  keys = {
    {
      '<leader>tn',
      function()
        vim.cmd 'FloatermNew --disposable --autoclose=2'
      end,
      desc = 'New floating terminal',
    },
  },
}
