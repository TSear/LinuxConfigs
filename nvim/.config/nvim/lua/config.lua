local which_key_config = require("plugins.which_key")
local autopairs_config = require("plugins.autopairs")
local telescope_config = require("plugins.telescope")
local telescope_media_config = require("plugins.telescope_media")
local telescope_projects_config = require("plugins.telescope_projects")
local treesitter_config = require("plugins.treesitter")
local nvim_tree_config = require("plugins.nvim_tree")
local lsp_config = require("plugins.lsp.lsp_config")
local mason = require("plugins.lsp.mason")
local mason_lspconfig = require("plugins.lsp.mason_lspconfig")
local null_ls_config = require("plugins.lsp.null_ls")
local bufferline_config = require("plugins.bufferline")
local rust_tools_config = require("plugins.lsp.rust_tools")
local hop_config = require("plugins.hop")
local gitsigns_config = require("plugins.gitsigns")
local alpha_config = require("plugins.alpha")
local comment_config = require("plugins.comment")
local lualine_config = require("plugins.lualine")
local toggleterm_config = require("plugins.toggleterm")
local indentline_config = require("plugins.indentline")
local fidget_config = require("plugins.fidget")
local cmp_config = require("plugins.cmp")
local luasnip_config = require("plugins.luasnip")
local signature_help_config = require("plugins.signature_help")
local trouble_config = require("plugins.trouble")

local plugins = {
  ["folke/tokyonight.nvim"] = {},
  ["nvim-lua/popup.nvim"] = {},
  ["nvim-lua/plenary.nvim"] = {},
  ["folke/which-key.nvim"] = which_key_config,
  ["windwp/nvim-autopairs"] = autopairs_config,
  ["nvim-telescope/telescope-media-files.nvim"] = telescope_media_config,
  ["nvim-telescope/telescope-project.nvim"] = telescope_projects_config,
  ["nvim-telescope/telescope.nvim"] = telescope_config,
  ["nvim-treesitter/nvim-treesitter"] = treesitter_config,
  ["p00f/nvim-ts-rainbow"] = {},
  ["nvim-treesitter/playground"] = {},
  ["kyazdani42/nvim-tree.lua"] = nvim_tree_config,
  ["L3MON4D3/LuaSnip"] = luasnip_config,
  ["onsails/lspkind.nvim"] = {},
  ["hrsh7th/cmp-nvim-lsp"] = {},
  ["hrsh7th/cmp-buffer"] = {},
  ["hrsh7th/cmp-path"] = {},
  ["hrsh7th/cmp-cmdline"] = {},
  ["saadparwaiz1/cmp_luasnip"] = {},
  ["hrsh7th/nvim-cmp"] = cmp_config,
  ["williamboman/mason.nvim"] = mason,
  ["williamboman/mason-lspconfig.nvim"] = mason_lspconfig,
  ["neovim/nvim-lspconfig"] = lsp_config,
  ["jose-elias-alvarez/null-ls.nvim"] = null_ls_config,
  ["akinsho/bufferline.nvim"] = bufferline_config,
  ["simrat39/rust-tools.nvim"] = rust_tools_config,
  ["phaazon/hop.nvim"] = hop_config,
  ["lewis6991/gitsigns.nvim"] = gitsigns_config,
  ["goolord/alpha-nvim"] = alpha_config,
  ["numToStr/Comment.nvim"] = comment_config,
  ["nvim-lualine/lualine.nvim"] = lualine_config,
  ["akinsho/toggleterm.nvim"] = toggleterm_config,
  ["lukas-reineke/indent-blankline.nvim"] = indentline_config,
  ["j-hui/fidget.nvim"] = fidget_config,
  ["ray-x/lsp_signature.nvim"] = signature_help_config,
  ["folke/trouble.nvim"] = trouble_config,
  ["moll/vim-bbye"] = {},
  ["elkowar/yuck.vim"] = {},
  ["bhurlow/vim-parinfer"] = {},
}

return plugins
