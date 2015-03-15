#!/bin/bash

#$a= ./cmdfind.rb "borrar directorios"

a= `./cmdfind.rb pertenecer`;
#a=`ls `; 
echo $a
b="chgrp - 1"
echo $b
if [ $a==$b]
	then echo 1
else
	echo 0 
fi
