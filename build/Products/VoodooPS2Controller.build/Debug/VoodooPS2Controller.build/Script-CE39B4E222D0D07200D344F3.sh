#!/bin/sh
cd "${TARGET_BUILD_DIR}"
rm -rf "${FULL_PRODUCT_NAME}/Contents/PlugIns/VoodooInput.kext"
mkdir -p "${FULL_PRODUCT_NAME}/Contents/PlugIns"
cp -r "${PROJECT_DIR}/VoodooInput/${CONFIGURATION}"/* "${FULL_PRODUCT_NAME}/Contents/PlugIns/"
dist=("$FULL_PRODUCT_NAME")
if [ -d "$DWARF_DSYM_FILE_NAME" ]; then
  rm -rf dSYM
  mkdir dSYM
  mv "$DWARF_DSYM_FILE_NAME" dSYM/
  find ${FULL_PRODUCT_NAME} -name *.dSYM -exec mv {} dSYM/ \;
  dist+=(dSYM);
fi

archive="${PRODUCT_NAME}-${MODULE_VERSION}-$(echo $CONFIGURATION | tr /a-z/ /A-Z/).zip"
rm -rf *.zip
zip -qry -FS "${archive}" "${dist[@]}"

