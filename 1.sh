#1. Escribe un Shell script que cree una estructura de directorios similar a la siguiente para los nombres que se encuentren en el ﬁchero nombres.txt, y teniendo en cuenta un nu´mero X de subdirectorios personal que se deben crear (para el caso de la imagen, X=3). El valor de la X sera´ introducido por el usuario como para´metro a la llamada del script. Por ejemplo, si queremos crear 3 subdirectorios realizar´ıamos la siguiente llamada: ./script.sh 3

subdirectorios=$1
contador=1

for i in $(cat nombres.txt); do
	mkdir $i
	
	while [ $contador -le $subdirectorios ] ; do	
		mkdir ./$i/'directorio personal '$contador
		contador=$(($contador+1))
	done
	
	contador=1

done
