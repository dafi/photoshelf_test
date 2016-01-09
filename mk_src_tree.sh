#!/bin/bash
# Create the symlinks to source files needed to run the java tests
# This project doesn't contain its own source files

mkdir -p src/main/java/com/ternaryop/photoshelf/parsers
mkdir -p src/test/java/com/ternaryop/photoshelf
mkdir -p src/main/java/com/ternaryop/utils
mkdir -p app/src/main

pushd src/test/java/com/ternaryop/photoshelf
ln -s ../../../../../../../photoshelf/app/src/test/java/com/ternaryop/photoshelf/test/* .
popd

pushd src/main/java/com/ternaryop/photoshelf/parsers
ln -s ../../../../../../../../photoshelf/app/src/main/java/com/ternaryop/photoshelf/parsers/Title* .
ln -s ../../../../../../../../photoshelf/app/src/main/java/com/ternaryop/photoshelf/parsers/JSONTitleParserConfig.java .
popd

pushd src/main/java/com/ternaryop/utils/
ln -s ../../../../../../../commonutils/app/src/main/java/com/ternaryop/utils/String* .
ln -s ../../../../../../../commonutils/app/src/main/java/com/ternaryop/utils/JSONUtils* .
popd

pushd app/src/main/
ln -s ../../../../photoshelf/app/src/main/assets/
popd
