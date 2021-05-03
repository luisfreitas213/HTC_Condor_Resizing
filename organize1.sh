#!/bin/bash
z=6 #numero de ficheiros
z=$((z-1)) 
sudo echo "file p720_0.mp4" > p.txt
w=1 
while [ $w -le $z ] 
do
	sudo echo "file p720_$w.mp4" >> p.txt
	w=$((w+1))
done

sudo mv /media/sf_project_hpc/p* /media/sf_project_hpc/shared2
