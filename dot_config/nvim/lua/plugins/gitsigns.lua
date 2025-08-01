return {
  "lewis6991/gitsigns.nvim",
  opts = function (_, opts)
    local on_attach = opts.on_attach
    opts.on_attach = function (bufnr)
      if on_attach then on_attach(bufnr) end
      local maps = {
        n = {
          ["<Leader>gp"] = {
            function ()
              require("gitsigns").preview_hunk()
            end,
            desc = "Preview hunk"
          }
        }
      }
      require("astrocore").set_mappings(maps, { buffer = bufnr })
    end
  end
}
