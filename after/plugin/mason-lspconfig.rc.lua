local status, lspconfig = pcall(require, "mason-lspconfig")

if (not status) then return end



lspconfig.setup {
  automatic_installation = true,
  ensure_installed = { "cssls", "angularls", "eslint", "emmet_ls", "html", "jsonls", "lua_ls", "pyright", "marksman",
    "tsserver", }
}
