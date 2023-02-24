# PowerShell script

## Intall

1. Install [oh-my-posh](https://ohmyposh.dev/):

```pwsh
winget install JanDeDobbeleer.OhMyPosh
```

2. Install [terminal-icons](https://github.com/devblackops/Terminal-Icons):

```pwsh
Install-Module -Name Terminal-Icons -Repository PSGallery
```

3. Open Poweshell

4. Open profile settings:

```pwsh
code $PROFILE
```

or

```pwsh
notepad $PROFILE
```

5. **Optional**: Install [my oh-my-posh theme](/oh-my-posh/)

6. Paste the entire content from `settings.ps1`

7. **Optional**: If you haven't installed my theme, replace the path to the theme in line 4

```pwsh
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\YOUR_THEME.omp.json" | Invoke-Expression
```
