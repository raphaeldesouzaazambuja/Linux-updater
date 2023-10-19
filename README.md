# System Update and Cleanup (Linux Debian/Ubuntu)

This Bash script was created to automate the process of updating and cleaning Debian/Ubuntu-based systems. It performs the following steps:

1. Updates the system repositories.
2. Carries out a full system upgrade.
3. Performs system cleanup, including the removal of unused packages and empty folders within the system.

## How to Use

1. Download the `update-and-clean.sh` script to your system.
2. Open a terminal and navigate to the directory where the script is located.
3. Grant execution permissions to the script using the following command:
4. Execute the script with superuser (root) privileges using `sudo`:

The script will check whether the system uses the `apt` or `dpkg` commands and execute the appropriate actions to update and clean the system. Make sure you are connected to the internet, as the script requires access to online repositories.

**Note:** Ensure that the script and the system have the proper permissions before running it.

## Requirements

- This script is designed for Debian/Ubuntu-based systems that use the `apt` or `dpkg` package manager.
- Superuser (root) permissions are required to execute the script using `sudo`.
