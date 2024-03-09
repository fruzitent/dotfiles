# locks

```shell
cat "${XDG_DOCUMENTS_DIR}/locks/pacman.txt" | awk '/^#/ {next}; NF == 0 {next}; {print $1}' | paru --sync --needed --noconfirm -
```

```powershell
winget import --import-file "$([Environment]::GetFolderPath([Environment+SpecialFolder]::MyDocuments))\locks\winget.jsonc" --ignore-versions
```
