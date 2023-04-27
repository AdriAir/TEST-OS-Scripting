clear

#Ejercicio 1
read -p "Escribe tu nombre de usuario: " user
ps --user $user

#Ejercicio 2
echo "\nArchivos  en el directorio por defecto de $user\n"
ls -al /home/$user

#Ejercicio 3
read -p "Qué edad tienes? " age
if [ $age -lt 10 ]
then
	echo "Peque"
elif [ $age -ge 10 ] && [ $age -le 30 ]
then
	echo "Normal"
else
	echo "Viejo"
fi

#Ejercicio 4
read -p "Introduce una letra: " monthLett
if [ "E" = "$monthLett" -o "e" = "$monthLett" ]
then
	echo "Enero"
elif [ "F" = "$monthLett" -o "f" = "$monthLett" ]
then
	echo "Febrero"
elif [ "M" = "$monthLett" -o "m" = "$monthLett" ]
then
	echo "Marzo\nMayo"
elif [ "A" = "$monthLett" -o "a" = "$monthLett" ]
then
	echo "Abril\nAgosto"
elif [ "J" = "$monthLett" -o "j" = "$monthLett" ]
then
	echo "Junio\nJulio"
elif [ "S" = "$monthLett" -o "s" = "$monthLett" ]
then
	echo "Septiembre"
elif [ "O" = "$monthLett" -o "o" = "$monthLett" ]
then
	echo "Octubre"
elif [ "N" = "$monthLett" -o "n" = "$monthLett" ]
then
	echo "Noviembre"
elif [ "D" = "$monthLett" -o "d" = "$monthLett" ]
then
	echo "Diciembre"
fi

#Ejercicio 5
read -p "Introduce dos números a operar: " num1 num2
suma=$(($num1 + $num2))
resta=$(($num1 - $num2))
producto=$(($num1 * $num2))
division=$(($num1 / $num2))
mod=$(($num1 % $num2))

echo """
Suma: $suma
Resta: $resta
Multiplicación: $producto
División: $division Modulo: $mod
"""

#Ejercicio 6
read -p "¿Quién descubrió America? " ans
case $ans in
	[Cc]olon)
		echo "Correcto"
		;;
	*)
		echo "Incorrecto"
		;;
esac

#Ejercicio 7
opt=0
until [ $opt != 4 ]
do
	read -p """
	¿Qué desea hacer?
	
	1. Crear Directorio
	2. Borrar Directorio
	3. Copiar Archivo a Directorio
	
	4. Salir
	""" opt
	
	case $opt in
	1)
		read -p "Introduce la ruta del Directorio a crear (con el nombre del mismo)." createDir
		mkdir $createDir
		;;
	2)
		read -p "Introduce la ruta del Directorio a eliminar (con el nombre del mismo)." deleteDir
		rm -R $deleteDir
		;;
	3)
		read -p "Introduce la ruta del Archivo a copiar (con el nombre del mismo). y el destino" copyFile finalPath
		cp $copyFIle $finalPath
		;;
	4)
		echo "Se va a pasar al siguiente ejercicio... (Salir)"
		;;
	*)
		echo "Introduzca un valor válido"
		;;
	esac
done

#Ejercicio 8
opt=0
until [ $opt != 5 ]
do
	read -p """
	¿Qué desea hacer?
	
	1. Suma
	2. Resta
	3. Divión
	4. Multiplicación
	
	5. Salir
	""" opt
	
	case $opt in
	1)
		read -p "Introduce los dos valores a sumar" $num1 $num2
		suma=$(($num1 + $num2))
		echo "Resultado: $suma"
		
		;;
	2)
		read -p "Introduce los dos valores a restar" $num1 $num2
		resta=$(($num1 - $num2))
		echo "Resultado: $resta"

		;;
	3)
		read -p "Introduce los dos valores a dividir" $num1 $num2
		division=$(($num1 / $num2))
		mod=$(($num1 % $num2))
		echo "Resultado: $division\ŧResiduo: $mod"
		
		;;
	4)
		read -p "Introduce los dos valores a multiplicar" $num1 $num2
		producto=$(($num1 * $num2))
		echo "Resultado: $producto"
		
		;;
	5)
		echo "Se va a salir del programa..."
		;;
	*)
		echo "Introduzca un valor válido"
		;;
	esac
done
