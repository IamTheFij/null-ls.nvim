local h = require("null-ls.helpers")
local cmd_resolver = require("null-ls.helpers.command_resolver")
local methods = require("null-ls.methods")

local FORMATTING = methods.internal.FORMATTING

return h.make_builtin({
    name = "prettierd",
    method = FORMATTING,
    filetypes = {
        "javascript",
        "javascriptreact",
        "typescript",
        "typescriptreact",
        "vue",
        "css",
        "scss",
        "less",
        "html",
        "json",
        "yaml",
        "markdown",
        "graphql",
    },
    generator_opts = {
        command = "prettierd",
        args = { "$FILENAME" },
        dynamic_command = cmd_resolver.from_node_modules,
        to_stdin = true,
    },
    factory = h.formatter_factory,
})
