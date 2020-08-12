@ECHO OFF
REM Temp folder stuff
REM
REM So because A: is read only, we need a temp folder. We'll gamble
REM that C is read/writable and try there. We need a temp folder for
REM finding the ramdisk. If the ramdisk is loaded with no disk drive
REM it becomes C, otherwise it's the first free drive letter.
REM
REM So this should always work ...

set TEMP=C:\
c:

REM Find the RAMDISK
PATH=A:\
call fndrmdrv.bat
if "%!r!%" == "" goto end

echo Initializing RAMDRIVE ...
copy a:*.* %!r!%

REM Cause A:\ goes away after ODI starts
set PATH=%!r!%
set COMSPEC=%!r!%\COMMAND.COM
set TEMP=%!r!%

LH %!r!%\smartdrv.exe /x
%!r!%\startnet
exit

:end
echo "Unable to find RAMDISK, startup aborted"
