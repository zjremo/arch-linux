-- This is nvim theme config based on folke/tokyonight
return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    style = "night",
    transparent = true,
    styles = {
      sidebars = "transparent",
      floats = "transparent",
    },
    on_highlights = function(hl, c)
      hl.Visual = {
        -- bg = c.bg_highlight, 使用主题的略亮背景色，使 Visual 选中更明显
        bg = c.blue0, -- 使用浅蓝色Visual模式, Visual选中更明显
      }
    end,
  },
  config = function(_, opts)
    require("tokyonight").setup(opts)
    vim.cmd("colorscheme tokyonight")
  end,
}
