return {
    source = 'ellisonleao/gruvbox.nvim',
    _metadata = {
        name = "Gruvbox",
        config_name = "gruvbox",
        theme_name = "gruvbox",
        description = "Theme based on gruvbox",
        homepage = "https://github.com/ellisonleao/gruvbox.nvim",
        pre_setup = [[priority = 1000,]],
        settings = {
            {
                name = "Terminal colors",
                description = "Use terminal colors",
                path = "terminal_colors",
                type = "boolean",
                default = true
            }, {
                name = "Undercurl",
                description = "Enable undercurl",
                path = "undercurl",
                type = "boolean",
                default = true
            }, {
                name = "Bold",
                description = "Enable bold",
                path = "bold",
                type = "boolean",
                default = true
            }, {
                name = "Strikethrough",
                description = "Enable strikethrough",
                path = "strikethrough",
                type = "boolean",
                default = true
            }, {
                name = "Invert selection",
                description = "Invert selection",
                path = "invert_selection",
                type = "boolean",
                default = false
            }, {
                name = "Invert signs",
                description = "Invert signs",
                path = "invert_signs",
                type = "boolean",
                default = false
            }, {
                name = "Invert tabline",
                description = "Invert tabline",
                path = "invert_tabline",
                type = "boolean",
                default = false
            }, {
                name = "Invert indend guides",
                description = "Invert indend guides",
                path = "invert_indend_guides",
                type = "boolean",
                default = false
            }, {
                name = "Inverse",
                description = "Inverse highlight",
                path = "inverse",
                type = "boolean",
                default = true
            }, {
                name = "Contrast",
                description = "Contrast level",
                path = "contrast",
                type = "choice",
                options = {"hard", "medium", "soft"},
                default = "medium"
            }, {
                name = "Dim inactive",
                description = "Dim inactive windows",
                path = "dim_inactive",
                type = "boolean",
                default = false
            }, {
                name = "Transparant mode",
                description = "Enable transparant mode",
                path = "transparent_mode",
                type = "boolean",
                default = false
            }
        }
    }
}
