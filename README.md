# Streamlink Docker

This repo builds docker images for the following platforms:

- linux/amd64
- linux/arm/v6
- linux/arm/v7

You can get the image from docker hub: https://hub.docker.com/r/jensforstmann/streamlink

For more information on how to use streamlink, check out their page: https://streamlink.github.io/


## Usage

```
docker pull jensforstmann/streamlink:latest
docker run -it --rm jensforstmann/streamlink:latest --version
```


## Build

If you want to build your own image locally...

```
$streamlink_version="5.4.0"
docker build --build-arg STREAMLINK_VERSION=$streamlink_version -t streamlink .
```
