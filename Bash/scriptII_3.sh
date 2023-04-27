#Ejercicio 3

uid=$1
user=$(cat /etc/passwd | egrep $uid | cut -d ":" -f 1)
if [ -z $user ]
then
	echo "No existe ningún usuario con un UID $uid..."
else
	echo "EL usuario con UID $uid es $user."
fi
