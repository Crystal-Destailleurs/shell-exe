echo "premier nombre : "
read nombre1
echo "operateur (+, -, /, *) : "
read operateur 
echo "deuxieme nombre : "
read nombre2 

 if [ "$operateur" = "+" ]; then
		resultat=$(echo "$nombre1 + $nombre2" | bc)
	elif [ "$operateur" = "-" ]; then
		resultat=$(echo "$nombre1 - nombre2" | bc)
	elif [ "$operateur" = "*" ]; then
		resultat=$(echo "$nombre1 * $nombre2" | bc)
	elif [ "$operateur" = "/" ]; then
 		if [ "$nombre2" -ne 0 ]; then
			resultat=$(echo "scale=2; $nombre1 / $nombre2" | bc)
		 else
			resultat="diviison par zéro impossible"
 		fi
 	else
		resultat="opérateur invalide"
	fi
echo "Resultat : $resultat"
