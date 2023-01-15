local status, difview = pcall(require, "diffview")

if (not status) then return end

local actions = require('diffview.actions')

difview.setup({
  keymaps = {
    disable_defaults = false,
    view = {
      { 'n', ">", actions.next_conflict, { desc = "jump to the next conflict" } },
      { 'n', "<", actions.prev_conflict, { desc = "jump to the previous conflict" } },
      { 'n', "c-", actions.conflict_choose("none"), { desc = "Delete the conflict region" } },
      { 'n', "c=", actions.conflict_choose("all"), { desc = "Choose all the version of a conflict" } },
      { 'n', "c<", actions.conflict_choose("ours"), { desc = "Choose the OURS version of a conflict" } },
      { 'n', "c>", actions.conflict_choose("theirs"), { desc = "Choose the THEIRS version of a conflict" } },

    }
  }
})

local keymap = vim.keymap

keymap.set("n", "dv", ":DiffviewOpen<cr>", { silent = true })
keymap.set("n", "dc", ":DiffviewClose<cr>", { silent = true })
