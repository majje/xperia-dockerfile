# Dockerfile for Xperia AOSP build
Dockerfile for building the Android Open Source Project (AOSP) for Xperia phones. Based on the description found here, http://developer.sonymobile.com/open-devices/aosp-build-instructions/how-to-build-aosp-marshmallow-for-unlocked-xperia-devices/#build-aosp-marshmallow-experimental.

## Create the image

```
cd xperia-dockerfile
sudo docker build -t xperia_build .
```

# Xperia source
Install the Xperia source in `$AOSPSRC` according to the link above.

# Build AOSP

## Docker container
Run a Docker container based on the image created above.

```
docker run -v $AOSPSRC:/root/android -t -i xperiax_build /bin/bash
```

It will mount the `$AOSPSRC` directory in the container at /root/repo. Changes to the repo will be visible for both the docker container and the host system.


## Build
Build according to the Xperia AOSP document mentioned above.
