#!/bin/bash

# Function to create a file or directory
create() {
    clear

    # Prompt user for file or directory type
    read -p "Enter 'f' to create a file or 'd' to create a directory: " type
    # Prompt user for the name of the file or directory
    read -p "Enter the name of the file or directory: " name

    # Create file if user chose 'f'
    if [ "$type" == "f" ]; then
        touch "$name" && echo "File '$name' created."
    # Create directory if user chose 'd'
    elif [ "$type" == "d" ]; then
        mkdir "$name" && echo "Directory '$name' created."
    else
        echo "Invalid choice, try again."
    fi
}

# Function to copy a file or directory
copy() {
    clear

    # Prompt user for the source and destination paths
    read -p "Enter the path of the file or directory to copy: " src
    read -p "Enter the destination path: " dest

    # Check if source path exists
    if [ ! -e "$src" ]; then
        echo "The source path does not exist."
    else
        # Copy the file or directory
        cp -r "$src" "$dest" && echo "'$src' copied to '$dest'."
    fi
}

# Function to move a file or directory
move() {
    clear

    # Prompt user for the source and destination paths
    read -p "Enter the path of the file or directory to move: " src
    read -p "Enter the destination path: " dest

    # Check if source path exists
    if [ ! -e "$src" ]; then
        echo "The source path does not exist."
    else
        # Move the file or directory
        mv "$src" "$dest" && echo "'$src' moved to '$dest'."
    fi
}

# Function to delete a file or directory
delete() {
    clear

    # Prompt user for the path to delete
    read -p "Enter the path of the file or directory: " path

    # Check if the path exists
    if ! ls "$path" &> /dev/null; then
        echo "The path does not exist."
    else
        # Check if it is a directory
        if [ -d "$path" ]; then
            if [ -z "$(ls -A $path)" ]; then
                # Remove empty directory
                rmdir "$path" && echo "$path directory is removed."
            else
                # Prompt user for confirmation if directory is not empty
                read -p "Directory is not empty. Are you sure? (yes/no) " confirm
                while [ "$confirm" != "yes" -a "$confirm" != "no" ]; do
                    read -p "Directory is not empty. Please write yes or no: " confirm
                done
                if [ "$confirm" = "yes" ]; then
                    rm -r "$path" && echo "Directory deleted."
                else
                    echo "Directory not deleted."
                fi
            fi
        # Check if it is a file
        elif [ -f "$path" ]; then
            rm "$path" && echo "The file '$path' is removed."
        else
            echo "$path is neither a file nor a directory."
        fi
    fi
}

# Main Script
while true; do
    # Display menu options
    echo "Choose an operation:"
    echo "1. Create a file or directory"
    echo "2. Copy a file or directory"
    echo "3. Move a file or directory"
    echo "4. Delete a file or directory"
    echo "5. Exit"
    read -p "Enter your choice: " choice

    # Execute the corresponding function based on user choice
    case $choice in
        1) create ;;
        2) copy ;;
        3) move ;;
        4) delete ;;
        5) exit 0 ;;
        *) echo "Invalid choice, please try again." ;;
    esac
done
