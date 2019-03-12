#8. Escribe un script que cree un listado de todas las direcciones IP que est´an conectadas en nuestra red local. Para ello, debemos utilizar el comando ping que nos devuelve cu´antos paquetes han sido enviados correctamente. Podemos enviar un nu´mero concreto de paquetes mediante alguna opcio´n de este comando, tal y como ya vimos en actividades de redes (utilizar el man si no lo recuerdas). El resultado de un ping a una m´aquina que esta´ conectada ser´ıa el que se ve en la siguiente imagen. Como puedes ver, en este caso se ha enviado un paquete y se ha recibido correctamente (1 received), mientras que si no se recibe nada, el mensaje ser´ıa diferente:


for i in `seq 1 254` ; do
	packet=`ping 192.168.0.$i -c 1 | grep received | awk '{print $4}'`
	
	echo "A la ip: 192.168.0."$i" se le han enviado correctamente: "$packet" paquetes"
done
