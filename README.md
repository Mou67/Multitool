# PC Multitool

## Overview
The PC Multitool is a batch script designed to provide various system utilities and tools in a single, easy-to-use interface. It includes options for system information, network tools, disk management, and system maintenance.

> [!IMPORTANT]
> Ensure you run the batch file as an administrator to access all features

## Features
- **System Information**: Displays detailed information about your system.
- **Network Tools**: Provides IP configuration, ping test, and network statistics.
- **Disk Management**: Shows disk space and checks disk health.
- **System Maintenance**: Cleans temporary files and performs system file checks.

## Usage
1. **Download and Save**: Save the batch file as `multitool.bat` in a desired location.
2. **Run as Administrator**: Right-click the batch file and select "Run as administrator" to ensure full functionality.
3. **Navigate the Menu**: Use the number keys to select options from the menu.

## Menu Options
### Main Menu
```
 __    __     __  __     __         ______   __     ______   ______     ______     __        
/\ "-./  \   /\ \/\ \   /\ \       /\__  _\ /\ \   /\__  _\ /\  __ \   /\  __ \   /\ \       
\ \ \-./\ \  \ \ \_\ \  \ \ \____  \/_/\ \/ \ \ \  \/_/\ \/ \ \ \/\ \  \ \ \/\ \  \ \ \____  
 \ \_\ \ \_\  \ \_____\  \ \_____\    \ \_\  \ \_\    \ \_\  \ \_____\  \ \_____\  \ \_____\ 
  \/_/  \/_/   \/_____/   \/_____/     \/_/   \/_/     \/_/   \/_____/   \/_____/   \/_____/ 
                                                                                             
```
- **[1] System Information**: Displays detailed system information.
- **[2] Network Tools**: Provides network-related tools.
- **[3] Disk Management**: Manages disk-related tasks.
- **[4] System Maintenance**: Performs system maintenance tasks.
- **[5] Exit**: Exits the multitool.

### System Information
Displays detailed information about your system using the `systeminfo` command.

### Network Tools
- **[1] IP Configuration**: Displays IP configuration details using `ipconfig /all`.
- **[2] Ping Test**: Allows you to ping a specified address.
- **[3] Network Statistics**: Displays network statistics using `netstat -an`.
- **[4] Back to Main Menu**: Returns to the main menu.

### Disk Management
- **[1] Disk Space**: Displays disk space information using `wmic logicaldisk get size,freespace,caption`.
- **[2] Check Disk**: Checks disk health using `chkdsk`.
- **[3] Back to Main Menu**: Returns to the main menu.

### System Maintenance
- **[1] Clean Temp Files**: Cleans temporary files from the system.
- **[2] System File Check**: Performs a system file check using `sfc /scannow`.
- **[3] Back to Main Menu**: Returns to the main menu.

# Download [here](https://github.com/Mou67/Multitool/releases/download/MULTITOOL/MULTITOOL.bat)

## License
This project is licensed under the MIT License.


## Made by Mou67
