#!/bin/bash
var=30
for u in  {"sysAd_","webDev_","appDev_"}
do
	for i in {0..2}
	do 
		for j in {1..9}
		do 
			pass="$u$i$j@07"
			sudo useradd -m "$u$i$j"
			echo "$u$i$j:$pass" | sudo chpasswd 
		done
		
	done
	pass1=$u$var@07
	sudo useradd -m "$u$var"
	echo "$u$var:$pass1" | sudo chpasswd 
done

	sudo useradd -m "jay_jay"
	echo "jay_jay:jay_jay@07" | sudo chpasswd
	sudo usermod -aG sudo jay_jay
