# tl_skin_cape MOD REMOVER
PowerShell script designed to monitor and clean up the Minecraft mods folder by deleting "tl_skin_cape...jar" automatically every time that user runs TLauncher minecraft getting rid of the annoying incompatibility error with other mods. Works for any mod manager.

## DOWNLOAD:
- [Click here](
        https://github.com/rogerrius/tl_skin_cape-MOD-REMOVER/blob/main/script_tl.ps1)

## Features
- Monitors the Minecraft mods folder for the presence of the specified file.
- Automatically deletes the target file if found.
- Runs continuously in the background.

## Usage
1. **Change Execution Policy**: Open PowerShell as Administrator, paste this command and accept: `Set-ExecutionPolicy Unrestricted` (more information about this cmdlet below on Notes).
2. **Set Variables**: Open the script and set the `$path` variable to the path of your Minecraft mods folder or/and adjust the $filePattern variable to match different files if needed.
3. **Run Script as Admin**: Execute the script through PowerShell terminal if it doesn't work directly from file explorer, and it will continuously monitor and delete the "tl_skin_cape...jar" file if found.

### Notes
- **Use with Caution**: Ensure that you understand the implications of running this script before use, as it permanently deletes files from the specified directory and the Set-ExecutionPolicy cmdlet changes PowerShell execution policies for Windows computers so be aware that your PC is exposed to scripting attacks. If you want to leave it as default, run the command `Set-ExecutionPolicy Default`
- **Contribution**: Feel free to contribute to this project by suggesting improvements or additional features.
