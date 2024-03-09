# jks

## Generate

```shell
keytool -genkey \
    -alias "id_ecdsa" \
    -keyalg "EC" \
    -keysize 256 \
    -keystore "${HOME}/.jks/id_ecdsa" \
    -validity 10000 \
    ;
```
