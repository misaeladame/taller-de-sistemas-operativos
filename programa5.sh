#Programa que pide numeros y finalice cuando el numero sea negativo
#y calcula la suma de los pares e impares

num=1
sumaPares=0
sumaImpares=0

while [ $num -ge 0 ]
do
	echo Ingrese un numero
	read num
	if [ $num -ge 0 ]
	then
		if [ $(($num % 2)) -eq 0 ]
       		then
			sumaPares=$(($sumaPares + $num))
		else
        		sumaImpares=$(($sumaImpares + $num))
		fi
	fi
done

echo La suma de pares es $sumaPares
echo La suma de impares es $sumaImpares


