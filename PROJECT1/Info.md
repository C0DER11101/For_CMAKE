## Important

This is an instruction in `CMakeLists.txt` in this folder(`PROJECT1`).

```bash
install(TARGETS ${PROJECT_NAME} DESTINATION bin)
```

This command will install the targets for the executable in the destination `bin` which, in Linux, is usr/local/bin/
(We have already talked about `${PROJECT_NAME}` in [Basic.md](https://github.com/C0DER11101/For_CMAKE/blob/Cmake/Basic.md).

Why is it required?
My executable `RPS` is in the `build` directory, so that means everytime I want to run my executable, I will have to move to the `build` directory and then run the executable which is a lot of work. So instead you can write this command:

```bash
make install
```

Make sure when you use this command you are in your `build` directory which also contains the `Makefile`.

So this command will try to install the executable in `usr/local/bin/` to which you(as a user) don't have the permission to write. You only have the read permission. So this might throw `Permission Denied` error:

<img src="https://user-images.githubusercontent.com/96164229/214602924-54ed54cf-d9bd-41f0-b606-6a734b4e3b64.png" width="60%" height="60%">

So, to overcome that, type the superuser do(sudo) command:

```bash
sudo make install
```

<img src="https://user-images.githubusercontent.com/96164229/214603020-46c7bba2-51b9-4840-b5cb-50afcf95f90b.png" width="60%" height="60%">

This will prompt you to enter your password(if you are the admin). Type in your password and everything will be done.

After this no matter where you are in your computer, you will be able run your executable by just typing its name(you don't even have to type `./` before it). It will become a command as shown below:

<img src="https://user-images.githubusercontent.com/96164229/214603059-58da606e-3fe3-42d2-9848-5a3054722080.png" width="60%" height="60%">


---
