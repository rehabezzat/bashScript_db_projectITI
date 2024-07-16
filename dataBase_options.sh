# !/bin/bash
echo "Welcome To Menu Of Database"
select choice in "initialize_dataBase_Engin" "Create DataBase" "Delete DataBase" "OPen DataBase" "View DataBases" "Create Table" "Table Modifications" "Delete Tabel" "Delete DataBase Engin" "Exit the program" 

do
case $choice in 
"initialize_dataBase_Engin" )
~/bashScript_db_projectITI/scripts/create_db_engin.sh
;;
"Create DataBase" )
~/bashScript_db_projectITI/scripts/create_db.sh
;;
"Delete DataBase" )
~/bashScript_db_projectITI/scripts/delete_db.sh
;;
"OPen DataBase" )
~/bashScript_db_projectITI/scripts/open_db.sh
;;
"View DataBases" )
~/bashScript_db_projectITI/scripts/view_db.sh
;;
"Create Table" )
~/bashScript_db_projectITI/scripts/create_Table.sh
;;
"Table Modifications" )
~/bashScript_db_projectITI/scripts/update_table.sh
;;
"Delete Tabel" )
~/bashScript_db_projectITI/scripts/delete_table.sh
;;
"Delete DataBase Engin" )
~/bashScript_db_projectITI/scripts/delete_db_engin.sh
;;
 "Exit the program" )
                             
                              exit ;;
                         
                              * )
                              echo "\n Please select option \n";;

          esac
          
          done


