" Optional setup for overriding defaults.
lua << EOF
  require("sort").setup({
{
  -- List of delimiters, in descending order of priority, to automatically
  -- sort on.
  delimiters = {
    ',',
    '|',
    ';',
    ':',
    's', -- Space
    't'  -- Tab
   }
}
  })
EOF
