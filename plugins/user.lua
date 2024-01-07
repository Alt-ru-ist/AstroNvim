return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  --
  -- cmd: the list of commands will be extended with your custom commands
  -- event: the list of events will be extended with your custom events
  -- ft: the list of filetypes will be extended with your custom filetypes
  -- keys: the list of keymaps will be extended with your custom keymaps
  -- opts: your custom opts will be merged with the default opts
  -- dependencies: the list of dependencies will be extended with your custom dependencies
  -- any other property will override the defaults
  --
  "olexsmir/gopher.nvim",
  ft = "go",
  -- opts = 
  config = function (_, _)
    require("gopher").setup{
      commands = {
        go = "go",
        gomodifytags = "gomodifytags",
        gotests = "gotests", -- also you can set custom command path
        impl = "impl",
        iferr = "iferr",
      },
    }
  end,
  build = function ()
    vim.cmd [[silent! GoInstallDeps]]
  end,
  requires = { -- dependencies
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
}
