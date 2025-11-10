# Calculons d'abord le nombre des fichiers
nombre_fichiers=$(ls -1 | grep -v '^$' | wc -l)

# Fonction permettant à l'utilisateur de deviner le nombre
function demander_nombre(){
read -p "Combien de fichiers se trouvent dans le répertoire actuel? " reponse
}

demander_nombre

while true; do
if [[ "$reponse" -eq "$nombre_fichiers" ]]; then
echo "Félicitations, vous avez trouvé le bon nombre."
break
elif [[ "$reponse" -gt "$nombre_fichiers" ]]; then
echo "Le nombre à deviner est trop basse."
else
echo "Le nombre à deviner est trop haute."
fi
demander_nombre
done
