return function(use)
	use {
  	'nvim-telescope/telescope.nvim', tag = '0.1.8',
  	requires = { 
		{'nvim-lua/plenary.nvim'} 
	},
	config = function()
		require('telescope').setup {}
	end
}
end
