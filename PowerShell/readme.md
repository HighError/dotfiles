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
codium $PROFILE
```

or

```pwsh
code $PROFILE
```
or

```pwsh
notepad $PROFILE
```

5. **Optional**: Install [my theme](./higherror.omp.json)
   1. Copy `higherror.omp.json` to `%POSH_THEMES_PATH%`

6. Paste the entire content from `settings.ps1`
   1. Uncomment my theme section
