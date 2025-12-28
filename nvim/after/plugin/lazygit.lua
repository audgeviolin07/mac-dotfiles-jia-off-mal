local ok = pcall(require, "lazygit")
if not ok then return end

vim.keymap.set('n', '<leader>gg', ':LazyGit<CR>', { silent = true })
