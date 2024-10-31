
-- Neovim automatisch neu kompilieren, wenn die Plugin-Liste geändert wird
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins/*.lua source <afile> | PackerCompile
  augroup end
]])


-- Automatisches Speichern
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = "*",
  callback = function()
    -- Prüfen, ob der Buffer geändert und nicht schreibgeschützt ist
    if vim.bo.modified and not vim.bo.readonly then
      vim.cmd("silent write")
    end
  end,
})

