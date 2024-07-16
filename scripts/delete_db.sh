#!/bin/bash
if [ ! -d ~/dataBase_Engin ]
then
   
echo "\nYour DataBase Engin isn't initialized ,, please choose the first option:\n"
    source ~/bashScript_db_projectITI/dataBase_Options.sh

else

    cd ~/dataBase_Engin
     arr_dataBases=($(ls))

    #check if there are dataBases exist
    if [[ ${#arr_dataBases[@]} > 0 ]]
    then
        
      echo "\nAll available DataBases:\n"

       #Display all DataBases
       for i in $(ls -d *); 
       do
         echo ${i}; 
       done

        echo "\nEnter the dataBase_name of dataBase ?\n"
        read dataBase_name

        #check if the dataBase_dataBase_name Directory exist
        if [ -d "$dataBase_name" ]
        then
        
            rm -r "$dataBase_name"

            echo "\nYour DataBase is deleted\n"

        else
            
            echo "\nThis dataBase isn't exist\n"

           echo  "Go back to menu\n" 

            source ~/bashScript_db_projectITI/dataBase_options.sh

        fi

    else
        
        echo "\nThis DataBase Engin is empty ,, please create database first"
        source ~/bashScript_db_projectITI/dataBase_Options.sh

    fi

fi
