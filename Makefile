#
# Makefile for dotfiles
#
# You can use this Makefile to install individual dotfiles or install all of
# them at once. Each makefile rule first cleans the exisiting dotfile by
# removing it and replacing it with a symlink to the specific file in
# ~/dotfiles.
#
# !!! Make sure you backup your stuff first !!!
#

help:
	@echo 'Makefile for dotfiles                                                    '
	@echo '																			'
	@echo 'Usage:																	'
	@echo '		make all				install everything							'
	@echo '		make install_bash		install bash files							'
	@echo '		make install_vim		install vim files							'
	@echo '		make install_tmux		install tmux files							'
	@echo '		make install_git		install git files							'
	@echo '																			'
	@echo 'All install commands are also available as clean commands to remove 		'
	@echo 'installed files															'
	@echo '																			'


all: install_bash install_vim install_tmux install_git
	@echo ''
	@echo 'dotfiles - Making yourself at home'
	@echo ''
	@echo 'All done.'

install_bash: clean_bash
	ln -sf `pwd`/.bashrc ~/.bashrc
	ln -sf `pwd`/.bash_exports ~/.bash_exports
	ln -sf `pwd`/.bash_aliases ~/.bash_aliases

clean_bash:
	rm -Rf ~/.bashrc
	rm -Rf ~/.bash_exports
	rm -Rf ~/.bash_aliases

install_vim: clean_vim
	ln -sf `pwd`/.vimrc ~/.vimrc
	ln -sf `pwd`/.vim ~/.vim

clean_vim:
	rm -Rf ~/.vimrc
	rm -Rf ~/.vim

install_tmux: clean_tmux
	ln -sf `pwd`/.tmux.conf ~/.tmux.conf

clean_tmux:
	rm -Rf ~/.tmux.conf

install_git: clean_git
	ln -sf `pwd`/.gitconfig ~/.gitconfig
	ln -sf `pwd`/.gitignore_global ~/.gitignore

clean_git:
	rm -Rf ~/.gitconfig
	rm -Rf ~/.gitignore


