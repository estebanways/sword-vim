-- Use this file as test, but source the init
print(vim.opt.autoindent)

if vim.fn.has('nvim-0.7') == 1 then
  print('we got neovim 0.7')
end
