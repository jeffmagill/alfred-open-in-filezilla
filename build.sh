#!/usr/bin/env bash

echo "Copying files..."

BUILD_DIR=`mktemp -d`
CURRENT_DIR=`pwd`

cp ${CURRENT_DIR}/src/* ${BUILD_DIR}

echo "Building workflow..."

cd ${BUILD_DIR} && zip -rq "$CURRENT_DIR/Open-in-Filezilla.alfredworkflow" *

echo "Cleaning up..."

rm -rf ${BUILD_DIR}

echo "Done!"