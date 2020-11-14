#Mi primer programa en Shell Linux
#Hola Mundo !
echo Hola Mundo
echo Taller S.O
echo Adios

echo Dame tu nombre por favor
read nombre
echo Hola $nombre

num=10
echo $num

num=$((num+1))
echo $num

if [ $num -gt 10 ];
then
	echo num es mayor que 10
else
	echo no entro al condicional
fi

ls
date
