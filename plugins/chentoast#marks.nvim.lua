return {
    source = "chentoast/marks.nvim",
    _metadata = {
        name = "marks.nvim",
        config_name = "marks",
        description = "A better user experience for viewing and interacting with Vim marks",
        homepage = "https://github.com/chentoast/marks.nvim",
        pre_setup = [[event = "VeryLazy",]],
        settings = {
            {
                name = "Default mappings",
                description = "Whether to map keybinds or not",
                path = "default_mappings",
                type = "boolean",
                default = true
            }, {
                name = "Cyclic",
                description = "Whether movements cycle back to the beginning/end of the buffer",
                path = "cyclic",
                type = "boolean",
                default = true
            }, {
                name = "Force write shada",
                description = "Whether the shada file is updated after modifying uppercase marks",
                path = "force_write_shada",
                type = "boolean",
                default = false
            }
        }
    }
}
