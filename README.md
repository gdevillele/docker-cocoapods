# docker-cocoapods

Build context for a CocoaPods docker container.

[https://cocoapods.org](https://cocoapods.org)

### Use image from registry

```
docker run --rm -v `pwd`:/project -w /project gaetan/cocoapods:latest pod init
```

### Build image

```
make image
```

### Clean built image

```
make clean
```