return {
    source = "windwp/nvim-ts-autotag",
    _metadata = {
        name = "nvim-ts-autotag",
        config_name = "nvim-ts-autotag",
        description = "Use treesitter to auto close and auto rename html tag",
        homepage = "https://github.com/windwp/nvim-ts-autotag",
        settings = {
            {
                name = "Enable close",
                description = "Automatically close tags",
                path = "enable_close",
                type = "boolean",
                default = true
            }, {
                name = "Enable rename",
                description = "Automatically rename pairs of tags",
                path = "enable_rename",
                type = "boolean",
                default = true
            }, {
                name = "Enable close on slash",
                description = "Automatically close on trailing </",
                path = "enable_close_on_slash",
                type = "boolean",
                default = false
            }
        }
    }
}
