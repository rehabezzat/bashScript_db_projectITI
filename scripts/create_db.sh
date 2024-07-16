#!/bin/bash

path_of_dataBase=~/dataBase_Engin

# create dataBase function

 create_dataBase(){


     #create database to user
     mkdir "$dataBase_name"

     echo "Your DataBase Is Created"
     
}


userChoise(){

        select choise in  "Create another DataBase"  "Go back to main menu" 
          do

          case $choise in 

               "Create another DataBase")
                              
                              source ~/bashScript_db_projectITI/scripts/create_db.sh;;   
                              
   
               "Go back to main menu" )

                          source ~/bashScript_db_projectITI/dataBase_options.sh
                          ;;
                         
                       * )
                            echo "\n Please select dataBase option \n";;
          esac
          
          done

}



#Check if the DataBase Engin is initialized

if [ ! -d ~/dataBase_Engin ]
then
   
    echo "\nYour DataBase Engin isn't initialized ,, please choose the first option:\n"
     source ~/bashScript_db_projectITI/dataBase_options.sh

else
    
     
 echo "Enter the name of dataBase "
     read dataBase_name 

     cd "$path_of_dataBase"
     #check if the dataBase_name Directory exist
     if [ -d "$dataBase_name" ]
     then
         
          echo "\nThis dataBase_name is already exist\n"
          echo "If you want create another dataBase or open this dataBase choose one option :\n"
          
          #calling userChoise function
          userChoise 
     
     
     else   
     
          #calling  create_dataBase function
          create_dataBase
     
          #calling userChoise function
          userChoise 


     fi



fi
