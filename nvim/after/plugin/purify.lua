-- :so $VIMRUNTIME/syntax/hitest.vim
-- https://colorcodes.io is a great starting point...

-- Set cursor line colors.
vim.api.nvim_set_hl(0, "CursorLine", { ctermbg = "DarkBlue", bg = "#162F5A" })
vim.api.nvim_set_hl(0, "CursorLineNr", { ctermfg = "yellow", fg = "yellow", ctermbg = "DarkBlue", bg = "#0841A1" })

-- Set gutter line number colors.
vim.api.nvim_set_hl(0, "LineNrAbove", { ctermfg = "red", fg = "#C46EA2" })
vim.api.nvim_set_hl(0, "LineNrBelow", { ctermfg = "green", fg = "#6EC48B" })

-- Set visual highlight.
vim.api.nvim_set_hl(0, "Visual", { ctermbg = "Grey", bg = "#0b3b3d" })

-- Set highlight group for importing TS types for a nice visual distinction.
vim.api.nvim_set_hl(0, "TSConstructor", { fg = "#25888E" })

-- Set highlights for quick scope (highlights letters for quick horizontal movement).
vim.api.nvim_set_hl(0, "QuickScopePrimary", { fg = "#afff5f", bold = true, ctermfg = 155 })
vim.api.nvim_set_hl(0, "QuickScopeSecondary", { fg = "#5fffff", bold = true, ctermfg = 81 })

-- Floating windows.
vim.api.nvim_set_hl(0, "FloatBorder", { fg = "#2d3033", bg = "#2d3033" })
vim.api.nvim_set_hl(0, "FloatTitle", { bg = "#2d3033" })
vim.api.nvim_set_hl(0, "Float", { bg = "#2d3033" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#2d3033" })

-- Telescope.
vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "#2d3033" })
vim.api.nvim_set_hl(0, "TelescopePreviewNormal", { bg = "#292c33" })
vim.api.nvim_set_hl(0, "TelescopePromptNormal", { bg = "#2d3033" })
vim.api.nvim_set_hl(0, "TelescopeResultsNormal", { bg = "#434854" })
vim.api.nvim_set_hl(0, "TelescopeBorder", { fg = "#2d3033", bg = "#2d3033" })
vim.api.nvim_set_hl(0, "TelescopeSelection", { link = "CursorLine" })
vim.api.nvim_set_hl(0, "TelescopeTitle", { fg = "#fff36d" })

-- Diagnostics.
vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", { bg = "#651C32" })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn", { bg = "#402f36" })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineInfo", { bg = "#044A4E" })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineHint", { bg = "#3D365C" })

-- Folding.
vim.api.nvim_set_hl(0, "Folded", { bg = "#3D365C" })

-- Inlay Hints.
vim.api.nvim_set_hl(0, "LspInlayHint", { bg = "#371f54", fg = "#dba6f7", bold = true })

-- LSP Saga.
vim.api.nvim_set_hl(0, "SagaNormal", { link = "Float" })
vim.api.nvim_set_hl(0, "TitleString", { link = "FloatTitle" })
vim.api.nvim_set_hl(0, "TitleIcon", { link = "FloatTitle" })
vim.api.nvim_set_hl(0, "RenameNormal", { link = "Float" })