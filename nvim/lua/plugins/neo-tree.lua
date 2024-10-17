return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies =
    {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim"
    },
  config = function()
    require'nvim-web-devicons'.setup({
      override = {
        zsh = {
          icon = "",
          color = "#428850",
          cterm_color = "65",
          name = "Zsh"
        }
      };
      color_icons = true;
      default = true;
      strict = true;
      variant = "light|dark";
      override_by_filename = {
        [".gitignore"] = {
          icon = "",
          color = "#f1502f",
          name = "Gitignore"
        }
      };
      override_by_extension = {
        ["log"] = {
          icon = "",
          color = "#81e043",
          name = "Log"
        }
      };
      override_by_operating_system = {
        ["apple"] = {
          icon = "",
          color = "#A2AAAD",
          cterm_color = "248",
          name = "Apple",
        },
      };
    })
    vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left<CR>', {})
  end
}
