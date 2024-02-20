# https://learn.microsoft.com/en-us/visualstudio/ide/reference/command-prompt-powershell?view=vs-2022#developer-powershell
& "$(Get-CimInstance "MSFT_VSInstance" -Namespace "root/cimv2/vs" | Select-Object -ExpandProperty "InstallLocation")\Common7\Tools\Launch-VsDevShell.ps1" -SkipAutomaticLocation -Arch AMD64
