# https://learn.microsoft.com/en-us/virtualization/hyper-v-on-windows/quick-start/enable-hyper-v
$hyperv = Get-WindowsOptionalFeature -FeatureName "Microsoft-Hyper-V-All" -Online

if ($hyperv.State -eq "Enabled") {
    net stop "com.docker.service"
    taskkill /IM "com.docker.backend.exe" /F /T
    wsl --shutdown

    # https://learn.microsoft.com/en-us/powershell/module/hyper-v/optimize-vhd
    Optimize-VHD -Mode Full -Path "${Env:LOCALAPPDATA}\Docker\wsl\data\ext4.vhdx"
}

# https://learn.microsoft.com/en-us/archive/blogs/virtual_pc_guy/a-self-elevating-powershell-script
