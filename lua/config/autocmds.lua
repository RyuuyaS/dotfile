-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local lspconfig = require("lspconfig")

-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches

-- templ config
vim.filetype.add({ extension = { templ = "templ" } })
local servers = { "gopls", "cmake", "tsserver", "templ" }
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup({})
end

-- html config
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
lspconfig.html.setup({
  capabilities = capabilities,
  filetypes = { "html", "templ" },
  settings = {
    html = {
      autoClosingTags = true,
      autoCreateQuotes = true,
    },
  },
})

-- htmx config
lspconfig.htmx.setup({
  filetypes = { "html", "templ" },
})
