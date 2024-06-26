-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.api.nvim_create_autocmd("FileType", {
  pattern = "sh",
  callback = function()
    vim.lsp.start({
      name = "bash-language-server",
      cmd = { "bash-language-server", "start" },
    })
  end,
})

if vim.g.neovide == true then
  vim.o.guifont = "Fira Code SemiBold:h14"
end

vim.filetype.add({
  extension = {
    w = "wing",
  },
})

LaunchWing = function()
  local client_id = vim.lsp.start_client({ cmd = { "wing", "lsp" } })
  vim.lsp.buf_attach_client(0, client_id)
end

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "wing", "w" },
  callback = function()
    LaunchWing()
  end,
})

vim.g.lazyvim_python_lsp = "basedpyright"
