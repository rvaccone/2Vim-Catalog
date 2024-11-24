return {
    source = "kdheepak/lazygit.nvim",
    dependencies = {"nvim-lua/plenary.nvim"},
    _metadata = {
        name = "lazygit.nvim",
        description = "Plugin for calling lazygit from within neovim",
        homepage = "https://github.com/kdheepak/lazygit.nvim",
        disable_setup = true,
        pre_setup = [[cmd = {
            "LazyGit",
            "LazyGitConfig",
            "LazyGitCurrentFile",
            "LazyGitFilter",
            "LazyGitFilterCurrentFile"
        }]],
        commands = {
            {
                name = "Lazygit",
                description = "Start a floating window with lazygit in the current working directory",
                lua_command = "<cmd>LazyGit<cr>"
            }, {
                name = "Lazygit current file",
                description = "Start a floating window with lazygit in the project root of the current file",
                lua_command = "<cmd>LazyGitCurrentFile<cr>"
            }, {
                name = "Lazygit config",
                description = "Open the lazygit config file",
                lua_command = "<cmd>LazyGitConfig<cr>"
            }
        }
    }
}
