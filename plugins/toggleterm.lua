return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      require("toggleterm").setup({
        -- Your configuration here
        shell = "pwsh",
        direction = "horizontal",

        float_opts = {
          border = "curved",
        },
      })
    end,
  },
}
