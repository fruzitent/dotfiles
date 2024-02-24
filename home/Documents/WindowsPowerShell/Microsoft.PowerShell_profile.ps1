# @help: https://learn.microsoft.com/en-us/powershell/module/?view=powershell-5.1

Set-PSReadlineKeyHandler -Function HistorySearchBackward -Key UpArrow
Set-PSReadlineKeyHandler -Function HistorySearchForward  -Key DownArrow

oh-my-posh init powershell --config "${env:LOCALAPPDATA}\Programs\oh-my-posh\themes\robbyrussell.omp.json" | Invoke-Expression
