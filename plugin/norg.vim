lua << EOF
require('neorg').setup {
    load = {
        ["core.defaults"] = {},
        ["core.norg.dirman"] = {
            config = {
                workspaces = {
                    ben = "~/documents/ben/norg/ben",
                    misc = "~/documents/ben/norg/",
                }
            }
        }
    }
}
EOF
