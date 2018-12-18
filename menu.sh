#!/bin/bash
title="----Select Your Task----"
echo "------------------------"
prompt="Pick an option:"
options=("Postman" "Deploy UI" "Wildfly")

echo "$title"
PS3="$prompt "
select opt in "${options[@]}" "Quit"; do 

    case "$REPLY" in

    1 ) ~/tools/Postman/./Postman;;
    2 ) sudo cp file.test /home/user/;;
    3 )  ~/install/jboss/wildfly-10.0.0.Final/bin/./standalone.sh -c standalone.xml;;

    $(( ${#options[@]}+1 )) ) echo "Goodbye!"; break;;
    *) echo "Invalid option. Try another one.";continue;;

    esac

done

while opt=$(zenity --title="$title" --text="$prompt" --list \
                   --column="Options" "${options[@]}"); do

    case "$opt" in
    "${options[0]}" ) zenity --info --text="You picked $opt, option 1";; 
    "${options[1]}" ) zenity --info --text="You picked $opt, option 2";;
    "${options[2]}" ) zenity --info --text="You picked $opt, option 3";;
    *) zenity --error --text="Invalid option. Try another one.";;
    esac

done
