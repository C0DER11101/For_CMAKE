# Basic

**Note:** _The cited examples for directories and the directories used in practical use may differ, but the commands will remain the same._

_CMake relies on a file named_ `CMakeLists.txt`(this is how the name must be written!!).

Typing the command `cmake` in the terminal will produce this:

<img src="https://user-images.githubusercontent.com/96164229/214253728-6096803c-2f52-48cf-8c7b-1b76b753237d.png" width="60%" height="60%">

We will be using this command more often:

<img src="https://user-images.githubusercontent.com/96164229/214254218-91891404-f4a4-40b8-b227-c901c7dacc68.png" width="60%" height="60%">

This command has two parts: the source part and the destination part.

**The source path must contain** `CMakeLists.txt`

Getting started:

Consider that you are in the directory: `~/Desktop/`

## _Step 1_

Create the directories `out/` and `build/` with following command in your present directory(i.e `~/Desktop`):

```bash
mkdir -p out/build/
```
This command is used to create directories that are inside one another. If you try to create `out/build/` using simple `mkdir` then you will get this error:

<img src="https://user-images.githubusercontent.com/96164229/214263527-b4f96d2f-00db-496a-858a-1e61f5fb95f4.png" width="60%" height="60%">

## _Step 2_
After the command in [Step 1](https://github.com/C0DER11101/For_CMAKE/blob/Cmake/Basic.md#step-1), you may move to `/out/build/` or you may stay in your present directory.

**If you are in your present directory, then this should be your command:**
```bash
cmake -S ~/Desktop/ -B ~/Desktop/out/build
```
**OR**

Since your source path is the directory you are currently in therefore, you can write this command:
```bash
cmake -S . -B out/build/
```
In the above command `.` means the current directory you are in which is `~/Desktop/`.

**If you are in** `/out/build/`, **then this should be your command:**
```bash
cmake -S ../../ -B .
```
Here `../../` means behind two directories. Our `CMakeLists.txt` exists behind two directories that is in `~/Desktop/`.
Here also the `.` represents the directory you are currently in which is `out/build/`

**NOTE**
_If you want to remove a directory that is empty or non-empty then just use this command:_
```bash
rm -rf <path of the directory to be deleted>
```

## _Step 3_
After the `cmake` command in [Step 2](https://github.com/C0DER11101/For_CMAKE/blob/Cmake/Basic.md#step-2), this will be the result:

<img src="https://user-images.githubusercontent.com/96164229/214265618-3aacd8d4-4d30-435e-a310-2090ff127df4.png" width="60%" height="60%">

These will be the files present in `out/build/`

<img src="https://user-images.githubusercontent.com/96164229/214266770-39e8e6a2-9478-4a48-a3af-9e68f0cbe550.png" width="60%" height="60%">

## _Step 4_
Open `CMakeLists.txt`. Fill it with [these instructions](https://github.com/C0DER11101/For_CMAKE/blob/Cmake/CMakeLists.txt).

**Explanation of each line:**

`cmake_minimum_required(VERSION 3.16.3)` $\rightarrow$ basically it's going to check the minimum required version of CMake. It's generally recommended to put the current version of CMake into the parameter of `cmake_minimum_required`.

`project(SimpleProject)` $\rightarrow$ add the project with the name `SimpleProject`. You can give any name you want in the parameter.

`add_executable(${PROJECT_NAME} main.c)` $\rightarrow$ this function basically gives the executable a name. `${PROJECT_NAME}` is a variable that gets replaced by the name of the project(`SimpleProject` in this case). The format used for writing this variable is quite similar to the format used to write shell variables(the `$` sign and `{}` ). The second argument `main.c` is the name of the file for which we want to create the executable.

**Remember to run** `cmake` **command everytime you add a new instruction to** `CMakeLists.txt`, **just to keep it updated!!**.

## _Step 5_
After filling in the instructions, run the `make` command in the directory where the `Makefile` is present as shown below:

<img src="https://user-images.githubusercontent.com/96164229/214297927-96fb4a51-efe5-44a3-ae12-9bc21d89ae5d.png" width="60%" height="60%">

Once, the command finishes execution you will find an executable with the name that you had provided to `project()` in [Step 4](https://github.com/C0DER11101/For_CMAKE/blob/Cmake/Basic.md#step-4).

<img src="https://user-images.githubusercontent.com/96164229/214299092-e995b757-311b-47ad-8bba-7a4353294c77.png" width="60%" height="60%">

## _Step 6_
Run the executable.

<img src="https://user-images.githubusercontent.com/96164229/214299918-6d23a854-7c77-4e00-a868-a93efc2506ab.png" width="60%" height="60%">



---
