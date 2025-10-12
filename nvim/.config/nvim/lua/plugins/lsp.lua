return {
  -- Core LSP
  {
    "neovim/nvim-lspconfig",
  },

  -- Mason: install and manage LSP servers
  {
    "williamboman/mason.nvim",
    config = true,
  },

  -- Mason-LSPConfig: bridge Mason and LSPConfig
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "mason.nvim", "nvim-lspconfig", "hrsh7th/cmp-nvim-lsp" },
    config = function()
      local mason_lspconfig = require("mason-lspconfig")
      local lspconfig = require("lspconfig")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      mason_lspconfig.setup({
        ensure_installed = { "lua_ls", "pyright", "ts_ls" },
      })

      local on_attach = function(_, bufnr)
        local opts = { buffer = bufnr, silent = true }
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
        vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
        vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
      end

      -- If setup_handlers exists, use it
      if mason_lspconfig.setup_handlers then
        mason_lspconfig.setup_handlers({
          function(server)
            lspconfig[server].setup({
              on_attach = on_attach,
              capabilities = capabilities,
            })
          end,
        })
      else
        -- fallback for older versions
        for _, server in ipairs(mason_lspconfig.get_installed_servers()) do
          lspconfig[server].setup({
            on_attach = on_attach,
            capabilities = capabilities,
          })
        end
      end
    end,
  },

  -- Autocompletion
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "L3MON4D3/LuaSnip",
    },
    config = function()
      local cmp = require("cmp")
      cmp.setup({
        snippet = {
          expand = function(args)
            require("luasnip").lsp_expand(args.body)
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ["<Tab>"] = cmp.mapping.select_next_item(),
          ["<S-Tab>"] = cmp.mapping.select_prev_item(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
        }),
        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "buffer" },
          { name = "path" },
        }),
      })
    end,
  },

  -- Formatter / Linter (optional)
  {
    "nvimtools/none-ls.nvim",
    config = function()
      local null_ls = require("null-ls")
      null_ls.setup({
        sources = {
          null_ls.builtins.formatting.prettier,
          null_ls.builtins.diagnostics.eslint,
        },
      })
    end,
  },
}
