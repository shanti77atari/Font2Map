@echo off
SET THEFILE=project1
echo Assembling %THEFILE%
c:\codetyphon\fpc\fpc64\bin\x86_64-win64\as.exe --64 -o C:\Users\Janusz\Documents\Typhon\edytor\lib\x86_64-win64\project1.o   C:\Users\Janusz\Documents\Typhon\edytor\lib\x86_64-win64\project1.s
if errorlevel 1 goto asmend
Del C:\Users\Janusz\Documents\Typhon\edytor\lib\x86_64-win64\project1.s
SET THEFILE=C:\Users\Janusz\Documents\Typhon\edytor\project1.exe
echo Linking %THEFILE%
c:\codetyphon\fpc\fpc64\bin\x86_64-win64\ld.exe -b pei-x86-64  --gc-sections  -s --subsystem windows --entry=_WinMainCRTStartup    -o C:\Users\Janusz\Documents\Typhon\edytor\project1.exe C:\Users\Janusz\Documents\Typhon\edytor\link1408.res
if errorlevel 1 goto linkend
goto end
:asmend
echo An error occurred while assembling %THEFILE%
goto end
:linkend
echo An error occurred while linking %THEFILE%
:end
