return {
    source = "neovim/nvim-lspconfig",
    _metadata = {
        name = "LSP Config",
        description = "Quickstart configurations for the Neovim LSP client",
        homepage = "https://github.com/neovim/nvim-lspconfig",
        pre_setup = [[event = {"BufReadPost", "BufNewFile"},]],
        disable_setup = true
    }
}
