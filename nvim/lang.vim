augroup lang
	autocmd!

	autocmd BufRead,BufNewFile *.dart call languages#dart#load()
	autocmd BufRead,BufNewFile *.tsx,*.ts,*.jsx,*.js call languages#js#load()
	autocmd BufWritePre *.rs lua vim.lsp.buf.formatting_sync(nil, 1000)
	autocmd BufWritePre *.dart lua vim.lsp.buf.formatting_sync(nil, 1000)
	autocmd BufWritePre *.tsx,*.ts,*.jsx,*.js lua vim.lsp.buf.formatting_sync(nil, 1000)
	" Markdown
	au BufNewFile,BufRead *.md set filetype=markdown
	au BufNewFile,BufRead *.mdx set filetype=markdown
	" Flow
	au BufNewFile,BufRead *.flow set filetype=javascript
	" Fish
	au BufNewFile,BufRead *.fish set filetype=fish

	set suffixesadd=.js,.es,.jsx,.json,.css,.less,.sass,.styl,.php,.py,.md

	autocmd FileType coffee setlocal shiftwidth=2 tabstop=2
	autocmd FileType ruby setlocal shiftwidth=2 tabstop=2
	autocmd FileType yaml setlocal shiftwidth=2 tabstop=2
augroup end
