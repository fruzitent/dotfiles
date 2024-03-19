# locks

```shell
cat "${XDG_DOCUMENTS_DIR}/locks/pacman.txt" | awk '/^#/ {next}; NF == 0 {next}; {print $1}' | paru --sync --needed --noconfirm -
```

```powershell
winget import --import-file "$([Environment]::GetFolderPath([Environment+SpecialFolder]::MyDocuments))\locks\winget.jsonc" `
    --accept-package-agreements `
    --accept-source-agreements `
    --ignore-unavailable `
    --ignore-versions `
    ;
```

```powershell
Enable-WindowsOptionalFeature -All -NoRestart -Online -FeatureName "Containers"
Enable-WindowsOptionalFeature -All -NoRestart -Online -FeatureName "Containers-DisposableClientVM"
Enable-WindowsOptionalFeature -All -NoRestart -Online -FeatureName "Microsoft-Hyper-V"
Enable-WindowsOptionalFeature -All -NoRestart -Online -FeatureName "Microsoft-Windows-Subsystem-Linux"
```

```powershell
Get-WindowsCapability -Name OpenSSH.Client -Online | Add-WindowsCapability -Online
Get-WindowsCapability -Name OpenSSH.Server -Online | Add-WindowsCapability -Online
Set-Service -PassThru -StartupType "Automatic" -Status "Running" -Name "ssh-agent"
Set-Service -PassThru -StartupType "Automatic" -Status "Running" -Name "sshd"
```
