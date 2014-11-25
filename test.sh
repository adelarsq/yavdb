#!/bin/bash

#clean environment
rm -rf .jvdbTemp
rm -f .VIMDEBUGGER

#compile
rm -rf test/*.class
javac -g test/HelloWorld.java

# launch test
./yavdb -s . test.HelloWorld "stop in test.HelloWorld.main"
