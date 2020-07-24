#!/bin/bash

printf "\e[32mProbaly you want to run \e[41m./start_qemu.sh\e[0m\e[32m inside the docker container\e[0m\n"

options="-p 3022:2222 -p 3443:2443"

docker run --rm -ti $options --name 'bmcweb1' --workdir /shared -v $PWD/shared:/shared bmcweb bash
