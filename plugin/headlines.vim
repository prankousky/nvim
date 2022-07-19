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
    },
}
EOF
