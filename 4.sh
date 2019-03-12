#4. Escribe un script que muestre un listado de los nu´meros pares que hay en el ﬁchero numeros.txt as´ı como un listado de los nu´meros impares. Adema´s, deber´a mostrar el total de cada tipo.
NumPares=0
NumImpares=0
echo "Numeros pares: "
for i in $(cat numeros.txt) ; do
	if [ $(($i%2)) -eq 0 ]; then
		echo $i
		NumPares=$(($NumPares+1))
	
	fi
done
echo "Hay: "$NumPares" numeros pares"
echo "Numeros impares: "
for i in $(cat numeros.txt) ; do
	if [ $(($i%2)) -ne 0 ]; then
		echo $i
		NumImpares=$(($NumImpares+1))
	fi
done

echo "Hay: "$NumImpares" numeros impares"


