#!/bin/bash
clear
# Efface le contenu affiché à l'écran, pour repartir sur une page propre
while true; do
# Boucle infinie : elle va répéter indéfiniment les commandes à l'intérieur


echo "|==============Menu de demarrage===|"
echo "| 1. systemctl restart samba       |"
echo "| 2. systemctl restart apache2     |"
echo "| 3. systemctl restart nginx       |"
echo "| 4. systemctl restart mariadb     |"
echo "| 5. systemctl restart php8.2.fpm  |"
echo "| 6. Quitter                       |"
echo "|==================================|"

read -p "Entrez votre choix [1-6] : " choix

case $choix in
    1)
        echo "redemarrage samba"
        #permet d'afficher le message "redemarrage samba"
        systemctl restart samba
        #permet de redemarrer samba
        sytemctl status samba
        #permet de voir le status samba
;;
    2)
        echo "redemarage apache2"
        #permet d'afficher le message "redemarage apache2"
        systemctl restart apache2
        #permet de redemarrer apache2
        sytemctl status apache2
        #permet de voir le status apache2

        ;;
    3)
        echo "redemarrage nginx"
        #permet d'afficher le message "redemarrage nginx"
        systemctl restart nginx
        #permet de redemarrer nginx
        sytemctl status nginx
        #permet de voir le status nginx
        ;;
    4)  
        echo "redemmarage mariadb"
        #permet d'afficher le message "redemmarage mariadb"
        systemctl restart mariadb
        #permet de redemarrer mariadb
        sytemctl status mariadb
        #permet de voir le status mariadb
        ;;
    5)  
        echo "redemmarage php"
        #permet d'afficher le message "redemmarage php"
        systemctl restart php8.2-fpm
        #permet de redemarrer php8.2-fpm
        sytemctl status php8.2-fpm
        #permet d'afficher le statu de php8.2-fpm
        ;;
    6)
        echo "Au revoir !"
        #permet d'afficher le message "Au revoir !"
        exit 0  
        # Quitter le script
        ;;
        esac

        echo 
    read -p "appuyez sur entrée pour continer ..."
    clear
done






