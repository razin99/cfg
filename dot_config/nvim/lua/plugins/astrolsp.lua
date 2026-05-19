---@type LazySpec
return {
  "AstroNvim/astrolsp",
  ---@param opts AstroLSPOpts
  opts = function(_, opts)

    opts.formatting = require('astrocore').extend_tbl(opts.formatting or {}, {
      format_on_save = {
        enabled = true
      }
    })

    opts.mappings = require('astrocore').extend_tbl(opts.mappings or {}, {
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
    })

    opts.servers = opts.servers or {}
    vim.list_extend(opts.servers, {'snyk_ls'})

    opts.config = require('astrocore').extend_tbl(opts.config or {}, {
      snyk_ls = {
        autostart = false,
        cmd = { 'snyk', 'language-server', '-l', 'info' },
        root_markers = { '.git', '.snyk' },
        filetypes = {
          'apex',
          'apexcode',
          'c',
          'cpp',
          'cs',
          'dart',
          'dockerfile',
          'elixir',
          'eelixir',
          'go',
          'gomod',
          'groovy',
          'helm',
          'java',
          'javascript',
          'json',
          'kotlin',
          'objc',
          'objcpp',
          'php',
          'python',
          'requirements',
          'ruby',
          'rust',
          'scala',
          'swift',
          'terraform',
          'terraform-vars',
          'typescript',
          'yaml',
        },
        settings = {},
        init_options = {
          activateSnykOpenSource = 'true', -- Scan open source dependencies
          activateSnykCode = 'true', -- Scan your code for vulnerabilities
          activateSnykIac = 'true', -- Scan infrastructure as code
          integrationName = 'Neovim',
          integrationVersion = tostring(vim.version()),
          automaticAuthentication= "true", -- Whether or not LS will automatically authenticate on scan start (default: true)
          authenticationMethod= "oauth",
          trustedFolders = {"/Users/razin99/work/"}, -- Add your trusted directories here to avoid being prompted every time
        },
      }
    })
  end,
}
