# Author: github.com/rogerrius


# Vars
$path = "$env:USERPROFILE\AppData\Roaming\.minecraft\mods"
$filePattern = "tl_skin_cape*"

# Execute the function in the background
Start-Job -ScriptBlock {
    # Define the function to monitor and delete files
    function Monitor-And-DeleteFiles {
        param (
            $path,
            $filePattern
        )
        Write-Host "Monitoring started for $path\$filePattern"
        while ($true) {
            $files = Get-ChildItem -Path $path -Filter $filePattern
            foreach ($file in $files) {
                Remove-Item -Path $file.FullName -Force
                Write-Host "$($file.Name) deleted at $(Get-Date)"
            }
            Start-Sleep -Seconds 1  # Wait for 1 second before checking again. Do not change.
        }
    }

    # Call the function with the appropriate parameters
    Monitor-And-DeleteFiles -path "$env:USERPROFILE\AppData\Roaming\.minecraft\mods" -filePattern "tl_skin_cape*"
}