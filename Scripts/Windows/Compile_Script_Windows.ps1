#Jean-Luc Hayes 09/11/18

#Parameters
param (
    [string]$env,
    [string]$dir,
    [string]$source,
    [string]$drain
)

#Paths
[string]$_SCRIPT_DRIVE=(get-location).Drive.Name
[string]$_SCRIPT_PATH=(get-location).Path
#[string]$_SCRIPT_DRIVE="C"
#[string]$_SCRIPT_DRIVE_COLON=$_SCRIPT_DRIVE+":"

#Chicken Path
[string]$_chicken_dir=":/chicken/bin"
[string]$_chicken_dir_full=$_SCRIPT_DRIVE+$_chicken_dir
[string]$_chicken_dir_full_exe=$_chicken_dir_full+"/csc.exe"

#Set MinGW path
[string]$_MinGW_dir=":\MinGW\bin"
[string]$_MinGW_dir_full = $_SCRIPT_DRIVE+$_MinGW_dir

#Set Environment path
$Env:Path+="$_SCRIPT_PATH"
$Env:Path+=";$_chicken_dir_full"
$Env:Path+=";$_MinGW_dir_full"

#Fix Directory
$dir_length = $dir.Length
$dir = $dir.Substring(2, $dir_length-4)
$dir = $dir+"\"
$dir = "$_SCRIPT_DRIVE"+":"+$dir
$dir = ""+$dir+""

#File Name
[string]$_file_name=$drain
[string]$_executable_name=$_file_name+".exe"


#Fix Source
$source = $dir+$source

#Fix Drain
$drain = $dir+$drain


#Compiling the Code with Chicken
csc -static $source -o $drain

#Launch the Program
Start-Process cmd.exe -ArgumentList '/K', "cd /d $dir && $_executable_name"


#Write-Output $args[0]