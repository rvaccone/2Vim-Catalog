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
                command = "<cmd>TSToolsOrganizeImports<cr>"
            }, {
                name = "Sort imports",
                description = "Sorts imports",
                command = "<cmd>TSToolsSortImports<cr>"
            }, {
                name = "Remove unused imports",
                description = "Removes unused imports",
                command = "<cmd>TSToolsRemoveUnusedImports<cr>"
            }, {
                name = "Remove unused",
                description = "Removes all unused statements",
                command = "<cmd>TSToolsRemoveUnused<cr>"
            }, {
                name = "Add missing imports",
                description = "Adds imports for all statements that lack one and can be imported",
                command = "<cmd>TSToolsAddMissingImports<cr>"
            }, {
                name = "Fix all",
                description = "Fixes all fixable errors",
                command = "<cmd>TSToolsFixAll<cr>"
            }, {
                name = "Go to source definition",
                description = "Jumps to the source definition",
                command = "<cmd>TSToolsGoToSourceDefinition<cr>"
            }, {
                name = "Rename file",
                description = "Renames the current file and applies changes to connected files",
                command = "<cmd>TSToolsRenameFile<cr>"
            }, {
                name = "File references",
                description = "Find files that reference the current file",
                command = "<cmd>TSToolsFileReferences<cr>"
            }
        }
    }
}
