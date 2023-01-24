#!/bin/bash
if [ ! -f "${PROJECT_DIR}/VoodooInput/Debug/VoodooInput.kext/Contents/Resources/VoodooInputMultitouch/VoodooInputEvent.h" ]; then
  cd "${PROJECT_DIR}"
  rm -rf VoodooInput
  src=$(/usr/bin/curl -Lfs https://raw.githubusercontent.com/acidanthera/VoodooInput/master/VoodooInput/Scripts/bootstrap.sh) && eval "$src" || exit 1
fi

