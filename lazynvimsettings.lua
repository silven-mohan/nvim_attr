-- =========================================
-- Basic Neovim settings
-- =========================================

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.opt.mouse = "a"

vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.smartindent = true

vim.g.mapleader = " "


-- =========================================
-- lazy.nvim
-- =========================================

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({

    -- =====================================
    -- LSP
    -- =====================================

    {
        "neovim/nvim-lspconfig",
    },


    -- =====================================
    -- Completion
    -- =====================================

    {
        "saghen/blink.cmp",

        version = "1.*",

        opts = {

            keymap = {
                preset = "default",

                ["<Tab>"] = {
                    "select_next",
                    "snippet_forward",
                    "fallback",
                },

                ["<S-Tab>"] = {
                    "select_prev",
                    "snippet_backward",
                    "fallback",
                },

                ["<CR>"] = {
                    "accept",
                    "fallback",
                },

                ["<C-Space>"] = {
                    "show",
                },

                ["<Esc>"] = {
                    "hide",
                    "fallback",
                },
            },


            appearance = {
                nerd_font_variant = "mono",
            },


            completion = {

                ghost_text = {
                    enabled = true,
                },

                menu = {
                    border = "rounded",
                },

                documentation = {
                    auto_show = true,
                    auto_show_delay_ms = 200,
                },
            },


            sources = {
                default = {
                    "lsp",
                    "path",
                    "snippets",
                    "buffer",
                },
            },
        },
    },

})


-- =========================================
-- Enable clangd
-- =========================================

vim.lsp.enable("clangd")
