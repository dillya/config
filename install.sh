#!/bin/sh

# Get config directory
CFG_DIR=$(dirname "$(readlink -f $0)")
CFG_BACK=$HOME/.config_backup

# List of files/directories to install
CFG_FILES=".vimrc
.vim
.i3
.Xresources
.profile"

# Install vim-pathogen
if ! dpkg -s vim-pathogen >/dev/null 2>&1; then
	echo "Vim Pathogen plugin is needed: installing it..."
	sudo apt-get -y install vim-pathogen
	echo "   Done"
fi

# Init and update submodules
echo "Init and Update git submodules..."
git -C $CFG_DIR submodule init
git -C $CFG_DIR submodule update

# Save config files before
echo "Save current configuration in '$CFG_BACK'..."
if [ ! -e $CFG_BACK ]; then
	mkdir $CFG_BACK
fi
for i in $CFG_FILES; do
	echo -n "   Save $i ("

	# Move only if file exists
	if [ -e $HOME/$i ]; then
		# Remove file if already saved
		if [ -e $CFG_BACK/$i ]; then
			rm -r $HOME/$i
			echo "already saved)"
		else
			mv $HOME/$i $CFG_BACK/
			echo "saved)"
		fi
	else
		echo "not present)"
	fi
done

# Make links
echo "Install new configuration in '$HOME'..."
for i in $CFG_FILES; do
	echo "   Install $i"
	ln -s $CFG_DIR/$i $HOME/$i
done

# Refresh Pathogen help
vim +Helptags +qall

# Done
echo "Installation done!"

