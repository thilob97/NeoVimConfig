return function(use)
  use {
    'nvim-tree/nvim-tree.lua',
    requires = 'nvim-tree/nvim-web-devicons',
    config = function()
      require('configs.nvim-tree')
    end
  }
end

