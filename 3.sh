#Escribe un script que muestre por pantalla el listado de d´ıas que no llovio´, asumiendo que el primero es lunes.
dia=0
contador=0
for i in $(cat precipitaciones.txt| awk '{print $2}') ; do
	dia=$(($dia+1))
	echo $dia" llovio " $i
	
	if [ $i -eq 0 ]; then
		while [ $contador != $dia ]; do
			for x in lunes martes miercoles jueves viernes sabado domingo; do	
				contador=$(($contador+1))
				if [ $dia -eq $contador ]; then 
					echo "Hoy "$x" no llovio"
					break
				fi
			done
		done
		contador=0
	fi
done

