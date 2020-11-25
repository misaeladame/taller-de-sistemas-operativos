#Calculadora básica en Shell
echo "Programa de una calculadora básica que lee solo dos valores enteros \n"

echo "Ingrese el número uno"
read num1

echo "Ingrese el número dos"
read num2


echo "\nColoca el número correspondiente a la operación a realizar"
echo "\t 1. Suma"
echo "\t 2. Resta"
echo "\t 3. Multiplicacion"
echo "\t 4. Division"
echo "\t 5. Residuo de la división"
read operacion

resultado=0;

case $operacion in
	[1])
		resultado=$(($num1 + $num2))
		echo "\nEl resultado de la suma es: $resultado"
	;;
	[2])
               	resultado=$(($num1 - $num2))
               	echo "\nEl resultado de la resta es $resultado"
	;;
	[3])
               	resultado=$(($num1 * $num2))
               	echo "\nEl resultado de la multiplicacion es $resultado"
	;;
	[4])
		resultado=$(($num1 / $num2))
		echo "\nEl resultado de la división es $resultado"
	;;
	[5])
		resultado=$(($num1 % $num2))
		echo "\nEl resultado del residuo de la división es $resultado"
	;;
	*)
		echo "\nError, Operacion no válida"
	;;
esac

