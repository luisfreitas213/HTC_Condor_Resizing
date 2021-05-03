#!/bin/bash
#variaveis
y=3 #numero de máquinas
x=$2 #máquina que está ser utilizada
z=6 #Número de divisoes(divisivel por 3)
seg=$(ffmpeg -i $1 2>&1 | grep "Duration"| cut -d ' ' -f 4 | sed s/,// | sed 's@\..*@@g' | awk '{ split($1, A, ":"); split(A[3], B, "."); print 3600*A[1] + 60*A[2] + B[1] }') #segundos do video

#sub variaveis
k=$((z/y)) #néumero de tarefas por máquina
w=$((x*k)) #tarefa inicial de cada máquina
t1=$((y*k)) #sub calculo
t=$((seg/t1)) #tamanho de cada parte do video (divisivel pelo sub calculo)  
f1=$((w+k)) #tarefa em que termina o trabalho (esta não e executada)
f=$((f1-1)) #terminar trabalhos
echo numero de máquinas $y
echo máquina que vai ser utilizada $x
echo divisoes $z 
echo segundos do video $seg
echo tarefas por máquina $k
echo tarefa inicial $w
echo tamanho de cada parte $t
echo ultima tarefa $f

while [ $w -le $f ] 
do
	ffmpeg -i $1 -ss $((t*w)) -t $t p$w.mp4
	ffmpeg -i p$w.mp4 -s hd720 p720_$w.mp4
	rm p$w.mp4
	w=$((w+1))        	
done

