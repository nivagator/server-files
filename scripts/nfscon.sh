#!/bin/bash

## recieve inputs
read -p 'Network IP or hostname: ' nfsshr
read -p 'Share folder: ' shrfldr
read -p 'Mount point: ' mntpnt

## check if desired mount point exists
if [ ! -d "$mntpnt" ]
then
  ## if not, create it
	echo "Mount point does not exist. Creating mount point"
	sudo mkdir $mntpnt
else
  ## if so, check for existing connection
	mnttest=`mount | grep $shrfldr`
	if [ ! -z "$mnttest" ]
	then
    ## if connection exists, exit
    echo "Connection already exists at "$mntpnt
		exit
	fi
fi

## attempt to mount
echo "Mounting drive"
sudo mount $nfsshr:$shrfldr $mntpnt

## check for successful mount
mnttest=`mount | grep $nfsshr:$shrfldr`
if [ ! -z "$mnttest" ]
then
	echo "Successfully connected to "$nfsshr":"$shrfldr
else
	echo "Connection failed"
fi
