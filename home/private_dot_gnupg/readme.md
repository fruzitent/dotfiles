# gnupg

## Generate

```shell
gpg --quick-generate-key "<comment>" ed25519 cert never
gpg --quick-add-key  "<fingerprint>" cv25519 encr never
gpg --quick-add-key  "<fingerprint>" ed25519 auth never
gpg --quick-add-key  "<fingerprint>" ed25519 sign never
```

## Export

```shell
gpg --export                --armor "<fingerprint>" > "${HOME}/.gnupg/id_ed25519.pub.asc"
gpg --export-secret-keys    --armor "<fingerprint>" > "${HOME}/.gnupg/id_ed25519.sec.asc"
gpg --export-secret-subkeys --armor "<fingerprint>" > "${HOME}/.gnupg/id_ed25519.sub.asc"
gpg --export-ownertrust > "${HOME}/.gnupg/ownertrust.txt"
```

## Import

```shell
gpg --import "${HOME}/.gnupg/id_ed25519.pub.asc"
gpg --import "${HOME}/.gnupg/id_ed25519.sec.asc"
gpg --import "${HOME}/.gnupg/id_ed25519.sub.asc"
gpg --import-ownertrust "${HOME}/.gnupg/ownertrust.txt"
```

## List Keys

```shell
gpg --keyid-format long --list-secret-keys
```
