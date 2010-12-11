#!/bin/bash
echo checking... 
if [ -z "`grep SunBash  $HOME/.bashrc`" -a ! -d ~/.Sunix ] 
then
    cat bashrc >> ~/.bashrc
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
