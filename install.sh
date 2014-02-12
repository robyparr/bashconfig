#!/bin/bash

symlink_c="/cygdrive/c"
symlink_c_dest="/c"

symlink_bashrc="/c/Users/Rob/Documents/Projects/bashconfig/.bashrc"
symlink_bashrc_dest="/home/Rob/.bashrc"

if ! [ -e $symlink_c ]; then
	ln -s $symlink_c $symlink_c_dest
	echo "Symlink created from" $symlink_c "to" $symlink_c_dest
else
	echo "Symlink" $symlink_c "already exists."
fi

if ! [ -e $symlink_bashrc ]; then
	ln -s $symlink_bashrc $symlink_bashrc_dest
	echo "Symlink created from" $symlink_bashrc "to" $symlink_bashrc_dest
else
	echo "Symlink" $symlink_bashrc "already exists."
fi

