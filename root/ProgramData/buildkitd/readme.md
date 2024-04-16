# buildkit

```powershell
buildkitd --register-service
```

```powershell
docker buildx create --driver=remote "npipe:////./pipe/buildkitd" --name "buildkit-exp"
docker buildx use "buildkit-exp"
```
