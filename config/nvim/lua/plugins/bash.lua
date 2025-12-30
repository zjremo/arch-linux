return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        bashls = {
          filetypes = { "sh", "zsh" },
          settings = {
            bashIde = {
              enableHighlighting = true,
              globPattern = "*@(.sh|.inc|.bash|.command)",
              shellcheck = {
                enable = true,
                executablePath = "/home/jrz/.local/share/nvim/mason/bin/shellcheck",
                args = { "--severity=warning" },
              },
            },
          },
        },
      },
    },
  },
}
