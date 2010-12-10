#!/bin/bash
if [ "`grep SunBash  $HOME/.bashrc`" == "" ] ; then
    cat bashrc >> ~/.bashrc
    exit
fi

cp .Sunix ~/ -rf

chmod a+x ~/.Sunix/bin/*
