lua << EOF
-- defaults
require'regexplainer'.setup {
  -- 'narrative'
  mode = 'narrative', -- TODO: 'ascii', 'graphical'

  -- automatically show the explainer when the cursor enters a regexp
  auto = false,

  -- filetypes (i.e. extensions) in which to run the autocommand
  filetypes = {
    'cjs',
    'cjsx',
    'html',
    'js',
    'jsx',
    'sh',
    'md',
    'mjs',
    'mjsx',
    'ts',
    'tsx',
    'yaml'
  },

  -- Whether to log debug messages
  debug = false,

  -- 'split', 'popup', 'pasteboard'
  display = 'popup',
  popup = {
    border = {
      padding = {0, 0},
      style = 'solid',
      },
    },

  mappings = {
    toggle = 'gR',
    -- examples, not defaults:
    -- show = 'gS',
    -- hide = 'gH',
    -- show_split = 'gP',
    -- show_popup = 'gU',
  },

  narrative = {
    separator = '\n',
  },
}
EOF
