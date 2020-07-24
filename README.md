# bmcweb-docker-build
Building openbmc/bmcweb inside docker, and run with qemu

1. Be root and clone the repo

2. Create the docker image, start a container and finalize the installation of the sdk
```
cd bmcweb-docker-build
./install.sh
./run

./install_sdk.sh
```

3. Now you are ready for ...

a) You can build the bmcweb with:
```
. prepare_sdk.sh
cd bmcweb
cmake ./
```

or 
b) Start a qemu instance
```
./start_qemu.sh
```
