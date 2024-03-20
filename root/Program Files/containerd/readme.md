# containerd

```powershell
containerd config default | Out-File "${env:ProgramFiles}\containerd\config.toml" -Encoding "ascii"
containerd --register-service `
    --log-file "${env:TEMP}\containerd.log" `
    --log-level "debug" `
    ;
```
