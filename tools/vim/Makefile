all: ensure link package

ensure:
	@bin/vim.sh ensure

link:
	@bin/vim.sh link init.vim vimrc
	@bin/vim.sh link init.d
	@bin/vim.sh link plugin
	@bin/vim.sh link after
	@bin/vim.sh link compiler

package:
	@bin/vim.sh package
