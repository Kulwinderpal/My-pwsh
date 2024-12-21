
# Install Powershell 7
if ( Write-Output $PSVersionTable.PSVersion -ne 5 )
{
  winget install --id Microsoft.PowerShell --source winget
}
# Install winget Packages
winget install sharkdp.bat junegunn.fzf BurntSushi.ripgrep.MSVC ajeetdsouza.zoxide Starship.Starship Git.Git Neovim.Neovim Fastfetch-cli.Fastfetch BrechtSanders.WinLibs

# Install PSREADLINE
Install-Module PSReadLine -Force

# Install Syntax Highlighting
Install-Module syntax-highlighting -Force

# Clone my Personal Powershell Repo
git clone https://github.com/Kulwinderpal/My-pwsh

# Install my Personal Powershell configuration
New-Item -Path $ENV:USEPROFILE\Documents\ -Name Powershell -ItemType Directory
Move-Item My-pwsh\Microsoft.Powershell_profile.ps1  $ENV:USERPROFILE\Documents\PowerShell\

# Install my Personal Neovim Configuration
git clone https://github.com/Kulwinderpal/My-nvim
Remove-Item $ENV:USERPROFILE\AppData\Local\nvim -Recurse -Force
Remove-Item "$ENV:USERPROFILE\AppData\Local\nvim-data" -Recurse -Force
Move-Item My-nvim $ENV:USERPROFILE\AppData\Local\nvim

# Install My Personal Starship Configuration
New-Item -Path $ENV:USERPROFILE\AppData\Local\ -Name Starship -ItemType Directory
Move-Item My-pwsh\starship.toml $ENV:USERPROFILE\AppData\Local\Starship

# Install Tab Completion
Install-Module PSFzf -Force
