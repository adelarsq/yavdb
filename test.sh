#!/bin/bash

#compile

rm -rf .jvdbTemp
rm .VIMDEBUGGER

cd test
javac HelloWorld.java
cd ..

# launch test
./yavdb -s . test.HelloWorld "stop in test.HelloWorld.main"
