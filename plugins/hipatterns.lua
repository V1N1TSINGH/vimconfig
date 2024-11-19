return {
  {
    "echasnovski/mini.hipatterns",
    config = function()
      require("mini.hipatterns").setup({
        highlighters = {
          -- Highlight 'TODO' and 'FIXME' keywords
          fixme = { pattern = "%f[%w]()FIXME()%f[%W]", group = "Error" },
          todo = { pattern = "%f[%w]()TODO()%f[%W]", group = "Todo" },
          -- Highlight hex colors like #RRGGBB
          hex_color = require("mini.hipatterns").gen_highlighter.hex_color(),
        },
      })
    end,
  },
}
