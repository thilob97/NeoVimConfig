-- ~/.config/nvim/lua/configs/keymaps.lua

local wk = require("which-key")

-- Gruppen von Keymaps mit Namen und Icons versehen
wk.register({
  { "<leader>f", group = " Datei" },
  { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = " Dateien suchen" },
  { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = " In Dateien suchen" },
  { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "﬘ Puffer durchsuchen" },
  { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = " Hilfetags durchsuchen" },
  { "<leader>w", group = "襁 Fenster" },
  { "<leader>wc", ":close<cr>", desc = "Fenster schließen" },
  { "<leader>ws", ":split<cr>", desc = "Horizontal teilen" },
  { "<leader>wv", ":vsplit<cr>", desc = "Vertikal teilen" },
}, { mode = "n" })

