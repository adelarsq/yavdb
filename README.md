# yavdb

yavdb modified to work for a Scala project.

## Usage

See it in use: [video](http://www.youtube.com/watch?v=COyzt0DvCZY)

## Requirements

- VIM compiled with Signs, Client-Server, and Python support.
- Python 2.5
- An operating system with support for named pipes
- NERDTree 

## Use

    yavdb [-c classpath] [-n servername] [-s sourcedirs] <classname> "<breakpoint>" 

- -c: path for compiled classes
- -n: vim servername
- -s: path for source classes

example:

    jvdb -c "/home/vmarquez/project/bin" -s "src:test" com.myproject.TestClass "stop in com.myproject.TestClass$.main"

## Key mapping

Vim will have the following key mappings set:

- <F5> Continue Execution
- <F7> Step Into a Function
- <F8> Next Instruction

## Test

Launch `./test.sh`

