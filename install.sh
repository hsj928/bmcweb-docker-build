#!/bin/bash

# Download required packages into the shared folder
mkdir -p shared
pushd shared

# Download a complete romulus image
wget https://jenkins.openbmc.org/job/latest-master/label=docker-builder,target=romulus/lastSuccessfulBuild/artifact/openbmc/build/tmp/deploy/images/romulus/obmc-phosphor-image-romulus.static.mtd


# Clone the source code of the bmcweb
git clone https://github.com/openbmc/bmcweb.git


mkdir -p "sdk/romulus-sdk"
cd sdk

# Download the sdk package, this needs to be installed later, inside the docker container
wget https://jenkins.openbmc.org/job/latest-master-sdk/label=docker-builder,target=romulus/lastSuccessfulBuild/artifact/deploy/sdk/oecore-x86_64-arm1176jzs-toolchain-nodistro.0.sh
chmod u+x oecore-x86_64-arm1176jzs-toolchain-nodistro.0.sh

popd

# Create the docker image, named 'bmcweb'
docker build . -t bmcweb
