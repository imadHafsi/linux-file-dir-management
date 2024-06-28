# linux-file-dir-management

## Overview

This Bash script provides a user-friendly command-line interface to perform essential file and directory management tasks in a Linux environment. Users can seamlessly create, copy, move, and delete files and directories with interactive prompts.

## Features

- **Create**: Easily create new files or directories.
- **Copy**: Copy files or directories to a specified location.
- **Move**: Move files or directories to a new location.
- **Delete**: Remove files or directories, with an added confirmation for non-empty directories.

## Prerequisites

- Linux environment
- Bash shell

## Installation

1. **Clone the Repository**:

   ```bash
   git clone https://github.com/imadHafsi/linux-file-dir-management.git
   cd linux-file-dir-management

2. **Make the Script Executable**:

   ```bash
   chmod +x manage_files.sh

## Usage

Run the script from the command line:
   ```bash
   ./manage_files.sh
   ```

## Functionality

- **Create**:
  - Prompts the user to create a file or directory.
  - Takes the name for the file or directory.
  - Creates the specified file or directory.

- **Copy**:
  - Prompts the user for the source and destination paths.
  - Copies the file or directory from the source to the destination.

- **Move**:
  - Prompts the user for the source and destination paths.
  - Moves the file or directory from the source to the destination.

- **Delete**:
  - Prompts the user for the path of the file or directory to delete.
  - Checks if the path exists.
  - Deletes the specified file or directory with a confirmation prompt for non-empty directories.

## Main Menu

The main menu allows users to choose from the following options:

1. Create a file or directory
2. Copy a file or directory
3. Move a file or directory
4. Delete a file or directory
5. Exit

## Contributing

Contributions are welcome! Please fork this repository and submit a pull request for any enhancements or bug fixes.

## License

This project is licensed under the MIT License. See the LICENSE file for details.
