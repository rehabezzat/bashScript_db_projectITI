#!/bin/bash


userChoise(){

            select modify_option in "Insert_record" "Modify_record" "Delete_record" "Display_table" "Select_record" "Delete_table" 
            do
            
            case $modify_option in

                  "Insert_record")
                  
                             source ~/bashScript_db_projectITI/scripts/insert_Record.sh;;
                  
                  "Modify_record")

                             source ~/bashScript_db_projectITI/scripts/update_record.sh;;

                  "Delete_record")
                             
                             source ~/bashScript_db_projectITI/scripts/delete_Record.sh;;

                  "Display_table")
                            
                            source ~/bashScript_db_projectITI/scripts/printTable.sh
                            sed '1,8d' $table_name > temp_file

                            #calling printTable function
                            printTable ' ' "$(cat temp_file)"
                            rm temp_file;;

                  "Select_record")
                        
                            source ~/bashScript_db_projectITI/scripts/select_Record.sh;;

                  "Delete_table")
                                       
                              rm $table_name
                              printf "\nyour table is deleted\n";;
                        
                        *)

                              echo "Go back to main menu"
                              source ~/bashScript_db_projectITI/dataBase_Options.sh
                              break;
                              ;;



            esac

            done

}

#Check if the DataBase Engin is initialized

if [[ ! -d ~/dataBase_Engin ]]
then
   
     printf "\nYour DataBase Engin isn't initialized ,, please choose the first option:\n"
     source ~/bashScript_db_projectITI/dataBase_options.sh
    

else

     cd ~/dataBase_Engin
   
     arr_dataBases=($(ls))

     #check if there are dataBases exist
     if [[ ${#arr_dataBases[@]} > 0 ]]
     then
            printf "\nAll available databases:\n"

            #Display all DataBases
            for i in $(ls -d *); 
            do
            echo ${i}; 
            done

            printf "\nEnter the name of dataBase ?\n"
            read dataBase_name 

            #check if the dataBase_name Directory exist
            if [[ -d $dataBase_name ]]
            then
                    
                  cd $dataBase_name
                  arr_tables=($(ls))

                  #check if there are tables exist
                  if [[ ${#arr_tables[@]} > 0 ]]
                  then
                        printf "\nAll available tables:\n"

                        #Display all Tables
                        for i in $(ls *); 
                        do
                              echo ${i}; 
                        done

                        printf "\nEnter the table_name of table ?\n"
                        read table_name
                        echo " "

                        #check if the table_name is exist
                        if [[ -f $table_name ]]
                        then
                              #calling the function
                              userChoise

                        else
                              
                              printf "\nThis table name isn't exist ,, if you want to delete another table choose this option again"
                              source ~/bashScript_db_projectITI/dataBase_options.sh

                              
                        fi

                  else
                  
                        printf "\nThis dataBase is empty ,, if you want to create table in this dataBase choose #6 form menu:"
                        source ~/bashScript_db_projectITI/dataBase_Options.sh
                  
                  fi

         else
                 
                  printf "\nThis dataBase_name isn't exist\n"

                  echo "If you want to go back the main menu write : yes / no" 

                  read answer

                  if [[ $answer="yes" ]]
                  then
                         
                        source ~/bashScript_db_projectITI/dataBase_options.sh

                  else
                         
                        printf "\nYou must go back to choose any option"
                  fi

            fi

     else
       
            printf "\nThis DataBase Engin is empty ,, please create database first"
            source ~/bashScript_db_projectITI/dataBase_options.sh

     fi

fi
