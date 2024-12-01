# Start Fastfetch
fastfetch

# Enable Syntax Highlighting
Import-Module syntax-highlighting

# Add Tab Completion
Set-PSReadLineKeyHandler -Key Tab -ScriptBlock { Invoke-FzfTabCompletion }

# Set the Starship Config Directory and Start Starship
$ENV:STARSHIP_CONFIG = "$ENV:USERPROFILE\AppData\Local\Starship\starship.toml"
Invoke-Expression (&starship init powershell)

# Define Aliases Here
Set-Alias grep rg
Set-Alias clr clear
Remove-Alias cd; Set-Alias cd z
Set-Alias which Get-Command
Set-Alias bash "C:\Program Files\Git\bin\bash.exe"
Set-Alias vim nvim; Set-Alias vi nvim
Remove-Alias cat; Function cat {bat --paging=never $args }
Set-Alias Terminal wt
Set-Alias powershell pwsh
if ( $PSVersionTable.PSVersion.Major -eq 7 )
{
        Function pwsh
        {
                pwsh --nologo
 }
} else
{
        Function powershell
        {
                powershell --nologo
        }
}
function touch {
    param (
        [string]$Path
    )

    if (Test-Path $Path) {
        # Update the last write time
        (Get-Item $Path).LastWriteTime = Get-Date
    } else {
        # Create the file if it doesn't exist
        New-Item $Path -ItemType File
    }
}
function killall {
    param (
        [string]$ProcessName
    )

    # Retrieve and stop all processes with the given name
    Get-Process -Name $ProcessName -ErrorAction SilentlyContinue | Stop-Process -Force -ErrorAction SilentlyContinue

    # Check if any process was killed
    if ($?) {
        Write-Output "All instances of $ProcessName have been terminated."
    } else {
        Write-Output "No processes named $ProcessName were found or could be terminated."
    }
}
function ln {
        param (
                [string]$LinkPath,
                [string]$TargetPath
        )
        New-Item -ItemType SymbolicLink -Path $LinkPath -Target $TargetPath -Force
}

# Set Keybindings Here
Set-PSReadLineKeyHandler -Key Ctrl+d -ScriptBlock { [Environment]::Exit(0) }

# Start Zoxide
Invoke-Expression (& { (zoxide init powershell | Out-String) })
