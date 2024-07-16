#!/bin/bash


path_of_dataBase=~/dataBase_Engin

#open dataBase function

open_dataBase(){
    
        cd "$path_of_dataBase/$dataBase_name"

        select choise in "Create Table" "Delete Table" "modify on Table"
          do

          case $choise in 

               "Create Table")
                              
                              source ~/bashScript_db_projectITI/scripts/create_Table.sh  $dataBase_name;;

               "Delete Table")
                              
                              source ~/bashScript_db_projectITI/scripts/delete_table.sh;;
                         
          
              "modify on Table")

                              source ~/bashScript_db_projectITI/scripts/update_table.sh;;
                         
                              * )
                              printf "\nPlease choose the correct option 1 or 2 or 3\n"
          esac
          
          done

}


#Check if the DataBase Engin is initialized

if [ ! -d ~/dataBase_Engin ]
then
   
    printf "\nYour DataBase Engin isn't initialized ,, please choose the first option:"
    source ~/Bash-Script-DataBase-Project-ITI/dataBase_Options.sh

else

    cd ~/dataBase_Engin

    arr_dataBases=($(ls))

    #check if there are dataBases exist
    if [[ ${#arr_dataBases[@]} > 0 ]]
    then
        
        printf "\nAll available DataBases:\n"

        #Display all DataBases
        for i in $(ls -d *); 
        do
            echo ${i}; 
        done

        printf "\nEnter the dataBase_name of dataBase ?\n"
        read dataBase_name
        printf "\n"

        #check if the dataBase_dataBase_name Directory exist
        if [ -d "$dataBase_name" ]
        then
           
            #calling open database function
            open_dataBase

            printf "\nYour DataBase is deleted\n"

        else
            
            printf "\nThis dataBase isn't exist\n"

            printf  "Go back to menu\n" 

            source ~/bashScript_db_projectITI/dataBase_options.sh


        fi

    else
        
        printf "\nThis DataBase Engin is empty ,, please create database first/n"
        source ~/bashScript_db_projectITI/dataBase_options.sh

    fi

fi

