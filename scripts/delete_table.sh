# !/bin/bash
# Function to delete a table
delete_table(){
    printf "\nEnter the name of the table to delete:\n"
    read table_name
    
    # Check if the table file exists
    if [[ -f $table_name ]]; then
        # Prompt user for confirmation
        printf "\nAre you sure you want to delete the table '$table_name'? (yes/no): "
        read confirmation
        if [[ $confirmation == "yes" ]]; then
            rm "$table_name"
            printf "\nTable '$table_name' has been deleted successfully.\n"
        else
            printf "\nTable deletion cancelled.\n"
        fi
    else
        printf "\nTable '$table_name' does not exist.\n"
    fi
    
    # Call userChoise function to return to the menu
    userChoise
}

