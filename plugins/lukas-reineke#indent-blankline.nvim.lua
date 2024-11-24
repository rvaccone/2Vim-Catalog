return {
    source = "lukas-reineke/indent-blankline.nvim",
    _metadata = {
        name = "indent-blankline.nvim",
        config_name = "ibl",
        description = "Indent guides for Neovim",
        homepage = "https://github.com/lukas-reineke/indent-blankline.nvim",
        pre_setup = [[main = "ibl",]],
        settings = {
            {
                name = "Enable scope",
                description = "Enable indent-blankline for the indentation level where variables or functions are accessible",
                path = "scope.enabled",
                type = "boolean",
                default = true
            }
        }
    }
}
