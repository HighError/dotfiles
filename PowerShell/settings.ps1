[Console]::OutputEncoding = [Text.Encoding]::UTF8

$env:POSH_GIT_ENABLED = $true
oh-my-posh init pwsh | Invoke-Expression
Import-Module -Name Terminal-Icons
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\catppuccin.omp.json" | Invoke-Expression

# See instructions in readme.md
# Uncomment lines below to install theme

# oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\higherror.omp.json" | Invoke-Expression
