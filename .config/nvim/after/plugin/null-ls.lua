-- Setup formatting with prettier (and others not handled by lsp-zero)
-- Source: https://blog.codeminer42.com/configuring-language-server-protocol-in-neovim/
local null_ls = require('null-ls')

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics
local conditional = function(fn)
    local utils = require("null-ls.utils").make_conditional_utils()
    return fn(utils)
end

null_ls.setup({
    sources = {
        formatting.prettier,
        conditional(function(utils)
            return utils.root_has_file("Gemfile")
            and null_ls.builtins.formatting.rubocop.with({
                command = "bundle",
                args = vim.list_extend(
                { "exec", "rubocop" },
                null_ls.builtins.formatting.rubocop._opts.args
                ),
            })
            or null_ls.builtins.formatting.rubocop
        end),
        conditional(function(utils)
            return utils.root_has_file("Gemfile")
            and null_ls.builtins.diagnostics.rubocop.with({
                command = "bundle",
                args = vim.list_extend(
                { "exec", "rubocop" },
                null_ls.builtins.diagnostics.rubocop._opts.args
                ),
            })
            or null_ls.builtins.diagnostics.rubocop
        end),
    }
})
