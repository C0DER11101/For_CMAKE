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



---
