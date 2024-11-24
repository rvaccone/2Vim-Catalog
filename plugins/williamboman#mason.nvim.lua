return {
    source = "williamboman/mason.nvim",
    _metadata = {
        name = "Mason",
        description = "Portable package manager for Neovim",
        homepage = "https://github.com/williamboman/mason.nvim",
        disable_setup = true,
        commands = {
            {
                name = "Open mason",
                description = "Open a graphical status window",
                command = "<cmd>Mason<cr>"
            }, {
                name = "Mason update",
                description = "Update all managed registries",
                command = "<cmd>MasonUpdate<cr>"
            }, {
                name = "Uninstall all",
                description = "Uninstalls all packages",
                command = "<cmd>MasonUninstallAll<cr>"
            }, {
                name = "Mason log",
                description = "Opens the mason.nvim log file in another tab window",
                command = "<cmd>MasonLog<cr>"
            }
        }
    }
}
