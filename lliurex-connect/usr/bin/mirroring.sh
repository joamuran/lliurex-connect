#!/bin/bash

# Screen Recording and Mirror
# XServer XSDL



case $LANG in
    "es"*)
    DATA=`zenity --forms --title="Activar mirroring de Android" \
        --text="Introduzca la dirección proporcionada\n por la aplicación Screen Cast." \
        --separator="*" \
        --add-entry="http://dirección:6868"`;
    ;;
    
    "ca"*)
    DATA=`zenity --forms --title="Activeu el mirroring d'Android" \
        --text="Introduïu l'adreça proporcionada \n per l'aplicació Screen Cast." \
        --separator="*" \
        --add-entry="http://adreça:6868"`;
        ;;
        
    *)
    DATA=`zenity --forms --title="Activate Android  Mirroring" \
        --text="Insert address given by Screen Cast App" \
        --separator="*" \
        --add-entry="http://address:6868"`;
    ;;
    
esac
    


case $? in
    0)        
     nw0.21 --url="${DATA}:6868";

        ;;
    -1)
        echo "An unexpected error has occurred."
        ;;
esac

