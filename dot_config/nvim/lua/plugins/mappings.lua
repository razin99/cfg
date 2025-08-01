---@type LazySpec
return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        t = {
          ["<C-'>"] = false,
          ["<C-t>"] = { "<CMD>ToggleTerm direction=float<CR>"},
        },
        n = {
          ["<C-'>"] = false,
          ["<C-t>"] = { "<CMD>ToggleTerm direction=float<CR>"},
          ["<Leader>br"] = false,
          ["<Leader>bl"] = {
            function ()
              require("astrocore.buffer").close_right()
            end,
            desc = "Close all buffer to the right"
          },
          ["<Leader>bh"] = {
            function ()
              require("astrocore.buffer").close_left()
            end,
            desc = "Close all buffer to the left"
          },
          ["<S-l>"] = {
            function ()
              require("astrocore.buffer").nav(1)
            end
          },
          ["<S-h>"] = {
            function ()
              require("astrocore.buffer").nav(-1)
            end
          },
        }
      }
    },
  },
}
