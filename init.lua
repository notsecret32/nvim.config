require 'core.options'
require 'core.keymaps'

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup {
  -- Color Theme
  require 'plugins.colortheme',

  -- Explorer
  require 'plugins.neotree',

  -- File Tabs (on top of the screen)
  require 'plugins.bufferline',

  -- Bottom line (mode, branch, file name and etc.)
  require 'plugins.lualine',

  -- Syntax highlighting
  require 'plugins.treesitter',

  -- File search
  require 'plugins.telescope',

  -- LSP
  require 'plugins.lsp',

  -- Autocompletion
  require 'plugins.autocompletion',

  -- Autoformatting
  require 'plugins.autoformatting',

  -- Git Signs
  require 'plugins.gitsigns',

  -- Welcome Screen
  require 'plugins.alpha',

  -- Black line
  require 'plugins.indent-blackline',

  -- Misc
  require 'plugins.misc',

  -- Commenting code
  require 'plugins.comment',
}
