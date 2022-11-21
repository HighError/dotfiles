# Need install oh-my-posh and terminal-icons
# For install oh-my-posh: winget install JanDeDobbeleer.OhMyPosh -s winget
# For install terminal-icons: Install-Module -Name Terminal-Icons -Repository PSGallery

oh-my-posh init pwsh | Invoke-Expression
Import-Module -Name Terminal-Icons
oh-my-posh init pwsh --config C:\Users\HighError\AppData\Local\Programs\oh-my-posh\themes\takuya.omp.json | Invoke-Expression
