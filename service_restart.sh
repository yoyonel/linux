#!/bin/bash

# url: http://stackoverflow.com/questions/5874978/access-element-of-or-by-index
argc=$# 
for ((argn=1; argn<=argc; argn++)); do
	echo Restart service: ${!argn}
	sudo service ${!argn} restart
done

