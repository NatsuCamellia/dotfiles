-- NOTE: Plugins can also be added by using a table,
-- with the first argument being the link and the following
-- keys can be used to configure plugin behavior/loading/etc.
--
-- Use `opts = {}` to automatically pass options to a plugin's `setup()` function, forcing the plugin to be loaded.
--

-- Alternatively, use `config = function() ... end` for full control over the configuration.
-- If you prefer to call `setup` explicitly, use:
--    {
--        'lewis6991/gitsigns.nvim',
--        config = function()
--            require('gitsigns').setup({
--                -- Your gitsigns configuration here
--            })
--        end,
--    }
--
-- Here is a more advanced example where we pass configuration
-- options to `gitsigns.nvim`.
--
-- See `:help gitsigns` to understand what the configuration keys do
return { -- Adds git related signs to the gutter, as well as utilities for managing changes
  'lewis6991/gitsigns.nvim',
  opts = {
    signs = {
      add = { text = '+' },
      change = { text = '~' },
      delete = { text = '_' },
      topdelete = { text = '‾' },
      changedelete = { text = '~' },
    },
  },
  config = function()
    local gitsigns = require('gitsigns')
    vim.keymap.set("n", "<leader>gb", require("gitsigns").blame, { desc = "[G]itsign [B]lame" })
    vim.keymap.set("n", "<leader>gc", require("gitsigns").show_commit, { desc = "[G]itsign Show [C]ommit" })
    vim.keymap.set("n", "<leader>gtb", require("gitsigns").toggle_current_line_blame, { desc = "[G]itsign [T]oggle [B]lame" })
    vim.keymap.set("n", "<leader>gh", require("gitsigns").stage_hunk, { desc = "[G]itsign Stage [H]unk" })
    vim.keymap.set("n", "<leader>gs", require("gitsigns").show, { desc = "[G]itsign [S]how" })

    -- Navigation
    vim.keymap.set('n', ']c', function()
      if vim.wo.diff then
        vim.cmd.normal({']c', bang = true})
      else
        gitsigns.nav_hunk('next')
      end
    end)

    vim.keymap.set('n', '[c', function()
      if vim.wo.diff then
        vim.cmd.normal({'[c', bang = true})
      else
        gitsigns.nav_hunk('prev')
      end
    end)

    -- Actions
    vim.keymap.set('n', '<leader>hs', gitsigns.stage_hunk, { desc = "Gitsigns: Stage Hunk" })
    vim.keymap.set('n', '<leader>hr', gitsigns.reset_hunk, { desc = "Gitsigns: Reset Hunk" })

    vim.keymap.set('v', '<leader>hs', function()
      gitsigns.stage_hunk({ vim.fn.line('.'), vim.fn.line('v') })
    end, { desc = "Gitsigns: Stage Selected Hunk" })

    vim.keymap.set('v', '<leader>hr', function()
      gitsigns.reset_hunk({ vim.fn.line('.'), vim.fn.line('v') })
    end, { desc = "Gitsigns: Reset Selected Hunk" })

    vim.keymap.set('n', '<leader>hS', gitsigns.stage_buffer, { desc = "Gitsigns: Stage Buffer" })
    vim.keymap.set('n', '<leader>hR', gitsigns.reset_buffer, { desc = "Gitsigns: Reset Buffer" })
    vim.keymap.set('n', '<leader>hp', gitsigns.preview_hunk, { desc = "Gitsigns: Preview Hunk" })
    vim.keymap.set('n', '<leader>hi', gitsigns.preview_hunk_inline, { desc = "Gitsigns: Preview Hunk Inline" })

    vim.keymap.set('n', '<leader>hb', function()
      gitsigns.blame_line({ full = true })
    end, { desc = "Gitsigns: Blame Line" })

    vim.keymap.set('n', '<leader>hd', gitsigns.diffthis, { desc = "Gitsigns: Diff This" })

    vim.keymap.set('n', '<leader>hD', function()
      gitsigns.diffthis('~')
    end, { desc = "Gitsigns: Diff This ~" })

    vim.keymap.set('n', '<leader>hq', gitsigns.setqflist, { desc = "Gitsigns: Quickfix List"})
    vim.keymap.set('n', '<leader>hQ', function() gitsigns.setqflist('all') end, { desc = "Gitsigns: Quickfix List (All)" })

    -- Toggles
    vim.keymap.set('n', '<leader>tb', gitsigns.toggle_current_line_blame, { desc = "Gitsigns: Toggle Line Blame"})
    vim.keymap.set('n', '<leader>tw', gitsigns.toggle_word_diff, { desc = "Gitsigns: Toggle Word Diff"})
  end,
}
