#!/bin/bash


#check if the dataBase server Directory exist

if [ -d ~/dataBase_Engin ]
then
     echo "\nAlready DataBase Engin is initialized\n"
     cd ~/dataBase_Engin
  
else

     mkdir ~/dataBase_Engin
     export PATH=$PATH:~dataBase_Engin

    echo "your DataBase Engin initialize"
     cd ~/dataBase_Engin
  
fi

echo "\nTo create DataBase press 1 \nTo go back to main menu press 2 :\n\n"

 select choise in  "Create DataBase" "Go back to main menu"
                      
          do

               case $choise in 
                    
                         "Create DataBase")
                                   
                                   source ~/bashScript_db_projectITI/scripts/create_db.sh;;
                         
                         "Go back to main menu")

                                   source ~/bashScript_db_projectITI/dataBase_options.sh;;
                         *)
                         
                       echo "\n Please select dataBase option \n";;


               esac
          done
