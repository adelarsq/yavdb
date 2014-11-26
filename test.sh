#!/bin/bash

set -x

#clean environment
rm -rf .jvdbTemp
rm -f .VIMDEBUGGER

#compile
rm -rf test/*.class
javac -g test/HelloWorld.java

# launch test
./yavdb -s titi -t jdb "jdb -classpath . test.HelloWorld"
