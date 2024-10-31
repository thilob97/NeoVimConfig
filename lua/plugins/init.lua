-- Packer initialisieren
return require('packer').startup(function(use)
	use'wbthomason/packer.nvim'

  	local plugins = {
    		'which-key', 
  	}

  for _, plugin_name in ipairs(plugins) do
    local plugin = 'plugins.' .. plugin_name
    require(plugin)(use)
  end

  -- Optional: Restliche Plugins automatisch laden (falls vorhanden)
  -- Wenn du Plugins hast, deren Lade-Reihenfolge nicht kritisch ist
  local plugin_folder = vim.fn.stdpath('config') .. '/lua/plugins'
  for _, file in ipairs(vim.fn.readdir(plugin_folder)) do
    if file ~= 'init.lua' and file:sub(-4) == '.lua' then
      local plugin_name = file:sub(1, -5)
      if not vim.tbl_contains(plugins, plugin_name) then
        local plugin = 'plugins.' .. plugin_name
        require(plugin)(use)
      end
    end
  end
end)

