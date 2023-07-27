-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

-- Enable powershell as your default shell
lvim.builtin.bufferline.active = false
vim.cmd('source ~/.config/lvim/lua/user/lualine.lua')
vim.cmd('source ~/.config/lvim/lua/user/bufferline.lua')
-- vim.cmd('source ~/.config/lvim/lua/user/nvimtree.lua')
vim.opt.shell = "pwsh.exe -NoLogo"
vim.opt.shellcmdflag =
"-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;"
vim.cmd [[
		let &shellredir = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
		let &shellpipe = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
		set shellquote= shellxquote=
  ]]

-- Set a compatible clipboard manager
vim.g.clipboard = {
  copy = {
    ["+"] = "win32yank.exe -i --crlf",
    ["*"] = "win32yank.exe -i --crlf",
  },
  paste = {
    ["+"] = "win32yank.exe -o --lf",
    ["*"] = "win32yank.exe -o --lf",
  },

}
-- lvim.builtin.lualine.options.theme = "gruvbox"
lvim.transparent_window = true
-- lvim.builtin.lualine.options.theme = "lunar"

require('luasnip').filetype_extend("javascript", { "javascriptreact" })
require('luasnip').filetype_extend("javascript", { "html" })
require("luasnip.loaders.from_vscode").lazy_load()
-- general
lvim.format_on_save = {
  enabled = true,
  pattern = "*.lua",
  timeout = 1000,
}
lvim.colorscheme = "lunar"
reload('user.options')
reload('user.plugins')
reload('user.keymaps')
reload('user.harpoon')
reload('user.tree')
reload('user.spectre')
reload('user.autopairs')
reload('user.cmp')
reload('user.neosolarized')
reload('user.java')
