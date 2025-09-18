#!/bin/bash
clear
#la boucke while true premet de garder d'attendre jusqua l'entrée de notre choix
while true; do

echo ".__________Menu de demarrage_____________."
echo "| 1. voir les utilisateur existant       |"
echo "| 2. crée un utilisateur                 |"
echo "| 3. supprimer un utilisateur            |"
echo "| 4. verifier la suppression utilisateur |"     
echo "| 5. Quitter                             |"
echo "|________________________________________|"

read -p "Entrez votre choix [1-5] : " choix

case $choix in
    1)
        echo "voici les utilisateur deja existant"
        awk -F: '{ print $1}' /etc/passwd
        ;;
    2)
    if [ "$EUID" -ne 0 ]; then
    echo "Merci de vous connecter en root"
    exit 1
fi
        echo -n "nom du new_user pour sa creation"

        read -r new_user
        

        adduser $new_user
        #permet d'afficher le message "bienvenu dans la modification de mot de passe root"
        
        PASSWORD="root"


        echo "${USER_NAME:{PASSWORD}" | chpasswd
        
        
        passwd -e "$USER_NAME"
        
        
        awk -F: '{ print $1}' /etc/passwd
        ;;
    3)

    if [ "$EUID" -ne 0 ]; then
    echo "Merci de vous connecter en root"
    exit
fi

read -p "Nom de l'utilisateur à supprimer : " del_user


     if id "$del_user" &>/dev/null; then
            userdel -r "$del_user"
            echo "Utilisateur '$del_user' supprimé."
        else
            echo "L'utilisateur '$del_user' n'existe pas."
        fi
        ;;
    4)  
       read -p "Nom de l'utilisateur à vérifier : " check_user
        if getent passwd "$check_user" > /dev/null; then
            echo "L'utilisateur '$check_user' existe."
        else
            echo "L'utilisateur '$check_user' n'existe pas."
        fi
        ;;
    5)
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
awk -F: '{ print $1}' /etc/passwd