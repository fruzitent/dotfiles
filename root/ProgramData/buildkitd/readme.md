# buildkit

```powershell
net localgroup "buildkit-users" /add
net localgroup "buildkit-users" "${env:USERNAME}" /add
buildkitd --group "buildkit-users" --register-service
```

```powershell
docker buildx create --driver=remote "npipe:////./pipe/buildkitd" --name "buildkit-exp"
docker buildx use "buildkit-exp"
```
