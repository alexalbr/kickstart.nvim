return {
  {
    'mfussenegger/nvim-ansible',
    config = function()
      vim.keymap.set('v', '<leader>te', function()
        require('ansible').run()
      end, { buffer = true, desc = 'Ansible: run selected task' })
      vim.keymap.set('n', '<leader>te', ":w<CR> :lua require('ansible').run()<CR>", { buffer = true, desc = 'Ansible: run current playbook' })
    end,
  },
}
