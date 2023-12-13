# ssh

## Generate

```shell
ssh-keygen -C "<comment>" -f "${HOME}/.ssh/id_ed25519" -P "<password>" -t ed25519
```

## Import

```shell
ssh-add "${HOME}/.ssh/id_ed25519"
```

## List Keys

```shell
ssh-add -L
```
