#7. Partiendo del ejercicio anterior, antes de realizar el borrado, se deber´a comprobar si existe el directorio antes de borrar, mostrando el mensaje “El directorio no existe” en caso que el directorio no exista. Hay diversas formas de saber si existe un directorio, una de ellas puede ser mediante el uso del comando pwd, que nos puede mostrar la ruta antes y despu´es de intentar posicionarnos en el directorio.

Directory=$1
Quant=0

cd $Directory
for i in $(ls|grep ".txt"); do
		rm $i
done



