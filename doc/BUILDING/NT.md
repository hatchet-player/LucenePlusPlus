Build Instructions for Windows systems
--------------------------------------


On Debian systems, the following packages are required:

- boost_date_time[.dll, .lib]
- boost_filesystem[.dll, .lib]
- boost_regex[.dll, .lib]
- boost_thread[.dll, .lib]
- boost_iostreams[.dll, .lib]
- zlibd[.dll, .lib] 
- zlibstaticd.lib if building static


To build the library the following commands should be issued::

```
    $ ./bootstrap.cmd
    $ cd build
    $ ninja install
```



**Note: The "BOOST_ROOT" environment variable must be defined to point to the Boost library directory (eg. c:\\boost_1_57_0)**

You'll need Boost installed from http://boost.org.