-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  { 'leonardo-luz/floatwindow.nvim' },
  { 'leonardo-luz/floatterminal.nvim' },
  { 'leonardo-luz/ai.nvim' },
  { 'leonardo-luz/aichat.nvim' },
  {
    'leonardo-luz/type.nvim',
    opts = {
      words = 30,
    },
  },
  {
    'leonardo-luz/quicknotes.nvim',
    opts = {
      path = '~/path/to/your/notes',
      vim.keymap.set('n', '<leader>np', '<cmd>Quicknote<CR>', { desc = 'Quick[N]ote [P]revious' }),
      vim.keymap.set('n', '<leader>nn', '<cmd>QuicknoteNew<CR>', { desc = 'Quick[N]ote [N]ew' }),
      vim.keymap.set('n', '<leader>nl', '<cmd>QuicknoteList<CR>', { desc = 'Quick[N]ote [L]ist' }),
      vim.keymap.set('n', '<leader>nd', '<cmd>QuicknoteDelete<CR>', { desc = 'Quick[N]ote [D]elete' }),
    },
  },

  -- Local plugins
  -- { dir = '~/path/to/your/local/plugins' },
}
