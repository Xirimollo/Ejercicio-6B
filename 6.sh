#6. Escribe un script que simule un comando de borrado de ﬁcheros .txt. Para ello, el script tiene que recibir por par´ametro un directorio y tiene que borrar todos los ﬁcheros con extensio´n .txt que tenga ese directorio, mostrando al ﬁnal, un mensaje con la cantidad de ﬁcheros que se han borrado:


Directory=$1
Quant=0

cd $Directory
for i in $(ls|grep ".txt"); do
	rm $i
done




