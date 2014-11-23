This is a way to integrate Vim with the JVM's debugger, jdb.  It was originally yavdb, modified to work for a Scala project.  Maybe someone else will find it useful

Video of it being used: http://www.youtube.com/watch?v=COyzt0DvCZY

Script Requirements:
-VIM compiled with Signs, Client-Server, and Python support.
-Python 2.5
-An operating system with support for named pipes
-NERDTree 


Using JVDB:
    jvdb [-c classpath] [-n servername] [-s sourcedirs] <classname> "<breakpoint>" 


Example:
    jvdb -c "/home/vmarquez/project/bin" -s "src:test" com.myproject.TestClass "stop in com.myproject.TestClass$.main"



VIM will have the following key mappings set:

<F5> Continue Execution
<F7> Step Into a Function
<F8> Next Instruction




TODO:  I'd like to use NERDTree to display locals for each stack printed out.  If I can find out how to hook into opening a 'dir' from NERDTree, I can do more
with dumping complex objects out. 
