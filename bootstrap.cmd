@echo off

REM  Delete existing buildfiles
REM ---------------------------------------------------
rmdir /q /s build


REM set path variables
REM ---------------------------------------------------
set prefix=C:\local
set BOOST_ROOT=%prefix%\Boost
set cmake_path=%prefix%;C:\Program Files;C:\Program Files (x86);
set ninja=%prefix%\bin\ninja.exe


REM Set meson variables
REM ---------------------------------------------------
set CMAKE_PREFIX_PATH="%cmake_path%"


REM  Call meson
REM ---------------------------------------------------
meson setup build ^
    %meson_vars% ^
    -Dcmake_prefix_path="%cmake_path%" ^
    -Dprefix="%prefix%"


REM  Build lucene
REM ---------------------------------------------------
cd build
%ninja%
cd ..