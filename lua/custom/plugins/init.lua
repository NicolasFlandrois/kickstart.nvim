-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  --[[{
    --
    -- NeoGit
    --
    'NeogitOrg/neogit',
    dependencies = {
      'nvim-lua/plenary.nvim', -- required
      'sindrets/diffview.nvim', -- optional - Diff integration

      -- Only one of these is needed, not both.
      'nvim-telescope/telescope.nvim', -- optional
      'ibhagwan/fzf-lua', -- optional
    },
    config = true,
  },]]
  {
    --
    -- VimWiki
    --
    'vimwiki/vimwiki',
    -- config = function()
    init = function()
      vim.g.vimwiki_list = {
        { path = '~/.MyNotes/', syntax = 'markdown', ext = '.md', links_space_char = '-' },
        -- { path = '~/st/pm/work_notes', syntax = 'markdown', ext = '.md', links_space_char = '-' },
      }
      vim.g.vimwiki_ext2syntax = { ['.md'] = 'markdown', ['.markdown'] = 'markdown', ['.mdown'] = 'markdown' }
      vim.g.vimwiki_use_mouse = 1
      vim.g.vimwiki_markdown_link_ext = 1
    end,
  },
  {
    -- Lorem Ipsum
    'derektata/lorem.nvim',
    config = function()
        require('lorem').opts {
            sentenceLength = "medium",
            comma_chance = 0.2,
            max_commas_per_sentence = 2,
        }
    end
  },

  --  {
  --  --
  --  -- Codeium (Copilot FOSS alternative)
  --  --
  --    'Exafunction/codeium.nvim',
  --    dependencies = {
  --      'nvim-lua/plenary.nvim',
  --      'hrsh7th/nvim-cmp',
  --    },
  --    config = function()
  --      require('codeium').setup {}
  --    end,
  --  },
}
