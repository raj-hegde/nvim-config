 return
  {
    "mfussenegger/nvim-lint",
    event = {BufWritePost},

    config = function ()
        local lint = require("lint")

        lint.linters_by_ft = {
            javascript = {eslint_d},
            typescript = {eslint_d},
            python = {pylint},
            golang = {golangcilint},
        }

    vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  callback = function()
    require("lint").try_lint()
  end,
})
end,
  }