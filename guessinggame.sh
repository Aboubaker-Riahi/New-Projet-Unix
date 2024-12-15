#!/bin/bash

# Fonction pour demander le nombre de fichiers
function ask_guess {
    echo "Combien de fichiers se trouvent dans le répertoire actuel ?"
    read user_guess
}

# Récupérer le nombre de fichiers dans le répertoire
file_count=$(ls -1 | wc -l)

# Boucle jusqu'à ce que l'utilisateur trouve la bonne réponse
while true; do
    ask_guess

    if [[ $user_guess -eq $file_count ]]; then
        echo "Félicitations ! Vous avez trouvé le bon nombre : $file_count fichiers."
        break
    elif [[ $user_guess -lt $file_count ]]; then
        echo "C'est trop bas. Essayez encore."
    else
        echo "C'est trop haut. Essayez encore."
    fi

done
