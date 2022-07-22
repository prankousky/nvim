lua << EOF

vim.cmd [[highlight Headline1 guibg=#2C6E00 guifg=#58DB01 gui=italic]]
vim.cmd [[highlight Headline2 guibg=#C8DB01 guifg=#2C6E00 gui=italic]]
--
vim.cmd [[highlight CodeBlock guibg=#07230E guifg=lightyellow]]
--
vim.cmd [[highlight Quote guifg=#0099EC]]
--
-- vim.cmd [[highlight Dash guibg=#58DB01]]
-- vim.cmd [[highlight Dash guifg=#58DB01 gui=bold]]

require("headlines").setup {
    markdown = {
        headline_highlights = {
            "Headline1",
            "Headline2"
            },
        fat_headlines = false,
        fat_headline_upper_string = "▃",
        --
        codeblock_highlight = "CodeBlock",
        --
        quote_highlight = "Quote",
        -- quote_string = "┃",
        quote_string = ">> ",
        --
        dash_highlight = "Dash",
        dash_string = "_",
      norg = {
        query = vim.treesitter.parse_query(
            "norg",
            [[
                [
                    (heading1_prefix)
                    (heading2_prefix)
                    (heading3_prefix)
                    (heading4_prefix)
                    (heading5_prefix)
                    (heading6_prefix)
                ] @headline

                (weak_paragraph_delimiter) @dash
                (strong_paragraph_delimiter) @doubledash

                ((ranged_tag
                    name: (tag_name) @_name
                    (#eq? @_name "code")
                ) @codeblock (#offset! @codeblock 0 0 1 0))

                (quote1_prefix) @quote
            ]]
        ),
        headline_highlights = { "Headline" },
        codeblock_highlight = "CodeBlock",
        dash_highlight = "Dash",
        dash_string = "-",
        doubledash_highlight = "DoubleDash",
        doubledash_string = "=",
        quote_highlight = "Quote",
        quote_string = "┃",
        fat_headlines = true,
        fat_headline_upper_string = "▃",
        fat_headline_lower_string = "🬂",
    },
    org = {
        query = vim.treesitter.parse_query(
            "org",
            [[
                (headline (stars) @headline)

                (
                    (expr) @dash
                    (#match? @dash "^-----+$")
                )

                (block
                    name: (expr) @_name
                    (#eq? @_name "SRC")
                ) @codeblock

                (paragraph . (expr) @quote
                    (#eq? @quote ">")
                )
            ]]
        ),
        headline_highlights = { "Headline" },
        codeblock_highlight = "CodeBlock",
        dash_highlight = "Dash",
        dash_string = "-",
        quote_highlight = "Quote",
        quote_string = "┃",
        fat_headlines = true,
        fat_headline_upper_string = "▃",
        fat_headline_lower_string = "🬂",
    },  },
}
EOF
