return {
    source = "pmizio/typescript-tools.nvim",
    dependencies = {"nvim-lua/plenary.nvim", "neovim/nvim-lspconfig"},
    _metadata = {
        name = "typescript-tools.nvim",
        config_name = "typescript-tools",
        description = "TypeScript integration NeoVim deserves",
        homepage = "https://github.com/pmizio/typescript-tools.nvim",
        settings = {
            {
                name = "Separate diagnostic server",
                description = "Spawn additional tsserver instance to calculate diagnostics on it",
                path = "settings.separate_diagnostic_server",
                type = "boolean",
                default = true
            }
        },
        commands = {
            {
                name = "Organize imports",
                description = "Sorts and removes unused imports",
                lua_command = "<cmd>TSToolsOrganizeImports<cr>"
            }, {
                name = "Sort imports",
                description = "Sorts imports",
                lua_command = "<cmd>TSToolsSortImports<cr>"
            }, {
                name = "Remove unused imports",
                description = "Removes unused imports",
                lua_command = "<cmd>TSToolsRemoveUnusedImports<cr>"
            }, {
                name = "Remove unused",
                description = "Removes all unused statements",
                lua_command = "<cmd>TSToolsRemoveUnused<cr>"
            }, {
                name = "Add missing imports",
                description = "Adds imports for all statements that lack one and can be imported",
                lua_command = "<cmd>TSToolsAddMissingImports<cr>"
            }, {
                name = "Fix all",
                description = "Fixes all fixable errors",
                lua_command = "<cmd>TSToolsFixAll<cr>"
            }, {
                name = "Go to source definition",
                description = "Jumps to the source definition",
                lua_command = "<cmd>TSToolsGoToSourceDefinition<cr>"
            }, {
                name = "Rename file",
                description = "Renames the current file and applies changes to connected files",
                lua_command = "<cmd>TSToolsRenameFile<cr>"
            }, {
                name = "File references",
                description = "Find files that reference the current file",
                lua_command = "<cmd>TSToolsFileReferences<cr>"
            }
        }
    }
}
