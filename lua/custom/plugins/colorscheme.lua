return {
  'EdenEast/nightfox.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    local palette = require('nightfox.palette').load 'carbonfox'

    require('nightfox').setup {
      options = {
        transparent = true,
        modules = {
          barbar = false,
          gitsigns = true,
          ['lazy.nvim'] = true,
          mini = true,
          neotree = true,
          telescope = true,
          treesitter = true,
          whichkey = true,
        },
      },
    }

    vim.cmd.colorscheme 'carbonfox'
  end,
}
