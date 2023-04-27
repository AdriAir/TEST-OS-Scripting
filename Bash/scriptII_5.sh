#Ejercicio 5

max=$(( $1 > $2 ? $1 : $2 ))
max=$(( $max > $3 ? $max : $3 ))
min=$(( $1 < $2 ? $1 : $2 ))
min=$(( $min < $3 ? $min : $3 ))

if [ $min = $1 -o $max = $1 ]
then
	#mid no es $1
	if [ $min = $2 -o $max = $2 ]
	then
		#mid no es $2
		mid=$3
	else
		#mid no es $3
		mid=$2
	fi
fi

if [ $min = $2 -o $max = $2 ]
then	
	#mid no es $2
	if [ $min = $3 -o $max = $3 ]
	then
		#mid no es $3
		mid=$1
	else
		#mid no es $1
		mid=$3
	fi
fi

if [ $min = $3 -o $max = $3 ]
then	
	#mid no es $3
	if [ $min = $2 -o $max = $2 ]
	then
		#mid no es $2
		mid=$1
	else
		#mid no es $1
		mid=$2
	fi
fi


echo "$max $mid $min"
echo "$min $mid $max"
