# Build-and-Run-Scheme-Visual Studio Code

This Repository holds the instructions to successfully get Visual Studio Code to Build Scheme code using ChickenScheme, and Run it on Windows, Linux, or PortableApps

## Prerequisites

This Project Requires the Code Runner Extension.
You can get it Here:
[link to CodeRunner](HTTPS://marketplace.visualstudio.com/items?itemName=formulahendry.code-runner)

### Linux


### Windows

You will need MinGW to build Chicken Scheme.
You can find out how to install it from here:
[link to MinGW](http://www.mingw.org/)

After Install, you can continue on with the tutorial.

### Portable Apps

PortableApps is a great software for running portable windows apps across different windows machines directly from your
Flashdrive. I use it for a customized MobaXterm, Visual Studio Code, QDIR, Sublime Text, PDF Reader, and many more apps.

The most important App to get is Visual Subst.
[link to Visual Subst](HTTPS://www.ntwind.com/software/utilities/visual-subst.html)

This lets you map your flash drive to a constant Drive letter, so your applications always work with that drive letter.

You can download Portable apps here:
[link to PortableApps](HTTPS://portableapps.com/)

## Working with Linux

Working with Chicken Scheme and Visual Studio code in Linux is simple, as
Nothing must be added to your path after you install chicken correctly.

### Installing Chicken in Linux

You can Install Chicken By following the Instructions at
[link to ChickenScheme](HTTPS://www.call-cc.org/)

Or following the instructions in the file:
Build_Chicken_Linux.txt in the Scripts/Linux directory of this repository.

### Configuring Code Runner to work with Scheme in Linux

Open Settings in Visual Studio Code and navigate to user Setting (The JSON one)

The file:
Compile_Script_Linux.sh located in the Scripts/Linux directory of this repository
is the script that will build your code, so put it where you like in
your system and copy this path.

The file:
Compile_Script_Visual Studio Code_Settings_Linux.txt in the Scripts/Linux directory of this repository
shows the code you must recalibrate for your system. Use the path you obtained above in place of
my path in the file.

Then copy the JSON code to your User Settings JSON in Visual Studio Code and Save.

## Working with Windows

Working with Chicken Scheme and Visual Studio code in Windows takes a little more effort,
as sometimes MinGW and Chicken Scheme don't get added to the environment path in windows. No matter, these
scripts take care of it.

### Installing Chicken in Windows

You can Install Chicken By following the Instructions at
[link to ChickenScheme](HTTPS://www.call-cc.org/) and Build with MinGW.

Or follow the instructions in the file:
Build_Chicken_Windows.txt in the Scripts/Windows directory of this repository.

### Configuring Code Runner to work with Scheme in Windows

Open Settings in Visual Studio Code and navigate to user Setting (The JSON one)

The file:
Compile_Script_Windows.ps1 located in the Scripts/Windows directory of this repository
is the script that will build your code, so put it where you like in
your system and copy this path.

The file:
Compile_Script_Visual Studio Code_Settings_Windows.txt in the Scripts/Windows directory of this repository
shows the code you must recalibrate for your system. Use the path you obtained above in place of
my path in the file.

Then copy the JSON code to your User Settings JSON in Visual Studio Code and Save.

## Working with Portable Apps

### Installing Visual Studio Code Portable

You can Install Visual Studio Portable by downloading the zip archive of Visual Studio code from here:
[Link to Visual Studio Code Zip](HTTPS://code.visualstudio.com/download)

Then extract it to your flash drive, and inside that extracted folder, create a folder named "data". This is the
Persistent storage of all your Visual Studio Code Settings.

### Installing Chicken in PortableApps

You can Install MinGW Portable by installing it to a windows computer,
(Installing MinGW does not require admin rights),
and then copying the folder to your PortableApps Directory.

You can then run a command prompt, and navigate to the MinGW/bin folder to:

Download chicken from source, extract it to a folder
in the PortableApps directory, and follow the instructions in the file:

Build_Chicken_Portable.txt in the Scripts/Portable directory of this repository.

Make sure to change the directory to suit your needs, but do not use a \ just because you are on windows.
Use the "/" as directed.

### Configuring Code Runner to work with Scheme in PortableApps

Open Settings in Visual Studio Code and navigate to user Setting (The JSON one)

The file:
Compile_Script_Portable.ps1 located in the Scripts/Portable directory of this repository
is the script that will build your code, so put it where you like on
your flash drive and copy this path.

The file:
Compile_Script_Visual Studio Code_Settings_WPortable.txt in the Scripts/Portable directory of this repository
shows the code you must recalibrate for your system. Use the path you obtained above in place of
my path in the file.

Then copy the JSON code to your User Settings JSON in Visual Studio Code and Save.

### Using Portable apps

Whenever you plug your flash drive into a new computer, you can run Visual Subst to map your drive
to a drive letter you prefer. You could also create an autorun.inf if you so desired.

For example, my flash drive always goes to F or G when I plug it into library computers, however
I map it to J, so when I launch portable Apps (after mapping), all my programs work correctly.
(QDIR opens my 4 saved directories without error, and building scheme code works as well.).

## Running your Code

If you open a .scm file in Visual Studio Code, and click the Code Runner Play Button, or otherwise,
Control-Alt-N, your scheme code will build in the directory it is located in, and will create
a file with the same name but missing an extension.

An xterm terminal will automatically launch and allow you to interface with your code.
It will not automatically exit, it will bring you back to the location of the executable,
if you may wish to run it again.

## Example

If have included a Scheme Example that takes user input, called:
fib-recursive.scm, located in the Examples Directory of this repository.

If you follow the instructions above to build you code, you should
see the program asking you for a number.

Verify that the code works - As in, don't use the value 5 of course, as the Fibonacci of 5 is 5.
Try The Fibonacci of 7, 8, 9.