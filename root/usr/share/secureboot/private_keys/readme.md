# secureboot

```shell
sbctl create-keys
sbctl enroll-keys --microsoft
find "/efi/" -name "*.efi" -exec sudo sbctl sign --save {} \;
sbctl list-files
```
