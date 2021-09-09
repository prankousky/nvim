lua << EOF
local catppuccino = require("catppuccino")

-- configure it
catppuccino.setup(
    {
		colorscheme = "neon_latte",
		-- colorscheme = "dark_catppuccino",
		transparency = false,
		term_colors = false,
		styles = {
			comments = "italic",
			functions = "italic",
			keywords = "italic",
			strings = "italic",
			variables = "italic",
		},
		integrations = {
			treesitter = true,
			native_lsp = {
				enabled = true,
				virtual_text = {
					errors = "italic",
					hints = "italic",
					warnings = "italic",
					information = "italic",
				},
				underlines = {
					errors = "underline",
					hints = "underline",
					warnings = "underline",
					information = "underline",
				}
			},
			lsp_trouble = false,
			lsp_saga = false,
			gitgutter = true,
			gitsigns = true,
			telescope = true,
			nvimtree = {
				enabled = false,
				show_root = false,
			},
			which_key = tre,
			indent_blankline = {
				enabled = true,
				colored_indent_levels = true,
			},
			dashboard = false,
			neogit = false,
			vim_sneak = true,
			fern = false,
			barbar = false,
			bufferline = false,
			markdown = truel,
			lightspeed = false,
			ts_rainbow = true,
			hop = false,
		}
	}
)
EOF
colorscheme catppuccino
