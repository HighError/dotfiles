$env:POSH_GIT_ENABLED = $true
oh-my-posh init pwsh | Invoke-Expression
Import-Module -Name Terminal-Icons
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\catppuccin_mocha.omp.json" | Invoke-Expression