return {
    source = 'nvim-treesitter/nvim-treesitter',
    _metadata = {
        name = "Treesitter",
        config_name = "nvim-treesitter.configs",
        description = "A library for incremental parsing",
        homepage = "https://github.com/nvim-treesitter/nvim-treesitter",
        pre_setup = [[build = ":TSUpdate",]],
        settings = {
            {
                name = "Ensure installed",
                description = "Ensure the parser is installed",
                path = "ensure_installed",
                type = "choice",
                options = {"all", "maintained", "Specify languages"},
                subtype_trigger = "Specify languages",
                subtype = {
                    type = "multichoice",
                    options = {
                        "ada", "agda", "angular", "apex", "arduino", "asm",
                        "astro", "authzed", "awk", "bash", "bass", "beancount",
                        "bibtex", "bicep", "bitbake", "blueprint", "bp", "c",
                        "c_sharp", "cairo", "capnp", "chatito", "clojure",
                        "cmake", "comment", "commonlisp", "cooklang", "corn",
                        "cpon", "cpp", "css", "csv", "cuda", "cue", "cvt", "d",
                        "dart", "desktop", "devicetree", "dhall", "diff",
                        "disassembly", "dot", "dockerfile", "dot", "doxygen",
                        "dtd", "earthfile", "ebnf", "editorconfig", "eds",
                        "eex", "elixir", "elm", "elsa", "elvish",
                        "embedded_template", "erlang", "facility", "faust",
                        "fennel", "fidl", "firrtl", "fish", "foam", "forth",
                        "fortran", "fsh", "fsharp", "func", "fusion",
                        "git_config", "git_rebase", "gitattributes",
                        "gitcommit", "gitignore", "gleam", "glimmer_javascript",
                        "glimmer_typescript", "gls", "go", "godot", "gomod",
                        "gosum", "gotmpl", "gowork", "gpg", "graphql", "grep",
                        "groovy", "gstlaunch", "hack", "hare", "haskell",
                        "haskell_persistent", "hcl", "heex", "helm", "hjson",
                        "hlsl", "hocon", "hoon", "html", "htmldjango", "http",
                        "hurl", "hypr", "idl", "ini", "inko", "ispc",
                        "janet_simple", "java", "javascript", "jq", "jsdoc",
                        "json", "json5", "jsonnet", "julia", "just", "kconfig",
                        "kdl", "kotlin", "koto", "kusto", "lairpop", "latex",
                        "ledger", "leo", "linkerscript", "liquid", "liquidsoap",
                        "llvm", "lua", "luadoc", "lua_patterns", "luau", "m68k",
                        "make", "markdown", "matlab", "menhir", "mermaid",
                        "meson", "mlir", "muttrc", "nasm", "nginx", "nickel",
                        "nim", "nim_format_string", "ninja", "nix", "norg",
                        "nqc", "objc", "objdump", "ocaml", "ocaml_interface",
                        "ocamiex", "odin", "pascal", "passwd", "pem", "perl",
                        "php", "phpdoc", "pioasm", "po", "pod", "PowerShell",
                        "printf", "prisma", "prolog", "promql", "properties",
                        "proto", "psl", "pug", "puppet", "purescript", "python",
                        "ql", "qmldir", "qmljs", "r", "racket", "rasi", "re2c",
                        "readline", "regex", "rego", "requirements", "rescript",
                        "rnoweb", "robot", "robots", "ron", "rst", "ruby",
                        "rust", "scala", "scheme", "scss", "sflog", "slang",
                        "slint", "smithy", "snakemake", "solidity", "soql",
                        "sosl", "sourcepawn", "sparql", "sql", "squirrel",
                        "ssh_config", "starlark", "strace", "styled",
                        "supercollider", "surface", "svelte", "swift",
                        "sxhkdrc", "systemtap", "t32", "tablegen", "tact",
                        "tcl", "teal", "templ", "terraform", "textproto",
                        "thrift", "tiger", "tiplus", "tmux", "todotxt", "toml",
                        "tsx", "turtle", "twig", "typescript", "typespec",
                        "typoscript", "typst", "udev", "ungrammar", "unison",
                        "usd", "uxn", "v", "vala", "vento", "verilog", "vhdl",
                        "vim", "vimdoc", "vrl", "vue", "wgsl", "wgsl_bevy",
                        "wing", "wit", "xml", "xresources", "yaml", "yang",
                        "yuck", "zathurarc", "zig", "ziggy_schema"
                    }
                },
                default = "all"
            }, {
                name = "Highlight",
                description = "Enable highlighting",
                path = "highlight.enable",
                type = "boolean",
                default = true
            }, {
                name = "Additional Vim Regex Highlighting",
                description = "Will run :syntax and tree-sitter at the same time",
                path = "highlight.additional_vim_regex_highlighting",
                type = "boolean",
                default = true
            }, {
                name = "Indendation",
                description = "Indentation based on treesitter for the = operator",
                path = "indent.enable",
                type = "boolean",
                default = true
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
