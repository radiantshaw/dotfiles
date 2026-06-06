.PHONY: dependencies setup

DOTFILES := $(HOME)/.files/tools/nvim
VIM_CONFIG := $(HOME)/.vim

default: dependencies setup

dependencies:
	@./bin/install.sh vim ctags

VIM_FOLDER_NAMES := after compiler init.d plugin
VIM_FOLDERS := $(addprefix $(VIM_CONFIG)/,$(VIM_FOLDER_NAMES))

setup: $(VIM_CONFIG)/vimrc $(VIM_FOLDERS)

$(VIM_FOLDERS): | $(VIM_CONFIG)
	ln -s $(DOTFILES)/$(notdir $@) $@

$(VIM_CONFIG)/vimrc: | $(VIM_CONFIG)
	ln -s $(DOTFILES)/init.vim $@

$(VIM_CONFIG):
	mkdir $@
