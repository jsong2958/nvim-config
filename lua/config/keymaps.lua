-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Loop to map Ctrl + 1 through 9
for i = 1, 9 do
  vim.keymap.set("n", "<C-" .. i .. ">", "<Cmd>BufferLineGoToBuffer " .. i .. "<CR>", {
    desc = "Go to Buffer " .. i,
  })
end
