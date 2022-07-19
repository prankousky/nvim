lua << EOF

vim.cmd [[highlight Headline1 guibg=#2C6E00 guifg=#58DB01 gui=italic]]
vim.cmd [[highlight Headline2 guibg=#5#0099EC8DB01 guifg=#2C6E00 gui=italic]]
--
vim.cmd [[highlight CodeBlock guibg=#A0A0A0 guifg=#F9F9F9 gui=bold]]
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
    },
}
EOF
