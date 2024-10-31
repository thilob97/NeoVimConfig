return function(use)
	use {
  'echasnovski/mini.nvim',
  config = function()
    require('mini.icons').setup() -- Stelle sicher, dass der Icons-Teil von mini geladen wird
  end
}
end
