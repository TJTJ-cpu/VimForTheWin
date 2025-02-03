-- Set Leader
vim.g.mapleader = " "

-- Indentation
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

-- Line Number
vim.cmd("set rnu")
vim.cmd("set nu")
vim.cmd("set scrolloff=10")

-- Terminal
vim.cmd("set wrap")
vim.cmd("set linebreak")
vim.api.nvim_set_keymap("n", "j", "gj", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "k", "gk", { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<Esc>", "<C-\\><C-n>", { noremap = true, silent = true })
vim.opt.updatetime = 250

-- Cursor
vim.cmd("set cursorline")
vim.opt.guicursor = "n-v-i-c:block-Cursor"


-- TJ's Keymap
-- vim.api.nvim_set_keymap("n", "<leader>,", "la, ", {})
vim.api.nvim_set_keymap("n", "<leader>,", "l%yl%a, <Esc>pbylwpi", {})
vim.api.nvim_set_keymap("n", "v", "viw", { noremap = true, silent = true })


-- Quick
vim.api.nvim_set_keymap("n", "H", "^", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "L", "$", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>v", ":vsplit<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>pv", ":Ex<CR>", { noremap = true, silent = true })

-- Save
vim.api.nvim_set_keymap("n", "<C-s>", ":wa<CR>", { noremap = true, silent = true })

-- Quit
vim.api.nvim_set_keymap("n", "<leader>q", ":q<CR>", { noremap = true, silent = true })

-- Spilt Screen
vim.api.nvim_set_keymap("n", "<leader>v", ":vsplit<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader><Tab>", "<C-w>w", { noremap = true, silent = true })

-- Ctrl C to Copy
vim.api.nvim_set_keymap("n", "<C-c>", '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<C-c>", '"+y', { noremap = true, silent = true })

-- Ctrl A to Select All
vim.api.nvim_set_keymap("n", "<C-a>", 'ggVG', { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<C-a>", 'ggVG', { noremap = true, silent = true })

-- Yank to System Clipboard
vim.api.nvim_set_keymap("n", "<leader>y", '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<leader>y", '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>Y", '"+Y', { noremap = true, silent = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Paste from System Clipboard
vim.api.nvim_set_keymap("n", "<leader>zp", '"+p', { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<leader>zp", '"+p', { noremap = true, silent = true })
