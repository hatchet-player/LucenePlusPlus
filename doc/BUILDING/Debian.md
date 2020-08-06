Build Instructions
------------------

You'll need the `Boost <http://www.boost.org>`_ libraries installed somewhere.

On Debian systems, the following packages are required:

- libboost-date-time-dev
- libboost-filesystem-dev
- libboost-regex-dev
- libboost-thread-dev
- libboost-iostreams-dev
- zlib1g-dev

To build the library the following commands should be issued::

```
    $ ./bootstrap.sh
    $ cd build
    $ ninja install
```