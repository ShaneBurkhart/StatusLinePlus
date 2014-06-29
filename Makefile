all:
	rm ~/dotfiles/vim/bundle/StatusLinePlus -rf
	vim +BundleInstall +qall
