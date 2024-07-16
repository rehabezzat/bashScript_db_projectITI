#!/bin/bash


#Check if the DataBase Engin is initialized

if [ ! -d ~/dataBase_Engin ]
then
   
  echo  "\nYour DataBase Engin isn't initialized ,, to initialize new engin choose the first option:\n"
    source ~/bashScript_db_projectITI/dataBase_options.sh
else
   
    # Go to home
    cd 

    # Remove dataBase engin
    rm -r dataBase_Engin

    echo "\nDataBase_Engin removed successfully\n"

fi
