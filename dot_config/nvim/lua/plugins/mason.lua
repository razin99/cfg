---@type LazySpec
return {
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    opts = {
      ensure_installed = {
        "bash-language-server",
        "dockerfile-language-server",
        "eslint_d",
        "gopls",
        "html-lsp",
        "json-lsp",
        "lua-language-server",
        "prettierd",
        "pyright",
        "ruff",
        "terraform-ls",
        "texlab",
        "typescript-language-server",
        "vim-language-server",
        "yaml-language-server",
      },
    },
  },
}
