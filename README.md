
```bash
wget https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.34.tar.xz
tar -xf linux-6.6.34.tar.xz
```

```bash
docker build . -t hexaforce/kernel-rebuild
```

```bash
docker run --privileged --rm -it \
-v "$(pwd)/linux-6.6.34:/source-code" \
-v "$(pwd)/kernel-6.6.34:/build-output" \
-e LOCALVERSION=-fedora40 \
hexaforce/kernel-rebuild
```
