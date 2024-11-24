return {
    source = "numToStr/Comment.nvim",
    _metadata = {
        name = "Comment.nvim",
        config_name = "Comment",
        description = "Smart and powerful comment plugin for neovim. Supports treesitter, dot repeat, left-right/up-down motions, hooks, and more",
        homepage = "https://github.com/numToStr/Comment.nvim",
        settings = {
            {
                name = "Padding",
                description = "Add a space between comment and the line",
                path = "padding",
                type = "boolean",
                default = true
            }, {
                name = "Sticky",
                description = "Whether the cursor should stay at its position",
                path = "sticky",
                type = "boolean",
                default = true
            }, {
                name = "Basic mappings",
                description = "Operator-pending mapping; `gcc` `gbc` `gc[count]{motion}` `gb[count]{motion}`",
                path = "mappings.basic",
                type = "boolean",
                default = true
            }, {
                name = "Extra mappings",
                description = "Extra mapping; `gco`, `gcO`, `gcA`",
                path = "mappings.extra",
                type = "boolean",
                default = true
            }
        }
    }
}
