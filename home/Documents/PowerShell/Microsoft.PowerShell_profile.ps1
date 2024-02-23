# @help: https://learn.microsoft.com/en-us/powershell/module/?view=powershell-7.4

Set-PSReadlineKeyHandler -Function HistorySearchBackward -Key UpArrow
Set-PSReadlineKeyHandler -Function HistorySearchForward  -Key DownArrow
