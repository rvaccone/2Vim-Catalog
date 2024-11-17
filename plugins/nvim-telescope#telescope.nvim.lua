return {
    source = 'nvim-telescope/telescope.nvim',
    dependencies = {'nvim-lua/plenary.nvim', 'nvim-tree/nvim-web-devicons'},
    _metadata = {
        name = "Telescope",
        config_name = "telescope",
        description = "A highly extendable fuzzy finder over lists",
        homepage = "https://github.com/nvim-telescope/telescope.nvim",
        pre_setup = [[]],
        settings = {
            {
                name = "layout_strategy",
                description = "Layout strategy for telescope windows",
                path = "defaults.layout_strategy",
                type = "choice",
                options = {"horizontal", "vertical", "center"},
                default = "horizontal"
            }
        },
        commands = {
            {
                name = "find_files",
                description = "Find files",
                modes = {"normal"},
                lua_command = "require('telescope.builtin').find_files()"
            }
        }
    }
}
