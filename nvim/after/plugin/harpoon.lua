local mark = require("harpoon.mark")
-- Go Language Server
local ui = require("harpoon.ui") -- Use distinct variable name for harpoon.ui

-- Add file to Harpoon
vim.keymap.set("n", "<leader>a", mark.add_file)

-- Toggle Harpoon quick menu
vim.keymap.set("n", "<leader>e", ui.toggle_quick_menu)

-- Navigate to files 1 through 6 with <leader>1 through <leader>6
for i = 1, 6 do
  vim.keymap.set("n", "<leader>" .. i, function() ui.nav_file(i) end)
end
