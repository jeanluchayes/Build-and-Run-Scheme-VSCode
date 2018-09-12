# Build-and-Run-Scheme-VSCode
This Repository holds the instructions to succesfully get Visual Studio Code to Build Scheme code using ChickenScheme, and Run it on Windows, Linux, or PortableApps

# Prerequisites

## Linux
This Build mode is made easier by, and requires, the Code Runner Extension.
You can get it Here:
[link to CodeRunner](https://marketplace.visualstudio.com/items?itemName=formulahendry.code-runner)

## Windows
You will need MinGW to build ChickenScheme.
You can find out how to install it from here:
[link to MinGW](http://www.mingw.org/)

After Install, you can continue on with the tutorial.

# Working with Linux
Install the latest version of Visual Studio Code.

## Installing Chicken
You can Install Chicken By following the Intructions at
[link to ChickenScheme](https://www.call-cc.org/)

or following the instructions in the file:
Build_Chicken_Linux.txt in the Scripts/Linux directory of this repository.

## Configuring Code Runner to work with Scheme
Open Settings in VSCode and navigate to user Setting (The JSON one)

The file:
Compile_Script_Linux.sh located in the Scripts/Linux directory of this repository
is the script that will build your code, so put it where you like in
your system and copy this path.

The file:
Compile_Script_VSCode_Settings_Linux.txt in the Scripts/Linux directory of this repository
shows the code you must recalibrate for your system. Use the path you obtained above in place of
my path in the file.

Then copy the JSON code to your User Settings JSON in VSCode and Save.

## Running your Code
If you open a .scm file in VSCode, and click the Code Runner Play Button, or otherwise,
Control-Alt-N, your scheme code will build in the directory it is located in, and will create
a file with the same name but missing an extension.

A xterm terminal will automatically launch and allow you to interface with your code.
It will not automatically exit, it will bring you back to the location of the executable,
if you may wish to run it again.

### Example
If have included a Scheme Example that takes user input, called:
fib-recursive.scm, located in the Scheme Directory of this repository.

If you follow the instructions above to build you code, you should
see the program asking you for a number.

Verify that the code works - As in, don't use the value 5 of course, as the Fibonacci of 5 is 5.
Try The Fibonacci of 7, 8, 9.



