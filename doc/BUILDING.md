Build Instructions
------------------

You'll need the `Boost <http://www.boost.org>`_ libraries installed somewhere.

On Debian systems, the following packages are required:

- libboost-date-time-dev
- libboost-filesystem-dev
- libboost-regex-dev
- libboost-thread-dev
- libboost-iostreams-dev

To build the library the following commands should be issued::

    $ mkdir build; cd build
    $ cmake ..
    $ make
    $ make install


Build Instructions for Windows systems
--------------------------------------

Open solution lucene++.sln located in the *msvc* folder into Visual Studio 2010+ and build.

**Note: you will need to edit the include\\Config.h.cmake file. Make a copy, rename it to Config.h, and replace**

  #@DEFINE_USE_CYCLIC_CHECK@ LPP_USE_CYCLIC_CHECK

with

  #define LPP_USE_CYCLIC_CHECK

**Note: "BOOST_ROOT" environment variable must be defined to point to the Boost library directory (eg. c:\\boost_1_57_0)**

Boost libs must be located in a subdirectory lib32-msvc-10.0 
This is the default name of the install directory from the sf.net  `Boost-binaries <http://sourceforge.net/projects/boost/files/boost-binaries/>`_ project.

You'll need Boost installed from http://boost.org.