-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
for i = 1, 9 do
  local lhs
  if vim.fn.has("mac") == 1 then
    lhs = "\x1b[" .. (48 + i) .. ";9u" -- matches the escape codes above
  else
    lhs = "<C-" .. i .. ">"
  end
  vim.keymap.set("n", lhs, "<Cmd>BufferLineGoToBuffer " .. i .. "<CR>", {
    desc = "Go to Buffer " .. i,
  })
end
