# Ejercicio 6

exit=0
dolarsInEuro=1.1
eurosInDolar=0.91

until [ ! $exit != 1 ]
do
	read -p """
	¿Qué desea hacer?
	
	A. Euros a Dólares
	B. Dólares a Euros
	
	C. Salir
	
	Escriba aquí: """ opt
	
	case $opt in
		[Aa])
			read -p "Escriba una cantidad de euros: " euro
			result=$(awk "BEGIN {printf \"%.2f\", $euro * $dolarsInEuro}")
			echo "$euro € son $result $"
			;;
		[Bb])
			read -p "Escriba una cantidad de dólares: " dolar
			result=$(awk "BEGIN {printf \"%.2f\", $dolar * $eurosInDolar}")
			echo "$dolar $ son $result €"
			;;
		[Cc])
			exit=1
			echo "Adiós..."
			;;
		*)
			echo "Escribe un valor válido..."
			;;
	esac
done
