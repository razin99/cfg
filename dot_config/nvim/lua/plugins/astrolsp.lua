---@type LazySpec
return {
  "AstroNvim/astrolsp",
  ---@type AstroLSPOpts
  opts = {
    formatting = {
      format_on_save = {
        enabled = true
      }
    },
    mappings = {
      n = {
        ["<Leader>lj"] = {
          function()
            vim.diagnostic.jump({ count = 1, float = true })
          end,
          desc = "Jump to next diagnostic"
        },
        ["<Leader>lk"] = {
          function()
            vim.diagnostic.jump({ count = -1, float = true })
          end,
          desc = "Jump to prev diagnostic"
        },
      }
    }
  },
}
