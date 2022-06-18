# gametool #
- a short time project as a job assignment
- the only target platform is windows(7+)
## build
### gmake/mingw32-make: the main project and almost all libraries have makefiles
    - cd ./env/gmake; make/mingw32-make start
        - to build all libraries and executable and run it
    - cd ./env/gmake; make/mingw32-make build
        - to build all libraries and executable
    - cd ./env/gmake; make/mingw32-make clean
        - to remove all built files
    - cd ./env/gmake; make/mingw32-make print
        - to print all makefile variables:
            - NAME/VERS/TYPE - the name/version/type(exe/lib/dll) of the target binary file
            - ROOT - the top first project directory where everything is located
            - DSCR/DOBJ/DBIN - directory with source/object/binary files
            - DLIB - directory with all libraries
            - LSCR/LOBJ/LBIN - file lists of source/object/binary files
            - LLIB - the list of library names
            - CMAKER - compiler
            - CFLAGS - compile flags
            - LMAKER - linker
            - LFLAGS - compile flags
            - CP/RM - shell command to copy/delete files
### nmake: is the same as gmake but it needs the microsoft developer shell
    - cd ./env/nmake; ./nmakerun.bat
        - build the project and execute it
### pmake: premake5 build system based on lua
    - premake repo is included in the ./lib folder: we need to build it;
        - in order to build it on windows - just run ./lib/pmake/Bootstrap.bat
        - generated files are located in the ./lib/pmake/bin/release folder
    - one the premake binary is compiled - place it whenever it is convenient and run:
        - cd ./env/pmake; ../../lib/pmake/bin/release/premake5.exe <target>
            - generates all build files, scripts for specified target;
            - visual studio targets:
                - vs2005 | vs2008 | vs2010 | vs2012 | vs2013 | vs2015 | vs2017 | vs2019 | vs2022
            - other targets: gmake, gmake2, codelite, xcode4
            - clean target to remove all binaries and generated files
## quick game engine
- Solo developer
- 1 week to make it usable
# endofile #