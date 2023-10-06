#!/bin/bash

backup_dir=/home/crystal/Documents/shell.exe/job08/Backup
output_file="number_connection-$(date +'%d-%m-%Y-%H-%M')"

nombre_connexion=$(journalctl | grep -c "session opened for user crystal")

if [ "$nombre_connexion" -gt 0 ]; then

	echo "$nombre_connexion connections de l'utilisateur - crystal - recencées"

	echo "$nombre_connexion" > "$output_file"

	tar -cf "$output_file.tar" "$output_file"

	echo "Nombre de connexions de l'utilisateur - crystal - enregistré et archivé avec succès"

        mv "$output_file.tar" "$backup_dir"
 
	rm "$output_file"
else
    	echo "Aucune connexion enregistrée pour l'utilisateur - crystal -"
fi


