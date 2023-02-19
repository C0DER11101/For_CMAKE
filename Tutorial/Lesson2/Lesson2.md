# Levels and libraries( _static libraries_)

## Adding more files to CMakeLists.txt

Create another file, say `adder.c`, in the same folder that contains CMakeLists.txt in this case that folder is `Lesson2/`.

Add the the file name of the newly created file to the CMakeLists.txt

Let's say that your CMakeLists.txt looks like this:

```cmake
cmake_minimum_required(VERSION 3.13.4)

projec(SimpleProject)

add_executable(${PROJECT_NAME} main.c)
```

So, now that we have created a new file, we need to add it to our CMakeLists.txt, and we do it like this:

everything in CMakeLists.txt remains the same, just add "adder.c" in add_executable() like this:

```cmake
add_executable(${PROJECT_NAME} main.c adder.c)
```

After this run `cmake` command and then run the `make` command.

Look at the `make` command in the image below:

<img src="https://user-images.githubusercontent.com/96164229/219938493-c9527cd1-4473-4fbe-9088-864536465bf3.png" width="60%" height="60%">

Here the format of `make` looks different but actually it's doing the same thing. Actually, we are in `Lesson2/` and we don't want to move to `out/build/` and run the `make` command there so what we did is used `make -C out/build/` which means enter `out/build/` and start making there(because `Makefile` is in `build/`).




## Adding libraries:

Now, we are going to build the adder as a library.

We will create a folder named `Adder/` first and move `adder.c` to this folder. In that folder we will also add another new file named `adder.h` and put the declaration of the function `dd()` in that header file. Now, in this folder we will have to create another CMakeLists.txt.

Now, this CMakeLists.txt is a *sub-level CMakeLists.txt* and the CMakeLists.txt that is in `Lesson2/` is the *top-level CmakeLists.txt*.

Now, in our *top-level CMakeLists.txt*, we will include the following:

```cmake
cmake_minimum_required(VERSION 3.13.4)

project(SimpleProject)

add_executable(${PROJECT_NAME} main.cpp)

add_subdirectory(Adder)
```

`add_subdirectory(Adder)` basically adds a subdirectory to the build. The directory `Adder` specifies the directory in which the source CMakeLists.txt and code files are located.

So the *sub-level CMakeLists.txt* doesn't need to have all the same things that the top-level CMakeLists.txt has.

All it needs to have is:

```cmake
add_library(adder adder.c adder.h)
```

Now back to our *top-level CMakeLists.txt*, we need to link the library to our core project, so we add this line to our *top-level CMakeLists.txt*:

```cmake
target_link_libraries(${PROJECT_NAME} adder)
```

Note that `adder` in this CMakeLists.txt needs to match the `adder` that we wrote in our sub-level CMakeLists.txt

Now that we are done, we will run the `cmake` command and after that we will also run the `make` command.

Now what this will do is that a new folder named `Adder/` will be created in `out/build/` which will contain the following:

<img src="https://user-images.githubusercontent.com/96164229/219938521-fd9470fe-673c-4f64-a996-154462daabf0.png" width="60%" height="60%">

To enable including the header files using `<` and `>` we have to use this command in the *top-level CMakeLists.txt*:

```cmake
target_include_directories(${PROJECT_NAME} PUBLIC Adder)
```

this function basically specifies the include directories or targets to use when compiling a given target. Use this function after `add_executable()` or `add_library()`.

The `INTERFACE`, `PUBLIC` and `PRIVATE` keywords are required to specify the scope of the following arguments. `PRIVATE` and `PUBLIC` items will populate the [INCLUDE_DIRECTORIES](https://cmake.org/cmake/help/v3.0/prop_tgt/INCLUDE_DIRECTORIES.html#prop_tgt:INCLUDE_DIRECTORIES) property of `${PROJECT_NAME}`.

With the help of this function you won't need to use " " to include the header file that you created, instead you will be able to include the header file using `<` and `>`.

`target_link_directories()` specifies the paths in which the linker should search for libraries when linking a given target.

Must be called after `add_executable(<target> [BEFORE] <INTERFACE|PUBLIC|PRIVATE> [items1...][<INTERFACE|PUBLIC|PRIVATE>[items2...]...])` or `add_library()`.

The `INTERFACE`, `PUBLIC` and `PRIVATE` keywords are required to specify the scope of items that follow them.

`PRIVATE` and `PUBLIC` items will populate the [LINK_DIRECTORIES](https://cmake.org/cmake/help/latest/prop_tgt/LINK_DIRECTORIES.html#prop_tgt:LINK_DIRECTORIES) property of the `<target>`.


---
