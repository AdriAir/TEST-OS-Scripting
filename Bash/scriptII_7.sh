#Ejercicio 7

opt=0

until [ ! $opt != 6 ]
do
	read -p """
	¿Qué desea hacer?
	
	1. Mostrar contenido de un archivo
	2. Crear duplicado del archivo
	3. Mover archivo
	4. Copiar el archivo
	5. Borrar archivo
	
	6. Salir
	
	Escriba aquí: """ opt
	
	case $opt in
		1)
			read -p "Escribe la ruta del archivo: " file
			cat $file
			;;
		2)
			read -p "Escribe la ruta del archivo: " file
			cp $file $file.bak
			;;
		3)
			read -p "Escribe la ruta del archivo: " file
			read -p "Escriba la nueva ruta del archivo (añada el nombre a la ruta para cambiarlo)" path
			mv $file $path
			;;
		4)
			read -p "Escribe la ruta del archivo: " file
			read -p "Escriba la ruta de la copia del archivo (añada el 				nombre a la ruta para cambiarlo)" path
			cp $file $path
			;;
		5)
			read -p "Escribe la ruta del archivo: " file
			rm $file
			;;
		6)
			echo "Adiós..."
			;;
		*)
			echo "Escribe un valor válido..."
			;;
	esac
done
