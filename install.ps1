# Install Windows Terminal
winget install --id Microsoft.WindowsTerminal -e

# Install Powershell 7
winget install --id Microsoft.PowerShell --source winget

# Install winget Packages
winget install sharkdp.bat junegunn.fzf BurntSushi.ripgrep.MSVC ajeetdsouza.zoxide Starship.Starship Git.Git Neovim.Neovim fastfetch LLVM.LLVM

# Install PSREADLINE
Install-Module PSReadLine

# Install Syntax Highlighting
Install-Module syntax-highlighting

# Clone my Personal Powershell Repo
git clone https://github.com/Kulwinderpal/My-pwsh

# Install my Personal Powershell configuration
New-Item -Path $ENV:USEPROFILE\Documents\ -Name Powershell -ItemType Directory
Move-Item My-pwsh\Microsoft.Powershell_profile.ps1  $ENV:USERPROFILE\Documents\PowerShell\

# Install my Personal Neovim Configuration
git clone https://github.com/Kulwinderpal/My-nvim
Rename-Item My-nvim nvim
Remove-Item $ENV:USERPROFILE\AppData\Local\nvim -Recurse -Force
Remove-Item "$ENV:USERPROFILE\AppData\Local\nvim-data" -Recurse -Force
Move-Item nvim $ENV:USERPROFILE\AppData\Local

# Install Windows Terminal
winget install --id Microsoft.WindowsTerminal -e

# Install Powershell 7
winget install --id Microsoft.PowerShell --source winget

# Install winget Packages
winget install sharkdp.bat junegunn.fzf BurntSushi.ripgrep.MSVC ajeetdsouza.zoxide Starship.Starship Git.Git Neovim.Neovim Fastfetch-cli.Fastfetch

# Install PSREADLINE
Install-Module PSReadLine

# Install Syntax Highlighting
Install-Module syntax-highlighting

# Clone my Personal Powershell Repo
git clone https://github.com/Kulwinderpal/My-pwsh

# Install my Personal Powershell configuration
New-Item -Path $ENV:USEPROFILE\Documents\ -Name Powershell -ItemType Directory
Move-Item My-pwsh\Microsoft.Powershell_profile.ps1  $ENV:USERPROFILE\Documents\PowerShell\

# Install my Personal Neovim Configuration
git clone https://github.com/Kulwinderpal/My-nvim
Rename-Item My-nvim nvim
Remove-Item $ENV:USERPROFILE\AppData\Local\nvim -Recurse -Force
Remove-Item "$ENV:USERPROFILE\AppData\Local\nvim-data" -Recurse -Force
Move-Item nvim $ENV:USERPROFILE\AppData\Local

# Install My Personal Starship Configuration
New-Item -Path $ENV:USERPROFILE\AppData\Local\ -Name Starship -ItemType Directory
Move-Item My-pwsh\starship.toml $ENV:USERPROFILE\AppData\Local\Starship

# Install Tab Completion
Install-Module PSFzf

# Install GCC
$URL = "https://mirror.msys2.org/mingw/mingw64/mingw-w64-x86_64-gcc-14.2.0-2-any.pkg.tar.zst"
Invoke-WebRequest -Uri $URL -OutFile .\
New-Item -Path 'C:\Program Files\' -Name MinGW-W64 -ItemType Directory
tar -xf ".\mingw-w64-x86_64-gcc-14.2.0-2-any.pkg.tar.zst" -C "C:\Program Files\MinGW-W64"
Write-Output "$ENV:PATH += ';C:\Program Files\MinGW-W64\'" >> $PROFILE
# Install My Personal Starship Configuration
New-Item -Path $ENV:USERPROFILE\AppData\Local\ -Name Starship -ItemType Directory
Move-Item My-pwsh\starship.toml $ENV:USERPROFILE\AppData\Local\Starship

# Install Tab Completion
Install-Module PSFzf
