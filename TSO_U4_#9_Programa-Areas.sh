#!/bin/sh

#Programa de areas
echo "Alumno: #9 - 18131209 - ADAME SANDOVAL JOSE MISAEL"
echo "\nPrograma que presenta un menú para calcular áreas de algunas figuras"

opcion=0
while [ $opcion != salir ] && [ $opcion != Salir ] && [ $opcion != SALIR ]
do
	echo "\nIngrese el número correspondiente a la figura que desea calcular su área"
	echo "\t1. Cuadrado"
	echo "\t2. Triangulo"
	echo "\t3. Rombo"
	echo "\t4. Trapecio"
	read figura

	case $figura in
		1)
			echo "\nNOTA: Ingresar valores enteros porque Shell no soporta valores decimales, por lo tanto, el resultado será un número entero"

			echo "\nIngrese la medida del lado"
			read lado

			if [ $lado -gt 0 ]
			then
				area=$(($lado * $lado))
				echo "\nEl área del cuadrado es: $area"
			else
				echo "\nERROR: Se ingresó un caracter o un número no válido"
			fi
		;;
		2)
                        echo "\nNOTA: Ingresar valores enteros porque Shell no soporta valores decimales, por lo tanto, el resultado será un número entero"

			echo "\nIngrese la medida de la base"
			read base
			echo "Ingrese la medida de la altura"
			read altura

			if [ $base -gt 0 ] && [ $altura -gt 0 ]
			then
				area=$(($base * $altura / 2))
				echo "\nEl area del triangulo es: $area"
			else
				echo "\nERROR: En alguna(s) medida(s) se ingresó un caracter o un número no válido"
			fi
		;;
		3)
                        echo "\nNOTA: Ingresar valores enteros porque Shell no soporta valores decimales, por lo tanto, el resultado será un número entero"

			echo "\nIngrese la medida de la diagonal 1"
			read diagonal1

			echo "Ingrese la medida de la diagonal 2"
			read diagonal2

			if [ $diagonal1 -gt 0 ] && [ $diagonal2 -gt 0 ]
			then
				area=$(($diagonal1 * $diagonal2 / 2))
				echo "\nEl área del rombo es: $area"
			else
				echo "\nERROR: En alguna(s) medida(s) se ingresó un caracter o un número no válido"
			fi
		;;
		4)
                        echo "\nNOTA: Ingresar valores enteros porque Shell no soporta valores decimales, por lo tanto, el resultado será un número entero"

			echo "\nIngresa la medida de la base 1"
			read base1

			echo "Ingresa la medida de la base 2"
			read base2

			echo "Ingresa la medida de la altura"
			read altura

			if [ $base1 -gt 0 ] && [ $base2 -gt 0 ] && [ $altura -gt 0 ]
			then
				area=$(($(($base1 + $base2)) * $altura / 2))
				echo "\nEl área del trapecio es: $area"
			else
				echo "\nERROR: En alguna(s) medida(s) se ingresó un caracter o un número no válido"
			fi
		;;
		*)
			echo "\nERROR, Opción no válida"
		;;
	esac

	echo "\nOPCIONES:"
	echo "\tSi desea finalizar el programa ingresar la palabra salir"
	echo "\tSi desea continuar el programa ingresar cualquier caracter(es) o numero"
	echo "¿Qué desea hacer?"
	read opcion
done
