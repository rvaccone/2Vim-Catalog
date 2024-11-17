return {
    source = 'windwp/nvim-autopairs',
    _metadata = {
        name = "Autopairs",
        config_name = "nvim-autopairs",
        description = "Autopairs is a Neovim plugin that lets you insert paired characters automatically.",
        homepage = "https://github.com/windwp/nvim-autopairs",
        pre_setup = [[event = "InsertEnter",]],
        settings = {
            {
                name = "disable_in_macro",
                description = "Disable autopairs in macro recording",
                path = "disable_in_macro",
                type = "boolean",
                default = false
            }, {
                name = "enable_bracket_in_quote",
                description = "Enable bracket pairs in quote",
                path = "enable_bracket_in_quote",
                type = "boolean",
                default = false
            }, {
                name = "Test nesting",
                description = "Test nesting",
                path = "test.nesting.test_nesting",
                type = "boolean",
                default = false
            }
        }
    }
}
