return {
  "SmiteshP/nvim-navic",
  opts = function()
    return {
      separator = " ",
      highlight = true,
      depth_limit = 5,
      icons = require("lazyvim.config").icons.kinds,
    }
  end
}
