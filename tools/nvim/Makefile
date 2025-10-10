all: ensure link package

ensure:
	@bin/nvim.sh ensure

link:
	@bin/nvim.sh link init.vim
	@bin/nvim.sh link init.d
	@bin/nvim.sh link plugin
	@bin/nvim.sh link after
	@bin/nvim.sh link compiler

package:
	@bin/nvim.sh package
