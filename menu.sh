#!/bin/bash
clear
# Efface le contenu affiché à l'écran, pour repartir sur une page propre
while true; do
# Boucle infinie elle va répéter indéfiniment les commandes à l'intérieur



echo "===============Menu de demarrage==============="
echo "| 1. modification de mot de passe root        |"  #permet d'afficher le message "modification de mot de passe root"
echo "| 2. modification des mot de passe            |"  #permet d'afficher le message "modification des mot de passe"
echo "| 3. Modification des droits d'un fichier     |"  #permet d'afficher le message "Modification des droits d'un fichier"
echo "| 4. verification du status de service        |"  #permet d'afficher le message "verification du status de service"
echo "| 5. redemarrage des systeme                  |"  #permet d'afficher le message "redemarrage des systeme"
echo "| 6. Quitter                                  |"  #permet d'afficher le message "Quitter"
echo "|=============================================|"

read -p "Entrez votre choix [1-6] : " choix
#read permet d'ecreire le choix que l'on veux compris entre 1 et 6

case $choix in
#debut de la structure case
    1)
        echo "bienvenu dans la modification de mot de passe root"
        #permet d'afficher le message "bienvenu dans la modification de mot de passe root"
        ;;
    2)
        echo "bienvenu dans la modification de mot de passe"
        #permet d'afficher le message "bienvenu dans la modification de mot de passe root"
        ;;
    3)
        echo "Modification des droits d'un fichier"
        #permet d'afficher le message "bienvenu dans la modification de mot de passe root"
        ;;
    4)  
        echo "verification du status de service"
        #permet d'afficher le message "bienvenu dans la modification de mot de passe root"
        ;;
    5)  
        source ./menu5.sh
        #permet dans le code menu5.sh pour effectuer le choix de redemarrage de certain service
        ;;
    6)
        echo "Au revoir !"
        # ecrire "au revoir"
        exit 0  
        # Quitter le script
        ;;
        esac
        #cela met fin a la structure case

        echo 
    read -p "appuyez sur entrée pour continer ..."
    clear
done