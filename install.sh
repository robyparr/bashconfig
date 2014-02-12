#!/bin/bash

symlink_c="/cygdrive/c"
symlink_c_dest="/c"

symlink_bashrc="/c/Users/$USER/Documents/Projects/bashconfig/.bashrc"
symlink_bashrc_dest="/home/$USER/.bashrc"

symlink_bin="/c/Users/$USER/Documents/Projects/bashconfig/bin"
symlink_bin_dest="/usr/local/bin"

if ! [ -h $symlink_c_dest ]; then
	ln -s $symlink_c $symlink_c_dest
	echo "Symlink created from $symlink_c to $symlink_c_dest."
else
	echo "Symlink $symlink_c already exists."
fi

if ! [ -h $symlink_bashrc_dest ]; then
	ln -s $symlink_bashrc $symlink_bashrc_dest
	echo "Symlink created from $symlink_bashrc to $symlink_bashrc_dest."
else
	echo "Symlink $symlink_bashrc already exists."
fi

if ! [ -h $symlink_bin_dest ]; then
	ln -s $symlink_bin $symlink_bin_dest
	echo "Symlink created from $symlink_bin to $symlink_bin_dest."
else
	echo "Symlink $symlink_bin already exists."
fi
