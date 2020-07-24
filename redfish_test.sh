#!/bin/bash

# Request the root endpoint of redfish
# The server is on the localhost:3443, that's an exposed port by docker
# in the docker container itself a qemu instance is running exposing the 443 to 2443(docker)

curl -k -w '\n%{http_code}\n' https://127.1:3443/redfish/v1
