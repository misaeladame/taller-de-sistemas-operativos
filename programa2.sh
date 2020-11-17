#Realizar programa que calcula el mayor de dos numeros

echo Escribe el primer numero
read num1

echo Esriba el segundo numero
read num2

if [ $num1 -gt $num2 ]
	then
	echo El numero mayor es $num1
elif [ $num1 -eq $num2 ]
	then
	echo Son iguales ambos numeros, $num1
else
	echo El numero mayor es $num2
fi
