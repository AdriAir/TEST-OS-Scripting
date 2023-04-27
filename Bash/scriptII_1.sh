#Ejercicio 1
read -p "Introduzca el precio de un producto y el IVA (%): " precioProducto iva
if [ $precioProducto -lt 0 -o $iva -lt 0 ]
then
	echo "ERROR: No introduzca valores negativos."
else
	totalProducto=$(($precioProducto + ($precioProducto * $iva / 100)))
	echo "EL precio total es de $totalProducto."
fi
