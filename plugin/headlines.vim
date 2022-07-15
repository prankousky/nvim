lua << EOF

vim.cmd [[highlight Headline1 guibg=#F0F]]
vim.cmd [[highlight Headline2 guibg=#F0F]]
vim.cmd [[highlight CodeBlock guibg=#F0F]]
vim.cmd [[highlight Dash guibg=#F0F gui=bold]]

require("headlines").setup {
    markdown = {
        headline_highlights = { "Headline1", "Headline2" },
    },
}
EOF
