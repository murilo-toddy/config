function ColorMyPencils(color) 
    require('rose-pine').setup({
        variant = "main", -- auto, main, moon, or dawn
        dark_variant = "main", -- main, moon, or dawn
        dim_inactive_windows = false,
        extend_background_behind_borders = true,

        styles = {
            bold = false,
            italic = true,
            transparency = true,
        },

        groups = {
            border = "love",
            link = "love",
            panel = "love",

            error = "love",
            hint = "iris",
            info = "foam",
            warn = "gold",

            git_add = "foam",
            git_change = "rose",
            git_delete = "love",
            git_dirty = "rose",
            git_ignore = "muted",
            git_merge = "iris",
            git_rename = "pine",
            git_stage = "iris",
            git_text = "rose",
            git_untracked = "subtle",

            headings = {
                h1 = "iris",
                h2 = "foam",
                h3 = "rose",
                h4 = "gold",
                h5 = "pine",
                h6 = "foam",
            },
            -- Alternatively, set all headings at once.
            -- headings = "subtle",
        },

        highlight_groups = {
            TelescopeBorder = { fg = "highlight_high", bg = "none" },
            TelescopeNormal = { bg = "none" },
            TelescopePromptNormal = { bg = "base" },
            TelescopeResultsNormal = { fg = "subtle", bg = "none" },
            TelescopeSelection = { fg = "text", bg = "base" },
            TelescopeSelectionCaret = { fg = "none", bg = "none" },
        },

        before_highlight = function(group, highlight, palette)
            -- Change palette colour
            if highlight.fg == palette.base then
                highlight.fg = palette.base
--            if highlight.fg == palette.base then
--                highlight.fg = "#FFFFFF"
--            elseif highlight.fg == palette.surface then
--                highlight.fg = "#FFFFFF"
--            elseif highlight.fg == palette.overlay then
--                highlight.fg = "#FFFFFF"
            elseif highlight.fg == palette.muted then
                highlight.fg = "#3A767A"
            elseif highlight.fg == palette.subtle then
                highlight.fg = "#735151"
            elseif highlight.fg == palette.text then
                highlight.fg = "#EEEEEC"
            elseif highlight.fg == palette.gold then
                highlight.fg = "#DDE075"
--            elseif highlight.fg == palette.rose then
--                highlight.fg = "#FFFFFF"
            elseif highlight.fg == palette.pine then
                highlight.fg = "#E07575"
--            elseif highlight.fg == palette.foam then
--                highlight.fg = "#ffffff"
--            elseif highlight.fg == palette.iris then
--                highlight.fg = "#ffffff"
--            elseif highlight.fg == palette.highlight_low then
--                highlight.fg = "#FFFFFF"
--            elseif highlight.fg == palette.highlight_med then
--                highlight.fg = "#ffffff"
--            elseif highlight.fg == palette.highlight_high then
--                highlight.fg = "#ffffff"
            end
        end,
    })

	color = color or "rose-pine"
    vim.cmd.colorscheme(color)
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils()
