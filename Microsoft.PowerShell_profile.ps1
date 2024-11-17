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
Function pwsh {pwsh --nologo}

# Set Keybindings Here
Set-PSReadLineKeyHandler -Key Ctrl+d -ScriptBlock { [Environment]::Exit(0) }

# Start Zoxide
Invoke-Expression (& { (zoxide init powershell | Out-String) })
