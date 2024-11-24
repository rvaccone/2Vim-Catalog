return {
    source = "nvim-tree/nvim-tree.lua",
    dependencies = {"nvim-tree/nvim-web-devicons"},
    _metadata = {
        name = "nvim-tree.lua",
        config_name = "nvim-tree",
        description = "A file explorer tree for neovim written in lua",
        homepage = "https://github.com/nvim-tree/nvim-tree.lua",
        pre_setup = [[version = "*",
        lazy = false,]],
        settings = {},
        commands = {
            {
                name = "Tree toggle",
                description = "Open or close the tree",
                lua_command = "<cmd>NvimTreeToggle<cr>"
            }, {
                name = "Tree focus",
                description = "Open the tree if it is closed, and then focus on the tree",
                lua_command = "<cmd>NvimTreeFocus<cr>"
            }, {
                name = "Find file",
                description = "Move the cursor in the tree for the current buffer, opening folders if needed",
                lua_command = "<cmd>NvimTreeFindFile<cr>"
            }, {
                name = "Tree collapse",
                description = "Collapse the tree recursively",
                lua_command = "<cmd>NvimTreeCollapse<cr>"
            }
        }
    }
}
