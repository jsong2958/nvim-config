return {
  {
    "lervag/vimtex",
    lazy = false,
    init = function()
      vim.g.vimtex_view_method = "zathura"
      vim.g.maplocalleader = ","
      vim.g.vimtex_compiler_method = "latexmk"

      vim.g.vimtex_compiler_latexmk = {
        aux_dir = "../build",
        out_dir = "../pdf",
        options = {
          "-pdf",
          "-shell-escape",
          "-verbose",
          "-file-line-error",
          "-interaction=nonstopmode",
        },
      }
      vim.g.vimtex_quickfix_open_on_warning = 0
      vim.g.vimtex_quickfix_open_on_error = 0
    end,
  },
}
