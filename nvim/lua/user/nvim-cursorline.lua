require('nvim-cursorline').setup {
  cursorline = {
    enable = true,
    timeout = 500,
    number = false,
    underline = true,
  },
  cursorword = {
    enable = true,
    min_length = 3,
    hl = { underline = true },
  }
}
