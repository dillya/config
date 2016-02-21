#!/bin/sh

# Get config directory
CFG_DIR=$(dirname "$(readlink -f $0)")
CFG_BACK=$HOME/.config_backup

# List of files/directories to install
CFG_FILES=".vimrc
.i3
.Xresources
.profile"

# Save config files before
echo "Save current configuration in '$CFG_BACK'..."
if [ ! -e $CFG_BACK ]; then
	mkdir $CFG_BACK
fi
for i in $CFG_FILES; do
	echo "   Save $i"

	# Move only if file exists
	if [ -e $HOME/$i ]; then
		mv $HOME/$i $CFG_BACK/
	fi
done

# Make links
echo "Install new configuration in '$HOME'..."
for i in $CFG_FILES; do
	echo "   Install $i"
	ln -s $CFG_DIR/$i $HOME/$i
done

# Done
echo "Installation done!"

