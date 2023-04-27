#Ejercicio 4

menu=0

until [ ! $menu != 4 ]
do
	clear
	read -p """
	¿Sobre que figura quieres calcular el área?

	1. Cuadrado
	2. Rectángulo
	3. Triángulo

	4. Salir
	
	Escriba aquí: """ menu
	clear
	case $menu in
		1)
			read -p "Introduce el lado del cuadrado en CM: " lado
			area=$(($lado*$lado))
			echo "El área del cuadrado es de $area cm"
			;;
		2)
			read -p "Introduce el alto del rectángulo en CM: " alto
			read -p "Introduce la base del rectángulo en CM: " base
			area=$(($alto * $base))
			echo "El área del rectángulo es de $area cm"
			;;
		3)
			read -p "Introduce el alto del triángulo en CM: " alto
			read -p "Introduce la base del triángulo en CM: " base
			area=$((($alto * $base) / 2))
			echo "El área del triángulo es de $area cm"
			;;
		4)
			echo "Adiós, pase un buen día :)"
			;;
		*)
			echo "Introduzca un valor válido..."
			;;
	esac
	echo "Espere 3 segundos"
	sleep 3s
done
