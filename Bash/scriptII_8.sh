#!/bin/bash
# Ejercicio 8

mazo="mazo.data"
next=1

# Leer las preguntas y respuestas del archivo y almacenarlas en arrays
questions=$(awk 'NR % 2 == 1' $mazo)
answers=$(awk 'NR % 2 == 0' $mazo)

# Obtener el número de preguntas
num_questions=$#questions[*]
num_answers=$#answers[*]

echo "$num_questions $num_answers"

# Comprobar que el número de preguntas y respuestas es el mismo
if [ $num_questions != $num_answers ]
then
    echo "Error: el número de preguntas y respuestas no coincide"
    #exit 1
fi

# Loop principal del juego
i=0
while [ "$next" = 1 ]
do
    # Obtener la pregunta y respuesta actual
    question=$#questions[$i]
    answer=$#answers[$i]
    
    # Mostrar la pregunta y leer la respuesta del usuario
    read -p "$question " user_answer
    
    # Comprobar si la respuesta es correcta
    if [ $user_answer -eq $answer ]
    then
        echo "Correcto"
    else
        echo "Incorrecto"
    fi
    
    # Incrementar el índice de la pregunta actual
    i=$((i+1))
    
    # Comprobar si se han acabado las preguntas
    if [ $i -eq $num_questions ]
    then
        echo "Se han acabado las preguntas"
        exit 0
    fi
    
    # Preguntar al usuario si desea continuar
    read -p "¿Quieres continuar con el juego? (S/N) " next
    
done

