#Ejercicio 2
win=0
RANDOM=$$
RANDOM=$((($RANDOM%10)+1))
until [ $win != 0 ]
do
	read -p "Introduce un número entre el 1 el 10: " num1
	
	if [ $num1 -lt $RANDOM ]
	then
		echo "El número es mayor a $num1"
	elif  [ $num1 -gt $RANDOM ]
	then
		echo "El número es menor a $num1"
	else
		echo "Has acertado!"
		win=1
	fi
done
