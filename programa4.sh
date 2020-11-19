#Programa que capture numeros y finalice hasta que el numero sea 0

num=1
while [ $num -ne 0 ]
do
	echo Teclea un numero
	read num
	if [ $num -ne 0 ]
	then
		echo El numero es diferente de cero

	fi

done
echo El numero es cero
echo ---- FIN DEL PROGRAMA ----
