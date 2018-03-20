#!/bin/bash
# Create the symlinks to source files needed to run the java tests
# This project doesn't contain its own source files

mkdir -p src/main/java/com/ternaryop/photoshelf/parsers
mkdir -p src/main/java/com/ternaryop/photoshelf/util/date
mkdir -p src/test/java/com/ternaryop/photoshelf
mkdir -p src/main/java/com/ternaryop/utils
mkdir -p app/src/main

pushd src/test/java/com/ternaryop/photoshelf
ln -s ../../../../../../../photoshelf/app/src/test/java/com/ternaryop/photoshelf/test/* .
popd

pushd src/main/java/com/ternaryop/photoshelf/parsers
ln -s ../../../../../../../../photoshelf/app/src/main/java/com/ternaryop/photoshelf/parsers/Title* .
ln -s ../../../../../../../../photoshelf/app/src/main/java/com/ternaryop/photoshelf/parsers/DateComponents* .
ln -s ../../../../../../../../photoshelf/app/src/main/java/com/ternaryop/photoshelf/parsers/*Location* .
ln -s ../../../../../../../../photoshelf/app/src/main/java/com/ternaryop/photoshelf/parsers/JSONTitleParserConfig* .
popd

pushd src/main/java/com/ternaryop/photoshelf/util/date
ln -s ../../../../../../../../../photoshelf/app/src/main/java/com/ternaryop/photoshelf/util/date/*
popd

pushd src/main/java/com/ternaryop/utils/
ln -s ../../../../../../../commonutils/app/src/main/java/com/ternaryop/utils/String* .
ln -s ../../../../../../../commonutils/app/src/main/java/com/ternaryop/utils/JSONUtils* .
ln -s ../../../../../../../commonutils/app/src/main/java/com/ternaryop/utils/URLUtils* .
ln -s ../../../../../../../commonutils/app/src/main/java/com/ternaryop/utils/IOUtils* .
popd

pushd app/src/main/
ln -s ../../../../photoshelf/app/src/main/assets/
popd
