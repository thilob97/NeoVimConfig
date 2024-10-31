return function(use)
    use {'stevearc/dressing.nvim',
    config = function(_, opts)
      require('configs.dressing')
    end
    }
end
