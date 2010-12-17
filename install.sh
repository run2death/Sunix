#!/bin/bash
echo checking... 
if [ "$1" != "-neg" -a "$1" != "" ]
then
	echo "don't understand $1"
	echo "install faield!"
	exit
fi
if [ -z "`grep SunBash  $HOME/.bashrc`" -a ! -d ~/.Sunix ] 
then
	if [ "$1" = "-neg" ]
	then
		echo "init negative mode"
		tail -7 bashrc >> ~/.bashrc
	else
    	head -4 bashrc >> ~/.bashrc
	fi
	echo "install first time!"
	# install
	cp -rf .Sunix ~/
	chmod a+x ~/.Sunix/bin/*
else
	echo "Reinstall or update now!"
	# Back up
	cp -rf ~/.Sunix	/tmp
	
	# install
	cp -rf .Sunix ~/
	chmod a+x ~/.Sunix/bin/*
	
	# Restore
	cp /tmp/.Sunix/conf ~/.Sunix/ 
	cp /tmp/.Sunix/shortpath ~/.Sunix
fi

echo all finish!
