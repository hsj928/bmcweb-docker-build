#!/bin/bash

if [[ "${BASH_SOURCE[0]}" = "${0}" ]]; then
  echo "Script HAS TO BE sourced"
  echo "Use: . $0"
  exit 1
fi

. /shared/sdk/romulus-sdk/environment-setup-arm1176jzs-openbmc-linux-gnueabi
