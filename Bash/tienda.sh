#!/bin/bash
#Ejercicio simulácro

option=0

while [ $option != 5 ]
do
	clear
	read -p """
	---------------------
	LISTADO DE PRODUCTOS:
	---------------------
	1. INCLUIR PRODUCTO
	2. VISUALIZAR PRODUCTO
	3. ELIMINAR PRODUCTO
	4. BORRAR EL CONTENIDO
	
	5. SALIR
	---------------------
	Seleccione una opción: """ option
	
	case $option in
	
		1)
			clear
			read -p "Escribe el número de referencia del producto: " reference
			read -p "Escribe el nombre del producto: " name
			read -p "Escribe el precio del producto: (Pj: 10.20): " price
			echo "$reference;$name;$price" >> ./productos.csv
			echo
			echo "¡Se ha añadido el producto exitosamente!"
			echo
			echo
			read -p "Pulse la tecla ENTER para regresar al menú..." next
			;;
		2)	
			clear
			read -p "Escriba la referencia del producto a mostar: " product
			
			reference=$(grep "^$product;" ./productos.csv)
			
			if [ ! -z "$reference" ]
			then 
				clear
				echo """
	------------------------------
	¡Se ha encontrado el producto!
	------------------------------
	Referencia: $(grep "^$reference;" ./productos.csv | cut -d ";" -f 1)
	Nombre: $(grep "^$reference;" ./productos.csv | cut -d ";" -f 2)
	Precio: $(grep "^$reference;" ./productos.csv | cut -d ";" -f 3)
	------------------------------
	"""	
			else
				clear
				echo "No se ha encontrado el producto con referencia: $reference..."
			fi
			
			read -p "Pulse la tecla ENTER para regresar al menú..." next
			
			;;
		3)
			clear
			read -p "Escriba la referencia del producto a eliminar: " product
			
			reference=$(grep "^$product;" ./productos.csv)
			
			if [ ! -z "$reference" ]
			then 
				echo "hola $reference $(grep -v "^reference;")"
				grep -v "^$reference;" > ./productos.csv
				echo "¡Se ha eliminador el producto correctamente!"
			else
				clear
				echo "No se ha encontrado el producto con referencia: $reference..."
			fi
			
			read -p "Pulse la tecla ENTER para regresar al menú..." next
			;;
		4)
			touch ./productos.csv > ./productos.csv
			echo "¡Se han eliminado todos los productos!"
			read -p "Pulse la tecla ENTER para regresar al menú..." next
			;;
		5)
			echo "Se va a cerrar el programa..."
			read -p "Pulse la tecla ENTER para salir del programa." next
			;;
		*)	
			echo "Introduzca una opción válida"
			read -p "Pulse la tecla ENTER para regresar al menú..." next
			;;
	esac
done
