#!/bin/bash
# Create the symlinks to source files needed to run the java tests
# This project doesn't contain its own source files

mkdir -p src/main/java/com/ternaryop/photoshelf/parsers
mkdir -p src/test/java/com/ternaryop/photoshelf
mkdir -p src/main/java/com/ternaryop/utils/date
mkdir -p src/main/java/com/ternaryop/utils/json
mkdir -p src/main/java/com/ternaryop/utils/text
mkdir -p src/main/java/com/ternaryop/utils/network
mkdir -p src/main/java/com/ternaryop/utils/io
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

pushd src/main/java/com/ternaryop/utils/
ln -s ../../../../../../../../commonutils/app/src/main/java/com/ternaryop/utils/date/Calendar.kt date/
ln -s ../../../../../../../../commonutils/app/src/main/java/com/ternaryop/utils/text/Html.kt text/
ln -s ../../../../../../../../commonutils/app/src/main/java/com/ternaryop/utils/text/Unicode.kt text/
ln -s ../../../../../../../../commonutils/app/src/main/java/com/ternaryop/utils/json/File.kt json/
ln -s ../../../../../../../../commonutils/app/src/main/java/com/ternaryop/utils/network/Resolver.kt network/
ln -s ../../../../../../../../commonutils/app//src/main/java/com/ternaryop/utils/io/IOUtils.kt io/
popd

pushd app/src/main/
ln -s ../../../../photoshelf/app/src/main/assets/
popd
