#2. En el ﬁchero precipitaciones.txt hay una serie de l´ıneas que indican el d´ıa y la cantidad de litros que ha llovido. En este ejercicio debera´s crear un script que muestre por pantalla la media de precipitaciones tal y como se ve en la siguiente ejecucio´n:

media=0
contador=0
for i in $(cat precipitaciones.txt| awk '{print $2}') ; do
	media=$(($media+i))
	contador=$(($contador+1))
done

echo "La media de precipitaciones es: "$(($media/$contador))
