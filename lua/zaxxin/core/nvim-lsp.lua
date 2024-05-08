--disable to use lsp-zero
vim.lsp.start({
   name = 'c-language',
   cmd = {'name-of-language-server-executable'},
   root_dir = vim.fs.dirname(vim.fs.find({'pyproject.toml', 'setup.py'}, { upward = true })[1]),
})
