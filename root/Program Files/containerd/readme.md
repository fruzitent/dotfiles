# [containerd](https://github.com/containerd/containerd)

```powershell
containerd config default | Out-File "${Env:ProgramFiles}\containerd\config.toml" -Encoding "ascii"
containerd --register-service `
    --log-file "${Env:TEMP}\containerd.log" `
    --log-level "debug" `
    ;
```

<!-- https://github.com/containerd/nerdctl -->
<!-- https://github.com/containernetworking/plugins -->
<!-- https://github.com/microsoft/windows-container-networking -->
