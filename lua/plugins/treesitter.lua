return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function () 
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = { "lua", "vimdoc", "query", "javascript", "html", "css", "rust", "dart" },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true, disable = {"dart", "rust"} },  
        })
    end
 }