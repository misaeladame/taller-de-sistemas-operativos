#Programa que determina si un numero es par o impar

echo Ingrese un numero
read num

if [ $(($num % 2)) -eq 0 ]
	then
	echo El número $num es par
else
	echo El número $num es impar
fi

