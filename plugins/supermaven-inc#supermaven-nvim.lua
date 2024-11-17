return {
    source = "supermaven-inc/supermaven-nvim",
    _metadata = {
        name = "SuperMaven",
        config_name = "supermaven-nvim",
        description = "A super fast copilot for neovim",
        homepage = "https://supermaven.com/",
        settings = {
            {
                name = "Log level",
                description = "Log level",
                path = "log_level",
                type = "choice",
                options = {"info", "off"},
                default = "info"
            }, {
                name = "Disable inline completion",
                description = "Disable inline completion",
                path = "disable_inline_completion",
                type = "boolean",
                default = false
            }, {
                name = "Disable keymaps",
                description = "Disable keymaps",
                path = "disable_keymaps",
                type = "boolean",
                default = false
            }
        }

    }
}
