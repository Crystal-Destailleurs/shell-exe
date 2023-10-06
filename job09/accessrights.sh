#!/bin/bash
#commande qui permet de trouver le chemin du fichier
csv_file=~/job9/Shell_Userlist.csv
#commande qui permet de séparer les colonnes et les lignes et les lire sans prendre en compte les caractère spéciaux
while IFS=, read -r id firstname lastname passwd status
do
#commande qui permet de printer les noms avec les espaces 
username=$(echo "$firstname" | tr ' ' '_')
#ajout de l'utilisateur 
sudo useradd "$username"
#ajout des admin dans le sudo 
if [ "$status" == "admin" ]; then 
usermode -aG sudo "$username"
fi
done < "$csv_file"


