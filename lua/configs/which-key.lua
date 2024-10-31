local wk = require("which-key")

wk.setup {
  win = { -- Statt "window"
    border = "rounded",   -- Rahmenstil
    position = "bottom",  -- Position des Fensters
    winblend = 10,        -- Transparenz
  },
  layout = {
    spacing = 3,
    align = "left",
  },
}

