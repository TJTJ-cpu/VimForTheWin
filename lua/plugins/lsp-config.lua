return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
      -- Note: mason.nvim setup() doesn't support "ensure_installed". 
      -- Use mason-lspconfig for LSPs (below) or mason-tool-installer for formatters.
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      ensure_installed = {
        "clangd",
        "lua_ls",
        "pyright",
        "ts_ls",
      },
      automatic_installation = true,
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local lspconfig = require("lspconfig")

      lspconfig.clangd.setup({ capabilities = capabilities })
      lspconfig.pyright.setup({ capabilities = capabilities })
      
      -- CHANGED: Change tsserver to ts_ls here
      lspconfig.ts_ls.setup({ capabilities = capabilities }) 

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {})
      vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
      vim.keymap.set("n", "rn", vim.lsp.buf.rename, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
