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
            -- Default opts 
            {
                name = "Sorting strategy",
                description = "Determines the direction 'better' results are sorted towards",
                path = "defaults.sorting_strategy",
                type = "choice",
                options = {"descending", "ascending"},
                default = "descending"
            }, {
                name = "Selection strategy",
                description = "Determines how the cursor acts after each sort iteration",
                path = "defaults.selection_strategy",
                type = "choice",
                options = {"reset", "follow", "row", "closest", "none"},
                default = "reset"
            }, {
                name = "Scroll strategy",
                description = "Determines what happens if you try to scroll past the view of the picker",
                path = "defaults.scroll_strategy",
                type = "choice",
                options = {"cycle", "limit"},
                default = "cycle"
            }, {
                name = "Layout strategy",
                description = "Layout strategy for telescope windows",
                path = "defaults.layout_strategy",
                type = "choice",
                options = {"horizontal", "vertical", "center"},
                default = "horizontal"
            }, {
                name = "Wrap results",
                description = "Word wrap the search results",
                path = "defaults.wrap_results",
                type = "boolean",
                default = false
            }, {
                name = "Prompt prefix",
                description = "The character(s) that will be shown in front of Telescope's prompt",
                path = "defaults.prompt_prefix",
                type = "string",
                default = ">"
            }, {
                name = "Selection prefix",
                description = "The character(s) that will be shown in front of the current selection",
                path = "defaults.selection_prefix",
                type = "string",
                default = ">"
            }, {
                name = "Entry prefix",
                description = "The character(s) that will be shown in front of each result entry",
                path = "defaults.entry_prefix",
                type = "string",
                default = "  "
            }, {
                name = "Multi icon",
                description = "Symbol to add in front of a multi-selected result entry",
                path = "defaults.multi_icon",
                type = "string",
                default = "+"
            }, {
                name = "Initial mode",
                description = "Determines in which mode Telescope starts",
                path = "defaults.initial_mode",
                type = "choice",
                options = {"insert", "normal"},
                default = "insert"
            }, {
                name = "border",
                description = "Boolean defining if borders are added to Telescope windows",
                path = "defaults.border",
                type = "boolean",
                default = true
            }, {
                name = "Highlight result end of line",
                description = "Changes if the highlight for the selected item in the results window is always the full width of the window",
                path = "defaults.hl_result_eol",
                type = "boolean",
                default = true
            }, {
                name = "Dynamic preview title",
                description = "Will change the title of the preview window dynamically, where it is supported",
                path = "defaults.dynamic_preview_title",
                type = "boolean",
                default = false
            }, {
                name = "Color devicons",
                description = "Boolean if devicons should be enabled or not. If set to false, the text highlight group is used. Coloring only works if termguicolors is enabled",
                path = "defaults.color_devicons",
                type = "boolean",
                default = true
            }
        },
        commands = {
            -- File pickers
            {
                name = "find_files",
                description = "Lists files in your current working directory, respects .gitignore",
                command = "require('telescope.builtin').find_files()"
            }, {
                name = "git_files",
                description = "Fuzzy search through the output of git ls-files command, respects .gitignore",
                command = "require('telescope.builtin').git_files()"
            }, {
                name = "grep_string",
                description = "Searches for the string under your cursor or selection in your current working directory",
                command = "require('telescope.builtin').grep_string()"
            }, {
                name = "live_grep",
                description = "Search for a string in your current working directory and get results live as you type, respects .gitignore. (Requires ripgrep)",
                command = "require('telescope.builtin').live_grep()"
            }, -- Vim pickers
            {
                name = "buffers",
                description = "Lists open buffers in current neovim instance",
                command = "require('telescope.builtin').buffers()"
            }, {
                name = "oldfiles",
                description = "Lists previously open files",
                command = "require('telescope.builtin').oldfiles()"
            }, {
                name = "commands",
                description = "Lists available plugin/user commands and runs them on <cr>",
                command = "require('telescope.builtin').commands()"
            }, {
                name = "search_history",
                description = "Lists searches that were executed recently, and reruns them on <cr>",
                command = "require('telescope.builtin').search_history()"
            }, {
                name = "help_tags",
                description = "Lists available help tags and opens a new window with the relevant help info on <cr>",
                command = "require('telescope.builtin').help_tags()"
            }, {
                name = "man_pages",
                description = "Lists manpage entries, opens them in a help window on <cr>",
                command = "require('telescope.builtin').man_pages()"
            }, {
                name = "marks",
                description = "Lists vim marks and their value",
                command = "require('telescope.builtin').marks()"
            }, {
                name = "colorscheme",
                description = "Lists available colorschemes and applies them on <cr>",
                command = "require('telescope.builtin').colorscheme()"
            }, {
                name = "quickfix",
                description = "Lists items in the quickfix list",
                command = "require('telescope.builtin').quickfix()"
            }, {
                name = "quickfixhistory",
                description = "Lists all quickfix lists in your history and open them with builtin.quickfix or quickfix window",
                command = "require('telescope.builtin').quickfixhistory()"
            }, {
                name = "loclist",
                description = "	Lists items from the current window's location list",
                command = "require('telescope.builtin').loclist()"
            }, {
                name = "jumplist",
                description = "Lists Jump List entries",
                command = "require('telescope.builtin').jumplist()"
            }, {
                name = "vim_options",
                description = "	Lists vim options, allows you to edit the current value on <cr>",
                command = "require('telescope.builtin').vim_options()"
            }, {
                name = "registers",
                description = "Lists vim registers, pastes the contents of the register on <cr>",
                command = "require('telescope.builtin').registers()"
            }, {
                name = "autocommands",
                description = "Lists vim autocommands and goes to their declaration on <cr>",
                command = "require('telescope.builtin').autocommands()"
            }, {
                name = "spell_suggest",
                description = "Lists spelling suggestions for the current word under the cursor, replaces word with selected suggestion on <cr>",
                command = "require('telescope.builtin').spell_suggest()"
            }, {
                name = "keymaps",
                description = "Lists normal mode keymappings",
                command = "require('telescope.builtin').keymaps()"
            }, {
                name = "filetypes",
                description = "Lists all available filetypes",
                command = "require('telescope.builtin').filetypes()"
            }, {
                name = "highlights",
                description = "Lists all available highlights",
                command = "require('telescope.builtin').highlights()"
            }, {
                name = "current_buffer_fuzzy_find",
                description = "Live fuzzy search inside of the currently open buffer",
                command = "require('telescope.builtin').current_buffer_fuzzy_find()"
            }, {
                name = "current_buffer_tags",
                description = "Lists all of the tags for the currently open buffer, with a preview",
                command = "require('telescope.builtin').current_buffer_tags()"
            }, {
                name = "resume",
                description = "	Lists the results incl. multi-selections of the previous picker",
                command = "require('telescope.builtin').resume()"
            }, {
                name = "pickers",
                description = "Lists the previous pickers incl. multi-selections (see :h telescope.defaults.cache_picker)",
                command = "require('telescope.builtin').pickers()"
            }, -- LSP Pickers
            {
                name = "lsp_references",
                description = "Lists LSP references for word under the cursor",
                command = "require('telescope.builtin').lsp_references()"
            }, {
                name = "lsp_incoming_calls",
                description = "Lists LSP incoming calls for word under the cursor",
                command = "require('telescope.builtin').lsp_incoming_calls()"
            }, {
                name = "lsp_outgoing_calls",
                description = "Lists LSP outgoing calls for word under the cursor",
                command = "require('telescope.builtin').lsp_outgoing_calls()"
            }, {
                name = "lsp_document_symbols",
                description = "Lists LSP document symbols in the current buffer",
                command = "require('telescope.builtin').lsp_document_symbols()"
            }, {
                name = "lsp_workspace_symbols",
                description = "Lists LSP document symbols in the current workspace",
                command = "require('telescope.builtin').lsp_workspace_symbols()"
            }, {
                name = "lsp_dynamic_workspace_symbols",
                description = "Dynamically Lists LSP for all workspace symbols",
                command = "require('telescope.builtin').lsp_dynamic_workspace_symbols()"
            }, {
                name = "diagnostics",
                description = "Lists Diagnostics for all open buffers or a specific buffer. Use option bufnr=0 for current buffer",
                command = "require('telescope.builtin').diagnostics()"
            }, {
                name = "lsp_implementations",
                description = "Goto the implementation of the word under the cursor if there's only one, otherwise show all options in Telescope",
                command = "require('telescope.builtin').lsp_implementations()"
            }, {
                name = "lsp_definitions",
                description = "Goto the definition of the word under the cursor, if there's only one, otherwise show all options in Telescope",
                command = "require('telescope.builtin').lsp_definitions()"
            }, {
                name = "lsp_type_definitions",
                description = "	Goto the definition of the type of the word under the cursor, if there's only one, otherwise show all options in Telescope",
                command = "require('telescope.builtin').lsp_type_definitions()"
            }, -- Git Pickers
            {
                name = "git_commits",
                description = "	Lists git commits with diff preview, checkout action <cr>, reset mixed <C-r>m, reset soft <C-r>s and reset hard <C-r>h",
                command = "require('telescope.builtin').git_commits()"
            }, {
                name = "git_bcommits",
                description = "Lists buffer's git commits with diff preview and checks them out on <cr>",
                command = "require('telescope.builtin').git_bcommits()"
            }, {
                name = "git_bcommits_range",
                description = "Lists buffer's git commits in a range of lines. Use options from and to to specify the range. In visual mode, lists commits for the selected lines",
                command = "require('telescope.builtin').git_bcommits_range()"
            }, {
                name = "git_branches",
                description = "	Lists all branches with log preview, checkout action <cr>, track action <C-t>, rebase action<C-r>, create action <C-a>, switch action <C-s>, delete action <C-d> and merge action <C-y>",
                command = "require('telescope.builtin').git_branches()"
            }, {
                name = "git_status",
                description = "Lists current changes per file with diff preview and add action. (Multi-selection still WIP)",
                command = "require('telescope.builtin').git_status()"
            }, {
                name = "git_stash",
                description = "Lists stash items in current repository with ability to apply them on <cr>",
                command = "require('telescope.builtin').git_stash()"
            }, -- Treesitter Pickers
            {
                name = "treesitter",
                description = "Lists Function names, variables, from Treesitter!",
                command = "require('telescope.builtin').treesitter()"
            }, -- Lists Pickers
            {
                name = "planets",
                description = "Use the telescope...",
                command = "require('telescope.builtin').planets()"
            }, {
                name = "builtin",
                description = "ltin	Lists Built-in pickers and run them on <cr>",
                command = "require('telescope.builtin').builtin()"
            }, {
                name = "reloader",
                description = "Lists Lua modules and reload them on <cr>",
                command = "require('telescope.builtin').reloader()"
            }, {
                name = "symbols",
                description = "Lists symbols inside a file data/telescope-sources/*.json found in your rtp. More info and symbol sources can be found here https://github.com/nvim-telescope/telescope-symbols.nvim",
                command = "require('telescope.builtin').symbols()"
            }
        }
    }
}
