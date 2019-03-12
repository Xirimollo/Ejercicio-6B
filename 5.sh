#5. Escribe un script que procese el ﬁchero listado.txt. Cada l´ınea de este ﬁchero tiene un usuario, un sistema operativo y un valor num´erico que indica el nu´mero de procesos que tiene en ejecuci´on ese usuario en este sistema. Lo que se pretende que haga el script es que, recorra las l´ıneas del ﬁchero y calcule cu´antos usuarios tienen Linux, cua´ntos Windows y el total de procesos de cada sistema. El resultado del script deber´ıa ser algo como:

WindowsUsers=0
LinuxUsers=0
WindowsProcess=0
LinuxProcess=0
Windows=0
isProcess=1
for i in $(cat listado.txt| awk '{print $2, $3}') ; do	
		isProcess=1
		if [ $i = "Windows" ] ; then
			WindowsUsers=$(($WindowsUsers+1))
			Windows=1	
			isProcess=0
			else if [ $i = "Linux" ] ; then
				LinuxUsers=$(($LinuxUsers+1))
				isProcess=0
				Windows=0
			fi
		fi
		if [ $Windows -eq 1 ] ; then
			if [ $isProcess -eq 1 ] ; then
				WindowsProcess=$(($WindowsProcess+$i))
			fi
		fi
		if [ $Windows -eq 0 ] ; then
			if [ $isProcess -eq 1 ] ; then
				LinuxProcess=$(($LinuxProcess+$i))
			fi
		fi

done
echo "Linux ->> "$LinuxUsers" "$LinuxProcess
echo "Windows ->> "$WindowsUsers" "$WindowsProcess


